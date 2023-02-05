import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'documentsList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  TextEditingController textController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello User!",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Search Documents",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue,
          child: Stack(children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.linear_scale_sharp,
                    size: 30,
                    color: Colors.blueGrey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 55,
                      padding: EdgeInsets.all(5.0),
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(2, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Search")
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Serivces",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DocumentsList(
                                          cName: "Certificates")));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              color: Colors.white,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.fileInvoice,
                                        color: Colors.blueAccent,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Certificates",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ]),
                              ),
                              elevation: 20,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DocumentsList(cName: "Magisterial")));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              color: Colors.white,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.userTie,
                                        color: Colors.blueAccent,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Magisterial",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ]),
                              ),
                              elevation: 20,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DocumentsList(
                                          cName: "Miscellaneous")));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              color: Colors.white,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.folderOpen,
                                        color: Colors.blueAccent,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Miscellaneous",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ]),
                              ),
                              elevation: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DocumentsList(cName: "Revenue")));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              color: Colors.white,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.coins,
                                        color: Colors.blueAccent,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Revenue",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ]),
                              ),
                              elevation: 20,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DocumentsList(cName: "RTI")));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              color: Colors.white,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.bookOpenReader,
                                        color: Colors.blueAccent,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("RTI",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ]),
                              ),
                              elevation: 20,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DocumentsList(
                                          cName: "SocialSecurity")));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              color: Colors.white,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.peopleGroup,
                                        color: Colors.blueAccent,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Social Security",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ]),
                              ),
                              elevation: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DocumentsList(cName: "Supply")));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              color: Colors.white,
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.parachuteBox,
                                        color: Colors.blueAccent,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Supply",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ]),
                              ),
                              elevation: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.yellow,
        color: Colors.blue,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.map,
            size: 25,
            color: Colors.white,
          )
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          if (currentIndex == 1) {
            _launchUrl(Uri.parse(
                'https://www.google.com/maps/search/jan+seva+kendra+near+me/@23.3508568,72.3433841,10.26z'));
            setState(() {
              currentIndex = 0;
            });
          }
        },
      ),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $_url';
  }
}
