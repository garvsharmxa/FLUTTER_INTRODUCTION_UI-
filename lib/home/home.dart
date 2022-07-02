import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const garv = Hero(
      tag: 'hero',
      child: Image(image: AssetImage("assets/lw.png"))
    );

    const welcome = Padding(
      padding: EdgeInsets.all(12.0),
      child: Text(
        "GARV SHARMA",
        style: TextStyle(
            fontSize: 40.0,
            color: Colors.orange,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    );

    final by = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.5),
          child: Container(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => launch('mailto:sgarv0710@gmail.com'),
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
              onPressed: () => launch('https://github.com/garvsharmxa'),
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
              onPressed: () => launch('https://www.instagram.com/garvsharmxa/'),
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
              onPressed: () => launch(
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
                  launch('https://www.linkedin.com/in/garvsharmxa/'),
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

    const intro = Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        "         About Myself                               ",
        style: TextStyle(
            fontSize: 30.0, color: Colors.deepOrange, fontWeight: FontWeight.bold),
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

    const preet = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Specialties",
        style: TextStyle(
            fontSize: 30.0, color: Colors.limeAccent, fontWeight: FontWeight.bold),
      ),
    );

    const boy = Padding(
      padding: EdgeInsets.all(0),
      child: Text(
        "                                             1.Canva       ",
        style: TextStyle(
            fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
    const bag = Padding(
      padding: EdgeInsets.all(0),
      child: Text(
        "                                                     2.Video Edditing       ",
        style: TextStyle(
            fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );

    const car = Padding(
      padding: EdgeInsets.all(0),
      child: Text(
        "                                                3.Fast Learner    ",
        style: TextStyle(
            fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
    const cad = Padding(
      padding: EdgeInsets.all(0),
      child: Text(
        "                                                      4.",
        style: TextStyle(
            fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.teal, Colors.deepPurpleAccent]),
      ),
      child: SingleChildScrollView(
        child: Padding( padding: const EdgeInsets.all(12),
          child: Column(
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
        ),
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
