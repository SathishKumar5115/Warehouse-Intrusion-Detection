import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/core/managers/MQTTManager.dart';
import 'modules/helpers/screen_route.dart';
import 'modules/helpers/service_locator.dart';
import 'modules/message/screen/message_screen.dart';
import 'modules/settings/screen/settings_screen.dart';
import '/screen/registration_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MQTTManager>(
      create: (context) =>service_locator<MQTTManager>(),
      child: MaterialApp(
          title: 'IoT Project',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (BuildContext context) => RegistrationScreen(),
            SETTINGS_ROUTE: (BuildContext context) => SettingsScreen(),
          }),
    );
  }
}
