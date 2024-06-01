import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.notifications_active_outlined, color: Colors.white,),
          )
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                  color: Colors.grey
                )),
                enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                  color: Colors.grey
                )),
                focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                  color: Colors.orangeAccent, width: 2
                )),
                hintText: 'Search your favorite food ....',

              ),
            )
          ],
        ),
      )
    );
  }
}