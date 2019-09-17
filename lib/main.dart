import 'package:flutter/material.dart';

import 'customicon.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeScreenTopPart(),
          ],
        ),
      ),
    );
  }
}

class HomeScreenTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 370.0,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/banner.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0x00000000),
                            const Color(0xD9333333),
                          ],
                          stops: [
                            0.0,
                            0.9
                          ],
                          begin: FractionalOffset(0.0, 0.0),
                          end: FractionalOffset(0.0, 1.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120.0, left: 95.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'WATCH BEFORE EVERONE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: 'SF-Pro-Display-Bold'),
                          ),
                          Text(
                            'The Punisher: Season 2',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 370.0,
            right: -20.0,
            child: FractionalTranslation(
              translation: Offset(0.0, -0.5),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Color(0xFFE52020),
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: RaisedButton(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 80.0),
                      onPressed: () {},
                      color: Color(0xFFE52020),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Watch Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: 'SF-Pro-Display-Bold'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              CustomIcons.back_icon,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Mclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100.0);
    var controlPoint = Offset(35.0, size.height);
    var oldPoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, oldPoint.dx, oldPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }
}
