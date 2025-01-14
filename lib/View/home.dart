import 'package:flutter/material.dart';
import 'active_user.dart';
import 'massanger.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController; // Create a TabController

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Initialize the TabController
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the TabController when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 160, 93),
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Implement additional options
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController, // Attach TabController
          tabs: const [
            Tab(
              text: "Recent Messages",
            ),
            Tab(
              text: "Active",
               
            ),
          ],
          
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: Color.fromARGB(220, 253, 255, 253), width: 1),
        ),
        hoverColor: const Color.fromARGB(220, 53, 201, 102),
        onPressed: () {
         Get.toNamed("/massanger");
        },
        backgroundColor: const Color.fromARGB(255, 26, 160, 93),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.person, color: Colors.white),
              Icon(Icons.add, color: Colors.white, size: 15),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController, // Attach TabController
        children: [
          // Recent Messages Tab content
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-thumbnail.png'),
                          ),
                          title: Text('User $index'),
                          subtitle: const Text('User Message'),
                          trailing: const Text('3m ago'),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          // Active Tab content
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const Column(
                children: <Widget>[
                  // You can add widgets here to show active users
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            backgroundColor: Color.fromARGB(255, 26, 160, 93),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 13,
              backgroundImage: NetworkImage(
                  'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-thumbnail.png'),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
