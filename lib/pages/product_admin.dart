import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product_create.dart';
import 'package:flutter_app/pages/product_list.dart';

class ProductsManagerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Choose"),
            ),
            ListTile(
              title: Text("All Products"),
              onTap: () => Navigator.pushReplacementNamed(context, '/'),
            ),
          ],
        )),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text("Product Manager"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Product',
              ),
              Tab(icon: Icon(Icons.list), text: 'My Products'),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: <Widget>[ProductCreatePage(), ProductListPage()],
          ),
        ),
      ),
    );
  }
}
