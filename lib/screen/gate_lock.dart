import 'package:flutter/material.dart';
import '../screen/admin_page.dart';
import '../modules/core/managers/MQTTManager.dart';
import 'package:provider/provider.dart';

class GateLockPage extends StatefulWidget {
  const GateLockPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GateLockPageState createState() => _GateLockPageState();
}

class _GateLockPageState extends State<GateLockPage> {
  String _selectedGate = 'North Gate';
  bool _isLocked = false;
  late MQTTManager _manager;


  @override
  Widget build(BuildContext context) {
    _manager = Provider.of<MQTTManager>(context);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Key Page'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          _isLocked
              ? SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.lock,
                        size: 100,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        _showPasswordDialog();
                      }))
              : SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.lock_open,
                      size: 100,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      _showPasswordDialog();
                    },
                  )),
          Text(
            _isLocked ? 'Locked' : 'Unlocked',
            style: const TextStyle(fontSize: 24),
          ),
          DropdownButton(
            value: _selectedGate,
            items: const [
              DropdownMenuItem(
                value: 'North Gate',
                child: Text('North Gate'),
              ),
              DropdownMenuItem(
                value: 'East Gate',
                child: Text('East Gate'),
              ),
              DropdownMenuItem(
                value: 'West Gate',
                child: Text('West Gate'),
              ),
              DropdownMenuItem(
                value: 'South Gate',
                child: Text('South Gate'),
              ),
            ],
            onChanged: (value) {
              setState(() {
                //_selectedGate = !value;
              });
            },
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              _showPasswordDialog2();
            },
            child: const Text('Admin'),
          )
        ])));
  }

  void _showPasswordDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Enter Password'),
            content: TextField(
              onChanged: (value) {
                if (value == 'secret') {
                  Navigator.pop(context);
                  print(_isLocked);
                  try{
                    if(_isLocked==true){
                      _manager.publish("STOP");
                    }
                    else{
                      _manager.publish("OPEN");
                    }
                  }
                  catch(e){
                    print(e);
                  }
                  _showSuccessMessage(value);
                }
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              )
            ],
          );
        });
  }

  void _showPasswordDialog2() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Enter Password'),
            content: TextField(
              onChanged: (value) {
                if (value == 'secret') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AdminPage()),
                  );
                }
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              )
            ],
          );
        });
  }

  void _showSuccessMessage(String password) {
    if (password == 'secret') {
      // only change state if correct password
      setState(() {
        _isLocked = !_isLocked;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                'Gate ${_isLocked ? 'Locked' : 'Unlocked'} Successfully!')),
      );
    } else {
      // wrong password
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Incorrect Password')),
      );
    }
  }
}
