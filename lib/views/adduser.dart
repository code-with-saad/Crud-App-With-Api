import 'dart:convert';

import 'package:api_second_class/controller/user_controller.dart';
import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: email,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: username,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'UserName',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: phone,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Phone Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                await adduser(
                  {
                    "name": name.text,
                    "email": email.text,
                    "username": username.text,
                    "phone": phone.text,
                  },
                );
                // print(name.text);
                // print(email.text);
                // print(username.text);
                // print('phone.text);
              },
              child: Text("Add User"))
        ],
      ),
    );
  }
}
