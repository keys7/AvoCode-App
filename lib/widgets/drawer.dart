import 'package:avocode/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/link.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';
import '../utilities/routes.dart';
import '../utilities/themes.dart';
import '../widgets/drawer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final image = ('assets/images/shubham.jpg');

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 32, 31, 31),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SingleChildScrollView(),
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text('Shubham Verma'),
                accountEmail: const Text('shubkeys@gmail.com'),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 32, 31, 31),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage(image),
                ), //For Image Asset
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              title: Text(
                'Email Me',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
