import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewCenter extends StatefulWidget {
  @override
  _ListViewCenterState createState() => _ListViewCenterState();
}

class _ListViewCenterState extends State<ListViewCenter> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo ListView"),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.pink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Image"),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Text"),
              ),
            ],
          ),
        ),
        Expanded(
          child: _buildListView(),
        ),
        Container(
          color: Colors.cyanAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Bottom 1"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Bottom 2"),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildListView() {
    return ListView.separated(
      itemCount: 1000,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(child: Text("Item ${index + 1}")),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 1,
        );
      },
    );
  }
}

class User {
  final String displayName;
  final String email;

  User(this.displayName, this.email);
}
