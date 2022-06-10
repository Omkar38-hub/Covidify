import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:flutter/animation.dart';
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightBlue, Colors.blueAccent],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 15, top: 50),
                      child: Text(
                        "Covidify",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Text(
                        "Are You feeling Sick?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding:
                          const EdgeInsets.only(left: 20, right: 30, top: 5),
                      child: Text(
                        "If you feel sick with any of covid-19 symptoms,Please call or SMS on below number for help.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: ListTile(
                                    horizontalTitleGap: 0,
                                    contentPadding:EdgeInsets.only(left: 3,right: 3),
                                    leading: Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      "011-23978046",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                          Expanded(
                            child: MaterialButton(
                                // minWidth: 12,
                                onPressed: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: ListTile(
                                    horizontalTitleGap: 0,
                                    contentPadding:EdgeInsets.only(left: 3,right: 3),
                                    leading: Icon(
                                      Icons.sms,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      "011-23978046",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex:1,
                      child: Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          "Prevention",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage(
                                        "assets/images/connection.png"),
                                  ),
                                ),
                                child: new Text('Avoid close contact',
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // constraints: new BoxConstraints.expand(
                                //   height: 200.0,
                                // ),
                                alignment: Alignment.bottomRight,
                                padding: new EdgeInsets.only(left: 16.0,bottom: 2),
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage(
                                      "assets/images/wash.png",
                                    ),
                                  ),
                                ),
                                child: new Text('Clean your hands',
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // constraints: new BoxConstraints.expand(
                                //   height: 200.0,
                                // ),
                                alignment: Alignment.bottomLeft,
                                padding: new EdgeInsets.only(
                                    left: 16.0, bottom: 8.0),
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage(
                                        "assets/images/mask.jpg"),
                                  ),
                                ),
                                child: new Text('Wear a facemask',
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.lightBlue,
                                    Colors.blueAccent
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: const ListTile(
                                      leading: ElevatedButton(
                                          onPressed: _launchURL,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/test.png"),
                                          ),),
                                      title: Text('Do your own test!',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white)),
                                      subtitle: Text(
                                          'Follow the instructions to do your test',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL(){
  const url =
      'https://www.cdc.gov/coronavirus/2019-ncov/testing/self-testing.html';
  launch(url);

}
