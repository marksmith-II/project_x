import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // final String text;
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 12, 35, 54),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Center(
                child: Center(
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            )),
          )),
    );
  }
}
