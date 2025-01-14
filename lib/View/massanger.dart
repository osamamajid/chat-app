import 'package:flutter/material.dart';

class Msag extends StatefulWidget {
  const Msag({super.key});

  @override
  State<Msag> createState() => _MsagState();
}

class _MsagState extends State<Msag> {
  TextEditingController MsagController = TextEditingController();
  List<String> messages = []; // قائمة لتخزين الرسائل

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 160, 93),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {
              // إضافة الوظيفة هنا
            },
          ),
          IconButton(
            icon: const Icon(Icons.video_call_rounded),
            onPressed: () {
             
            },
          ),
        ],
        title: const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-thumbnail.png',
            ),
          ),
          title: Text(
            'Chats',
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
            'Active 1 hour ago',
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: const Icon(Icons.arrow_back_ios_rounded),
      ),
      body: Column(
        children: [
          // عرض الرسائل
          Expanded(
            child: ListView.builder(
              itemCount: messages.length, // عدد الرسائل في القائمة
              itemBuilder: (context, index) {
                return ListTile(
                  focusColor: Colors.green,
                  leading: Container(
                    width: 50,
                    height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 235, 231),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-thumbnail.png',
                      ),
                    ),
                  ),
                  title: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 235, 231),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    child: Text(messages[index])),
                    trailing: const Column(
                      children: [
                        Text('10:5'),
                        Text ('Seen'),
                        
                      ],
                    ), // عرض الرسالة
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                // استخدام Expanded لجعل TextField يأخذ المساحة المتبقية
                Expanded(
                  child: TextField(
                    controller: MsagController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 26, 160, 93),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.send_outlined,textDirection:TextDirection.rtl ,color:Colors.white,),
                    onPressed: () {
                      // إضافة الرسالة إلى القائمة عند الضغط على زر الإرسال
                      setState(() {
                        messages.add(MsagController.text); // إضافة الرسالة إلى القائمة
                        MsagController.clear(); // مسح النص في TextField بعد الإرسال
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
