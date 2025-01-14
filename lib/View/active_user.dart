import 'package:flutter/material.dart';

class ActiveUserPage extends StatelessWidget {
  const ActiveUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Users'),
      ),
      body: const Center(
        child: Text('List of active users will be displayed here'),
      ),
    );
  }
}