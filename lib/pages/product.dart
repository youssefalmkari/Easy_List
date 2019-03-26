import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title, imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              onPressed: () => Navigator.pop(context, true),
              child: Text('DELETE'),
              textTheme: ButtonTextTheme.primary,
            )
          ],
        ));
  }
}
