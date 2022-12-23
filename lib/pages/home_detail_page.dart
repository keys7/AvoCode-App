import 'package:avocode/pages/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        backgroundColor: Colors.white,
        title: const Text('Go Back',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            )),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          catalog.price.text.bold.xl4.red800.make(),
          AddToCart(catalog: catalog).wh(100, 50),
        ],
      ).p20(),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.black,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.lg
                        .color(
                          Color.fromARGB(255, 255, 255, 255),
                        )
                        .xl4
                        .extraBold
                        .make()
                        .py12(),
                    catalog.desc.text.white.make(),
                  ],
                ).p32(),
              ),
            ))
          ],
        )..p16(),
      ),
    );
  }
}
