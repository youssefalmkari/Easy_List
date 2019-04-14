import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product.dart';
import 'package:flutter_app/pages/product_admin.dart';
import 'package:flutter_app/pages/products.dart';

/* Debug */
//import 'package:flutter/rendering.dart';

void main() {
  /* Debug */
//  debugPaintSizeEnabled = true;
//  debugPaintBaselinesEnabled = true;
//  debugPaintPointersEnabled = true;

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowMaterialGrid: true,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.deepPurple),
      routes: {
        '/': (BuildContext context) => ProductsPage(_products, _addProduct, _deleteProduct),
        '/admin': (BuildContext context) => ProductsManagerPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElement = settings.name.split('/');

        if (pathElement[0] != '') {
          return null;
        }

        if (pathElement[1] == 'product') {
          final int index = int.parse(pathElement[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(
                  _products[index]['title'],
                  _products[index]['image']));
        }

        return null;
      },
    );
  }
}
