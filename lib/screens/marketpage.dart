import 'package:detector_test/botombar.dart';
import 'package:detector_test/cookie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget
{ 
 

  
  @override
  _MarketPlace createState() => _MarketPlace(); 
 
  
}

class _MarketPlace extends State<MarketPlace>
{

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 10.0),
              width: MediaQuery.of(context).size.width - 10.0,
              height: MediaQuery.of(context).size.height - 20.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Efekto Wonder Land Fertiliser', '\R140.00', 'assets/womder.png',
                      false, false, context),
                  _buildCard('Plant Insecticide', '\R100.00', 'assets/pluscide.png',
                      true, false, context),
                  _buildCard('Neem Oil', '\R109.99',
                      'assets/neemoil.png', false, true, context),
                  _buildCard('Diatomaceous', '\R45.99', 'assets/diat.jpg',
                      false, false, context)
                ],
              )),
          SizedBox(height: 10.0)
        ],
      ),
    );

  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CookieDetail(
                    assetPath: imgPath,
                    cookieprice:price,
                    cookiename: name
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Colors.green)
                                : Icon(Icons.favorite_border,
                                    color: Colors.green)
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Colors.green, height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Icon(Icons.shopping_basket,
                                  color: Colors.green, size: 12.0),
                              Text('Add to cart',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Colors.green,
                                      fontSize: 12.0))
                            ],
                            if (added) ...[
                              Icon(Icons.remove_circle_outline,
                                  color: Colors.green, size: 12.0),
                              Text('3',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0)),
                              Icon(Icons.add_circle_outline,
                                  color: Colors.green, size: 12.0),
                            ]
                          ]))
                ]))));

 
  }
      
}
  
