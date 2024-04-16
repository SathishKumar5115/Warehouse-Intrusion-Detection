# Warehouse-Intrusion-Detection


## Introduction
The Warehouse-Intrusion-Detection is designed to enhance security measures for warehouses in India, where traditional security methods like locks and keys are commonly used. This solution integrates a Passive Infrared (PIR) sensor, MQTT protocol for remote notifications, and a buzzer alarm system to detect and respond to break-in attempts. Additionally, it includes an app for user management, entry point navigation, and alarm control.

## Features
- **Break-in Detection**: Utilizes a PIR sensor to detect unauthorized entry attempts.
- **Remote Notifications**: Sends notifications to users via MQTT protocol for immediate action.
- **Buzzer Alarm System**: Generates audible alarms in case of a break-in, especially beneficial for users in close proximity.
- **Entry Point Control**: Users must click an unlock button at entry points to prevent triggering the alarm.
- **User Management**: Includes a login page and admin registration for efficient user control.
- **Entry Point Navigation**: Facilitates easy navigation of entry points for users.
- **Cost-effective**: Provides a simple and affordable security solution for warehouses.

## Technologies Used
- **Hardware**: ESP32, PIR sensor, Buzzer, LED, Bread board and Connecting wires.
- **Software**: MQTT protocol and EMQX cloud for communication, FireBase as backend to store data.
- **Languages**: Dart, C++.
- **Frameworks**: Flutter.


## Usage
1. **Login**: Users log in to the app using their credentials.
2. **Admin Registration**: Admins register their accounts for user management.
3. **Entry Point Navigation**: Users navigate through entry points using the app.
4. **Break-in Detection**: The system detects break-in attempts using the PIR sensor.
5. **Notifications**: Users receive notifications via MQTT in case of a break-in.

## License
Distributed under the MIT License. See `LICENSE.txt` for more information.

## Acknowledgements
- Special thanks to [Pethu Aravind](https://github.com/Aravind011464) & [Vignesvern](https://github.com/Vignesvern) for their contributions and support.
- This project was inspired by the need for enhanced security measures in warehouses.

## Contact
For any inquiries or support, please contact [rsathishkumar1963@gmail.com](rsathishkumar1963@gmail.com).
