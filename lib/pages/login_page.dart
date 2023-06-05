import 'package:flutter/material.dart';
import 'package:project_x/components/my_button.dart';
import 'package:project_x/components/my_textfield.dart';
import 'package:project_x/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  // text editing contollers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  // sign in function
  void signIn() {
    // print('sign in');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: Center(
            child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 10),
            // logo
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 10),
            Text('Welcome back!',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                )),
            const SizedBox(height: 50),
            // welcome back

            //user name textfield
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            //forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: (Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot password?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      )),
                ],
              )),
            ),
            const SizedBox(height: 25),
            MyButton(onTap: signIn),
            //login button

            // or continue with
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[700],
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                  ),
                  const Text(
                    'Or continue with',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[700],
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'lib/assets/images/google.png'),
                  SizedBox(width: 50),
                  //apple button
                  SquareTile(imagePath: 'lib/assets/images/apple.png'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member? ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      )),
                  const Text('Register Now',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 12, 35, 54),
                      )),
                ],
              ),
            )
          ]),
        )));
  }
}
