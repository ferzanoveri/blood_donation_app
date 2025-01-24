import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            )
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'assets/blood.png',
              scale: 3,
            ),
          ),
        ),
        SizedBox(height: 100),
        LoginButton('Sign in'),
        SizedBox(height: 25),
        LoginButton('Create Account'),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text(
                  'Learn More',
                  style: TextStyle(fontSize: 15, color: Colors.redAccent)
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/survey');
                  },
                  child: Text(
                      'Skip now ->',
                      style: TextStyle(fontSize: 15, color: Colors.redAccent)
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget LoginButton(String title){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextButton(
        onPressed: (){},
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              color: Colors.white
          ),
        ),
      ),
    ),
  );
}
