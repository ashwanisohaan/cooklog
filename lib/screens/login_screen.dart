import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key, required this.onP});

  VoidCallback onP;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Demo App',
          style: TextStyle(color: Colors.amber, fontSize: 24),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.file_copy), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
        leading: IconButton(
            icon: const Icon(Icons.photo),
            tooltip: 'Menu Icon',
            onPressed: () {}),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: const Color.fromARGB(255, 222, 238, 223),
        margin: EdgeInsets.all(10),
        child: Column(spacing: 8, children: [
          Container(
            margin: EdgeInsets.only(top: 36),
            child: Text(
              "welcome User",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8),
                child: Icon(Icons.person),
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "this is hint",
                    border: OutlineInputBorder(),
                    labelText: ("Enter name"),
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8),
                child: Icon(Icons.lock),
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "this is hint 2",
                    border: OutlineInputBorder(),
                    labelText: ("Enter password"),
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            child: Text('Log In'),
            onPressed: () {
              onP();
            },
          )
        ]),
      ),
    );
  }
}
