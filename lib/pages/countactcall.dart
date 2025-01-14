import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Callrom extends StatefulWidget {
  const Callrom({super.key});

  @override
  State<Callrom> createState() => _CallromState();
}

class _CallromState extends State<Callrom> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: ListView(
        children: [
          Container(
            child: Row(
              children: [
                CircleAvatar(),
                Text('user name'),
                Icon(Icons.call)
              ],
            ),
          )
        ],
      ),
    );

  }
}
