import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';
import '../models/catalog.dart';
import '../utilities/routes.dart';
import 'cart_model.dart';
import 'package:url_launcher/url_launcher.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  const AddToCart({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog);
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    final Uri uri = Uri.parse(
        "https://docs.google.com/spreadsheets/d/1rPiGHJXxY01mVGoMT12TcLu6VE6C6hehtVWKP6vIKXk/edit?usp=sharing");
    return Center(
        child: Container(
      height: 50,
      width: 120,
      child: ElevatedButton(
        // ignore: prefer_const_constructors
        child: Text(
          "More Info",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          launchUrl(uri);
        },
      ),
    ));
  }
}
