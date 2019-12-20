import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KeyboardAction extends StatefulWidget {
  @override
  _KeyboardActionState createState() => _KeyboardActionState();
}

class _KeyboardActionState extends State<KeyboardAction> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Future Text Input Action"),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.done,
      onSubmitted: (value) {
        print("onSubmitted $value");
      },
    );
  }

}

class User {
  final String displayName;
  final String email;

  User(this.displayName, this.email);
}
