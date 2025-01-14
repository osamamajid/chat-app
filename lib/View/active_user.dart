import 'package:flutter/material.dart';

class ActiveUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Active Users'),
      ),
      body: Center(
        child: Text('List of active users will be displayed here'),
      ),
    );
  }
}