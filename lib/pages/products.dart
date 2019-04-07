import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/product_manager.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print('Back button pressed!');
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text("Choose"),
                ),
                ListTile(title: Text("Manage Products"),)
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductManager(),
        ));
  }
}
