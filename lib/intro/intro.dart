import 'package:flutter/material.dart';
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
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius:200.0,
        child: Image.asset('assets/hi.png'),
      ),
    );


    final loginbutton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        color: Colors.white,
        elevation:15.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.red[500],
          child: const Text(
            'Click Here To Know More !',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.red[800],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 25.0 ,right: 25.0 ),
          children: [
            logo,
            const SizedBox(
              height: 48.0,
            ),
           loginbutton,
          ],
        ),
      ),
    );
  }
}
