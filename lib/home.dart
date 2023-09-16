import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapp/firstpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Home'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                //? Navigating to another page
                Get.to(FirstPage());
              },
              child: Text('Navigate')),
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Notification',
                  'Welcome to homepage',
                  icon: Icon(Icons.notifications),
                  snackPosition: SnackPosition.TOP,
                );
              },
              child: Text('Alert'))
        ],
      ),
    );
  }
}
