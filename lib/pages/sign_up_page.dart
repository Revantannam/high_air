import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xe7ffb7c5),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Heading(),
              EnteringField(),
            ],
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          foregroundImage: AssetImage(
              'assets/desktop-wallpaper-lone-cherry-blossom-tree-live-japanese-sakura-tree.jpg'),
          radius: 60,
        ),
        SizedBox(height: 20),
        Text(
          'SAKURA BLOSSOMS',
          style: TextStyle(color: Color(0xc6aa38a8), fontSize: 25,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class EnteringField extends StatelessWidget {
  const EnteringField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0xffe58fa1),
              borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xFFAB94A5),
                  icon: Icon(Icons.account_circle_outlined),
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.black54),
                  iconColor: Colors.black38,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff544b4b)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff000000)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Color(0xFFAB94A5),
                  icon: Icon(Icons.key),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black54),
                  iconColor: Colors.black38,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff544b4b)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff000000)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('LOGIN')),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: TextStyle(fontSize: 15),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xc6aa38a8),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
