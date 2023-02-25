// ignore_for_file: use_build_context_synchronously, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:lilac_flutter_assignment/view/home_page.dart';

class SplashScreen extends StatefulWidget {
   const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotohome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
     
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Center(
                child: Text(
                  'Lilac Flutter Assignment',
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 30,
                      // fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> gotohome() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => HomePage()));
  }
}
