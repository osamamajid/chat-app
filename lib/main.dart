<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'View/home.dart';
import 'View/massanger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
=======
import 'package:chatcal/uipages/homepage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(    MyApp());

}
void initState(){

}

class MyApp extends StatelessWidget {
    const MyApp({super.key});
>>>>>>> 88397c4dfa15043acf998f4d9d1f958fedd16f47

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   ChatApp()
    );
  }
}
>>>>>>> 88397c4dfa15043acf998f4d9d1f958fedd16f47
