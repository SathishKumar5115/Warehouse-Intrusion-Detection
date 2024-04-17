import 'package:flutter/material.dart';
import 'package:fluttermqttnew/modules/message/screen/message_screen.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  List<String> logNames = [
    'John accessed North Entrance ',
    'Mary accessed South Entrance ',
    'Bob0 accessed East Entrance ',
    'Bob1 accessed East Entrance ',
    'Bob2 accessed East Entrance ',
    'Bob3 accessed East Entrance ',
    'Bob4 accessed East Entrance ',
    'Bob5 accessed East Entrance ',
    'Bob6 accessed East Entrance ',
  ];

  List<Map<String, dynamic>> logDetails = [
    {
      'name': 'John',
      'time': 'Yesterday at 4:00pm',
      'duration': '10 minutes',
      'gate': 'North Entrance',
      'start': '4:00pm',
      'end': '4:10pm',
      'contact': 'john@example.com'
    },
    {
      'name': 'Mary',
      'time': 'Today at 9:30am',
      'duration': '5 minutes',
      'gate': 'South Entrance',
      'start': '9:30am',
      'end': '9:35am',
      'contact': 'mary@example.com'
    },
    {
      'name': 'Bob0',
      'time': 'Last Monday at 2:15pm',
      'duration': '15 minutes',
      'gate': 'East Entrance',
      'start': '2:15pm',
      'end': '2:30pm',
      'contact': 'bob@example.com'
    },
    {
      'name': 'Bob1',
      'time': 'Last Monday at 2:15pm',
      'duration': '15 minutes',
      'gate': 'East Entrance',
      'start': '2:15pm',
      'end': '2:30pm',
      'contact': 'bob@example.com'
    },
    {
      'name': 'Bob2',
      'time': 'Last Monday at 2:15pm',
      'duration': '15 minutes',
      'gate': 'East Entrance',
      'start': '2:15pm',
      'end': '2:30pm',
      'contact': 'bob@example.com'
    },
    {
      'name': 'Bob3',
      'time': 'Last Monday at 2:15pm',
      'duration': '15 minutes',
      'gate': 'East Entrance',
      'start': '2:15pm',
      'end': '2:30pm',
      'contact': 'bob@example.com'
    },
    {
      'name': 'Bob4',
      'time': 'Last Monday at 2:15pm',
      'duration': '15 minutes',
      'gate': 'East Entrance',
      'start': '2:15pm',
      'end': '2:30pm',
      'contact': 'bob@example.com'
    },
    {
      'name': 'Bob5',
      'time': 'Last Monday at 2:15pm',
      'duration': '15 minutes',
      'gate': 'East Entrance',
      'start': '2:15pm',
      'end': '2:30pm',
      'contact': 'bob@example.com'
    },
    {
      'name': 'Bob6',
      'time': 'Last Monday at 2:15pm',
      'duration': '15 minutes',
      'gate': 'East Entrance',
      'start': '2:15pm',
      'end': '2:30pm',
      'contact': 'bob@example.com'
    },
  ];
  List<Map<String, dynamic>> userDetails = [
    {
      'name': 'John',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
    {
      'name': 'Mary',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
    {
      'name': 'Bob0',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
    {
      'name': 'Bob1',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
    {
      'name': 'Bob2',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
    {
      'name': 'Bob3',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
    {
      'name': 'Bob4',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
    {
      'name': 'Bob5',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
    {
      'name': 'Bob6',
      'job': 'Driver',
      'phone': '+91 1234567890',
      'contact': 'john@example.com',
      'access': '5'
    },
  ];
  List<String> users = [
    'John',
    'Mary',
    'Bob0',
    'Bob1',
    'Bob2',
    'Bob3',
    'Bob4',
    'Bob5',
    'Bob6',
  ];
  List<String> displayedUsers = [
    'John',
    'Mary',
    'Bob0',
    'Bob1',
    'Bob2',
    'Bob3',
    'Bob4',
    'Bob5',
    'Bob6',
  ];
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: logNames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${logNames[index]}\nTime: ${logDetails[index]['time']}'),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Time: ${logDetails[index]['time']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Duration: ${logDetails[index]['duration']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Gate: ${logDetails[index]['gate']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Start: ${logDetails[index]['start']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Text('End: ${logDetails[index]['end']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'Contact: ${logDetails[index]['contact']}'),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                );
              },
            ),
          ),
          Expanded(
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search users',
                  ),
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                      displayedUsers = users
                          .where((user) => user
                              .toLowerCase()
                              .contains(searchQuery.toLowerCase()))
                          .toList();
                    });
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: displayedUsers.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(displayedUsers[index]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.visibility),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  'Time: ${userDetails[index]['name']}'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  'Duration: ${userDetails[index]['job']}'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  'Gate: ${userDetails[index]['phone']}'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  'Start: ${userDetails[index]['contact']}'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  'Start: ${userDetails[index]['access']}'),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MessageScreen()),
                    );
                  },
                  icon: const Icon(Icons.settings),
                  label: const Text("Configure network settings"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
