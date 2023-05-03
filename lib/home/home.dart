import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    const garv = Hero(
      tag: 'hero',
      child: Image(image: AssetImage("assets/lw.png"))
    );

    var welcome = Center(
      child: Text(
        "GARV SHARMA",
        style: TextStyle(
            fontSize: width * 0.1,
            color: Colors.orange,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    );

    final by = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Container(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => launchUrlString('mailto:sgarv0710@gmail.com'),
              icon: const Icon(
                Icons.email,
                size: 30,
                color: Colors.green,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.5),
          child: Container(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => launchUrlString('https://github.com/garvsharmxa'),
              icon: const Icon(
                FontAwesomeIcons.github,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.5),
          child: Container(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => launchUrlString('https://www.instagram.com/garvsharmxa/'),
              icon: const Icon(
                FontAwesomeIcons.instagram,
                size: 30,
                color: Colors.pinkAccent,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.5),
          child: Container(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => launchUrlString(
                  'https://www.youtube.com/channel/UCP6jI0MWwGSCL5SIWnwyTzQ'),
              icon: const Icon(
                FontAwesomeIcons.youtube,
                size: 30,
                color: Colors.red,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.5),
          child: Container(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () =>
                  launchUrlString('https://www.linkedin.com/in/garvsharmxa/'),
              icon: const Icon(
                FontAwesomeIcons.linkedin,
                size: 30,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );

    var intro = Center(
      child: Text(
        "About Myself",
        style: TextStyle(
            fontSize: width * 0.08, color: Colors.deepOrange, fontWeight: FontWeight.bold),
      ),
    );

    const lorem = Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        "A second year Computer Science student at Chandigarh University with an interest in Coding, AR & VR , App Development and Video Editing.",
        style: TextStyle(
            fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );

    const preet = Center(
      child: Text(
        "Skills",
        style: TextStyle(
            fontSize: 30.0, color: Colors.limeAccent, fontWeight: FontWeight.bold),
      ),
    );

    var boy =  Padding(
      padding: EdgeInsets.only(left: width * 0.04),
      child: Text(
       "1.  Canva",
       style: TextStyle(
           fontSize: width * 0.05, color: Colors.white, fontWeight: FontWeight.bold),
          ),
    );
    var bag =  Padding(
      padding: EdgeInsets.only(left: width * 0.04),
      child: Text(
       "2.  Video Editing",
       style: TextStyle(
           fontSize: width * 0.05, color: Colors.white, fontWeight: FontWeight.bold),
          ),
    );

    var car =  Padding(
      padding: EdgeInsets.only(left: width * 0.04),
      child: Text(
       "3.  Fast Learner",
       style: TextStyle(
           fontSize: width * 0.05, color: Colors.white, fontWeight: FontWeight.bold),
          ),
    );
    var cad = Padding(
      padding: EdgeInsets.only(left: width * 0.04),
      child: Text(
       "4.  CAD",
       style: TextStyle(
           fontSize: width * 0.05, color: Colors.white, fontWeight: FontWeight.bold),
          ),
    );

    final body = Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: EdgeInsets.all(width * 0.04),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.teal, Colors.deepPurpleAccent]),
      ),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          garv,
          welcome,
          by,
          intro,
          lorem,
          preet,
          boy,
          bag,
          car,
          cad
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
