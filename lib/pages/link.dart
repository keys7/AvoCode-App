import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';

import '../utilities/routes.dart';
import '../widgets/drawer.dart';

class Link extends StatefulWidget {
  const Link({Key? key});

  @override
  State<Link> createState() => _LinkState();
}

class _LinkState extends State<Link> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Learn & Earn',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
          ),
        ],
      ),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
      body: Center(
        child: Container(
          width: 400,
          height: 700,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Text(
                'Our Ideology',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Container(
                width: 350,
                height: 200,
                child: Center(
                  child: Text(
                    'Computer Languages',
                    style: TextStyle(
                        fontSize: 30, decoration: TextDecoration.underline),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Computer programming is important today because so much of our world is automated. Humans need to be able to control the interaction between people and machines. Since computers and machines are able to do things so efficiently and accurately, we use computer programming to harness that computing power. Ones you Register yorself with our Application here you will find all the desire Courses in English and Hindi. You can think clearly before chosing the Course but remember stick with the desire Course that you have chosen till the end. That only provide you a benefit because, I can assure you that these courses are the best courses among the globe. You can chose as many courses you like but a free advise from my side that since these courses are totally for FREE but first complete your previous course full then move to the next course.',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 115, 10, 0),
                    padding: EdgeInsets.all(10.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
