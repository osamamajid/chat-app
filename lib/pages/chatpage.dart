import 'package:flutter/material.dart';

class ChatItem {
  final String name;
  final String message;
  final String imageUrl;
  final bool isOnline;
  final DateTime timestamp;

  ChatItem({
    required this.name,
    required this.message,
    required this.imageUrl,
    required this.isOnline,
    required this.timestamp,
  });
}



class ChatScreen extends StatelessWidget {
  final List<ChatItem> chatItems = [
    ChatItem(
      name: 'User 1',
      message: 'Hello!',
      imageUrl: 'https://example.com/user1.jpg',
      isOnline: true,
      timestamp: DateTime.now().subtract(const Duration(minutes: 10)),
    ),
    ChatItem(
      name: 'User 2',
      message: 'Hi there!',
      imageUrl: 'https://example.com/user2.jpg',
      isOnline: false,
      timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
    ),
    // Add more chat items here
  ];

    ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat App'),
      ),
      body: ListView.builder(
        itemCount: chatItems.length,
        itemBuilder: (context, index) {
          final chatItem = chatItems[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chatItem.imageUrl),
            ),
            title: Row(
              children: [
                Text(chatItem.name),
                const SizedBox(width: 8),
                if (chatItem.isOnline)
                  const Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 12,
                  ),
              ],
            ),
            subtitle: Text(chatItem.message),
            trailing: Text(
              // Format and display the timestamp as you need
              '${chatItem.timestamp.hour}:${chatItem.timestamp.minute}',
            ),
            onTap: () {
              // Handle chat item tap
            },
          );
        },
      ),
    );
  }
}
