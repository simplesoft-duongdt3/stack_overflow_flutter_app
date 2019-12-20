import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FutureForm extends StatefulWidget {
  @override
  _FutureFormState createState() => _FutureFormState();
}

class _FutureFormState extends State<FutureForm> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Future form"),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder(
        future: getCurrentUser(),
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          if (snapshot.hasData) {
            nameController.text = snapshot.data.displayName;
            emailController.text = snapshot.data.email;
          }
          return Form(
              child: Column(
            children: <Widget>[
              TextFormField(
                controller: nameController,
              ),
              TextFormField(
                controller: emailController,
              )
            ],
          ));
        });
  }

  Future<User> getCurrentUser() async {
    await Future.delayed(Duration(seconds: 2));
    return User("Doan Thanh Duong", "doanthanhduong@xmail.com");
  }
}

class User {
  final String displayName;
  final String email;

  User(this.displayName, this.email);
}
