import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../home/home.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    double width = MediaQuery.of(context).size.width;

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: width * 0.5,
        child: Image.asset('assets/hi.png'),
      ),
    );

    final loginbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: width * 0.1),
      child: Material(
        borderRadius: BorderRadius.circular(width * 0.1),
        shadowColor: Colors.lightBlueAccent.shade100,
        color: Colors.white,
        elevation: width * 0.05 ,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width * 0.02),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red[500]!),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.1),
                ),
              
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(HomePage.tag);
            },
            child: Text(
              'Click Here To Know More !',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: width * 0.05),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.red[800],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          children: [
            logo,
            SizedBox(
              height: width * 0.1,
            ),
            loginbutton,
          ],
        ),
      ),
    );
  }
}
