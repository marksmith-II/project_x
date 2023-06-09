import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_x/pages/login_page.dart';
import 'package:project_x/pages/home_page.dart ';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
// is the user logged in?
            if (snapshot.hasData) {
              // User is logged in
              return HomePage();
            } else {
              // User is Not logged in
              return LoginPage();
            }
          }),
    );
  }
}
