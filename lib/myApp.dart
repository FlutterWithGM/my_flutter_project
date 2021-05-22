import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            myCard(),
            myCard(),
            myCard(),
            myCard(),
            myCard(),
            myCard(),
            myCard(),
          ],
        ),
      ),
    );
  }

  Widget myCard() {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 180,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cake",
                      style: TextStyle(
                          fontSize: 33,
                          color: Colors.pink,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "There are many",
                    ),
                    Text("Companies",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.yellow,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Image(
                  image: NetworkImage(
                "https://picsum.photos/200/300",
              ))
            ],
          ),
        ));
  }
}
