import 'package:flutter/material.dart';
import '../screen/app_util.dart';
import '../widgets/input_field_widget.dart';
import 'package:intl/intl.dart';

import '../widgets/primary_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController birthDayController = TextEditingController();

  String genderSelected = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colorPrimary,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                  child: Text(
                "IoT",
                style: TextStyle(
                  fontSize: 28.0,
                  color: colorWhite,
                  fontFamily: 'Schyler',
                  fontWeight: FontWeight.bold,
                ),
              )),
              const SizedBox(
                height: 8.0,
              ),
              const Center(
                  child: Text(
                "Warehouse Alarm System",
                style: TextStyle(
                  fontSize: 28.0,
                  color: colorWhite,
                  fontFamily: 'Schyler',
                  fontWeight: FontWeight.bold,
                ),
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Center(
                  child: Text(
                "Please enter your information",
                style: TextStyle(
                  fontSize: 14.0,
                  color: colorWhite,
                  fontFamily: 'Schyler',
                  fontWeight: FontWeight.bold,
                ),
              )),
              const SizedBox(height: 50.0),
              InputField(
                controller: nameController,
                icon: Icons.person,
                hintText: "Enter your name",
                obsecureText: false,
              ),
              SizedBox(
                height: 25.0,
              ),
              InputField(
                controller: emailController,
                icon: Icons.mail,
                hintText: "Enter your mail",
                obsecureText: false,
              ),
              SizedBox(
                height: 25.0,
              ),
              InputField(
                controller: passwordController,
                icon: Icons.password,
                hintText: "Enter your password",
                obsecureText: true,
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 20.0),
                child: TextFormField(
                  style: const TextStyle(
                    color: colorWhite,
                    fontFamily: 'Schyler',
                  ),
                  textAlign: TextAlign.center,
                  controller: birthDayController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: colorWhite,
                        size: 25,
                      ),
                      hintText: "Enter your birthday",
                      hintStyle: TextStyle(
                        color: colorGrey,
                        fontFamily: 'Schyler',
                        fontSize: 12.0,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colorWhite),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: colorWhite),
                      )),
                  onTap: () async {
                    DateTime date = DateTime(1900);
                    FocusScope.of(context).requestFocus(FocusNode());
                    date = (await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100)))!;
                    String dateFormatter = date.toIso8601String();
                    DateTime dt = DateTime.parse(dateFormatter);
                    var formatter = DateFormat('dd-MMMM-yyyy');
                    birthDayController.text = formatter.format(dt);
                  },
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("GENDER",
                        style: TextStyle(
                          color: colorWhite,
                          letterSpacing: 1,
                          fontSize: 14.0,
                          fontFamily: 'Schyler',
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        Flexible(
                            fit: FlexFit.loose,
                            child: RadioListTile(
                              contentPadding: EdgeInsets.zero,
                              activeColor: colorWhite,
                              groupValue: genderSelected,
                              title: const Text("MALE",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: colorWhite,
                                    fontFamily: 'Schyler',
                                    fontWeight: FontWeight.bold,
                                  )),
                              value: 'male',
                              onChanged: (val) {
                                setState(() {
                                  genderSelected = val.toString();
                                });
                                print(genderSelected);
                              },
                            )),
                        Flexible(
                            fit: FlexFit.loose,
                            child: RadioListTile(
                              contentPadding: EdgeInsets.zero,
                              activeColor: colorWhite,
                              groupValue: genderSelected,
                              title: const Text("FEMALE",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: colorWhite,
                                    fontFamily: 'Schyler',
                                    fontWeight: FontWeight.bold,
                                  )),
                              value: 'female',
                              onChanged: (val) {
                                setState(() {
                                  genderSelected = val.toString();
                                });
                                print(genderSelected);
                              },
                            )),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              PrimaryButton(
                text: "Sign Up",
                onPressed: () {
                  if (isValidate()) {
                    print("Data is validated");
                  }
                },
              )
            ],
          ),
        ));
  }

  bool isValidate() {
    if (nameController.text.isEmpty) {
      showScaffold(context, "Please enter your name");
      return false;
    }
    print(nameController.text);
    return true;
  }
}
