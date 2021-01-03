import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              color: Colors.grey,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/mustang.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    child: Text(
                      'Mustang Beast',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 8),
              child: Text('Number 10'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text('Whitehaven Beach'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text('Whitsunday Island, Whitsunday Island'),
            ),

          ],
        ),
      ),
    );
  }
}

/*
Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 4,
          children: <Widget>[
            Container(
              height: 200,
              width: 400,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.brown,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.lightBlue,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.blue,
            ),
          ],
        ),
      )
*/