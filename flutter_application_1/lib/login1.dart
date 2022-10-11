import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.iniState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlPass.dispose();
    super.dispose();
  }

  return Scaffold (
    appBar: AppBar(
      title: Text("Login Page"),
    ),
      body: Container(
        padding: EdgeInsets.all(16),
      )
      child: Column(
        children: [
          SizedBox(height)
          TextFormField(
            keyboardtype: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              prefixiIcon: Icon(Icons.email)
            ) //Input Decoration
            controller: ctrlEmail,
            autovalidateMode: AutovalidateMode.onUserInterface,
            validator: (value) {
              return !EmailValidator.
            }
          )
        ]
      ),
  )
}
