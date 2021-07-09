import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF66CCFF),
        appBar: AppBar(
          backgroundColor: Color(0xFF66CCFF),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: InkResponse(
              onTap: () => print("Menu"),
              child: Icon(Icons.menu, size: 30, color: Colors.black),
            ),
          ),
          title: Image(
            image: NetworkImage(
              "https://cdn.freebiesupply.com/images/large/2x/amazon-logo-transparent.png",
            ),
            height: 100,
            width: 100,
          ),
          centerTitle: true, // center the title or image
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: InkResponse(
                onTap: () => print("Menu"),
                child: Icon(Icons.shopping_cart_outlined,
                    size: 30, color: Colors.black),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkResponse(
                onTap: () => print("Menu"),
                child: Icon(Icons.search, size: 30, color: Colors.black),
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://images-na.ssl-images-amazon.com/images/G/15/CA-hq/2021/img/Amazon_Basics/XCM_CUTTLE_1343728_1755381_CA_3933255_758x608_2X_en_CA._SY608_CB665425857_.jpg"),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 30.0,
                  right: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Alexa',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Lets celebrate Summer!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Summer fun with Alexa",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 90.0,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: NetworkImage(
                                  "https://m.media-amazon.com/images/I/71RVli+vKwL._AC_UL640_QL65_.jpg"),
                              height: 50.0,
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Text("Summer Clothes"),
                                Text(
                                  "Summer Slides for women",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 50.0,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(10.0),
                                    onPressed: () => print("Go to product"),
                                    color: Colors.orange,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 30.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
