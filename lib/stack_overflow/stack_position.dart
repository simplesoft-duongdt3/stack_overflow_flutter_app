import 'package:flutter/material.dart';

class StackPositionPage extends StatefulWidget {
  StackPositionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StackPositionPageState createState() => _StackPositionPageState();
}

class _StackPositionPageState extends State<StackPositionPage> {
  var _headerHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(children: <Widget>[
              _buildIamge(),
              _buildTopHeader(),
              Positioned(
                top: _headerHeight,
                left: 0,
                right: 0,
                bottom: 0,
                child: ListView.builder(
                  padding: new EdgeInsets.all(8.0),
                  itemBuilder: (_, int index) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _buildMessage(index),
                  ),
                ),
              ),
            ]),
          ),
          Container(
            color: Colors.blue,
            height: 50.0,
            alignment: Alignment.bottomCenter,
            child: Center(
              child: Text("Composer"),
            ),
          ),
        ],
      ),
    );
  }

  Text _buildMessage(int index) => Text("Message " + (index + 1).toString());

  Container _buildTopHeader() {
    return Container(
      height: _headerHeight,
      color: Colors.pink,
      child: Center(
        child: Text("Header"),
      ),
    );
  }

  Container _buildIamge() {
    return Container(
      color: Colors.grey,
    );
  }
}
