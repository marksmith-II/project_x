import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final loggedInUser = FirebaseAuth.instance.currentUser;

  signUserOut() async {
    await FirebaseAuth.instance.signOut();
  } // sign out function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: signUserOut,
              icon: const Icon(Icons.logout),
              color: Colors.black,
            )
          ],
          shadowColor: Colors.transparent,
          title: const Text(
            'Home Page',
            style: TextStyle(color: Colors.black),
          )),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Logged in as:${loggedInUser!.email}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ]),
      ),
    );
  }
}
