import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
              Image.asset(
                'assets/desktop-wallpaper-lone-cherry-blossom-tree-live-japanese-sakura-tree.jpg',
                scale: 2.5,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('LOGIN'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signuppage');
                    },
                    child: Text('SIGN IN'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff000000),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
