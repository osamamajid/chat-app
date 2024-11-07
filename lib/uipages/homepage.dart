import 'package:flutter/material.dart';
 

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView(
        children: [
          chatItem("Jenny Wilson", "Hope you are doing well...", "3m ago"),
          chatItem("Esther Howard", "Hello Abdullah! I am...", "8m ago"),
          chatItem("Ralph Edwards", "Do you have updates?", "5d ago"),
          chatItem("Jacob Jones", "You're welcome :)", "5d ago"),
          chatItem("Albert Flores", "Thanks", "6d ago"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget chatItem(String name, String message, String time) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/avatar.png'), // صورة افتراضية
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(time),
      onTap: () {
        // فتح شاشة الدردشة
      },
    );
  }
}
