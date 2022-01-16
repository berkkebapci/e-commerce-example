import 'package:flutter/material.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({Key? key}) : super(key: key);

  @override
  _ViewHomeState createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(),
        ],
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        "Audio",
        style: TextStyle(color: Colors.black),
      ),
      leading: const Center(
          child: Icon(
        Icons.list,
        color: Colors.black,
      )),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 24),
          child: FlutterLogo(),
        ),
      ],
    );
  }
}
