import 'package:flutter/material.dart';

import 'dart:js' as js;

// ...

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.blueGrey[900],
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'HELP Mobile',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'FAQ',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL Mobile',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                  ],
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 20),
                InfoText(
                  type: 'Email',
                  text: 'travell0_final@gmail.com',
                ),
                SizedBox(height: 5),
                InfoText(
                  type: 'Address',
                  text: '128, Trymore Road, Delft, MN - 56124',
                ),
                SizedBox(height: 20),
                Divider(
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | travell0',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'HELP Desktop',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'FAQ',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL Desktop',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'travell0@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: '43 Ahmed Qanha Street',
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | travell0',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  BottomBarColumn({
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              child: Text(
                heading,
                style: TextStyle(
                  color: Colors.blueGrey[300],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                print(heading);
              }),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              print(s1);
            },
            child: Text(
              s1,
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {
              print(s2);
            },
            child: Text(
              s2,
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 5),
          TextButton(
            onPressed: () {
              print(s3);
            },
            child: Text(
              s3,
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationHeading extends StatelessWidget {
  const DestinationHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 20,
              bottom: screenSize.height / 20,
            ),
            width: screenSize.width,
            child: Text(
              'Who We Are Mobile?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : Container(
            width: screenSize.width,
            child: Column(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage("assets/images/mobilebackground.png"),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 500,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'INTRO',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 500,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'We offer the best trips ever!\n"Our mission here at Travell0 is to get you the trip of your dreams"',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          // Align(
                          //   child: Text(
                          //     "Our mission here at Travell0 is to get you the trip of your dreams.",
                          //     textAlign: TextAlign.right,
                          //     style: TextStyle(
                          //       fontSize: 20,
                          //       fontWeight: FontWeight.normal,
                          //     ),
                          //   ),
                          // ),
                          // GestureDetector(onTap: (){  js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);},
                          //     child: Image.asset('assets/images/googleplay.png',height: 150,width: 200,),),
                        ],
                      ),
                      Image.asset(
                        'assets/images/person.jpg',
                        width: 300,
                        height: 300,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/mobilebackground.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Find Us on Google Play',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              js.context.callMethod('open',
                                  ['https://stackoverflow.com/questions/ask']);
                            },
                            child: Image.asset(
                              'assets/images/googleplay.png',
                              height: 150,
                              width: 200,
                            ),
                          ),
                        ],
                      ),
                      Image.asset('assets/images/mobile.png'),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      /* image: DecorationImage(
                      image: AssetImage("assets/images/mobilebackground.png"),
                      fit: BoxFit.cover,
                    ), */
                      ),
                  /* margin: EdgeInsets.only(top: 20), */
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage("assets/images/mobilebackground.png"),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(height: 400,),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 500,
                            //height: 400,
                            // color: Colors.red,
                            margin: EdgeInsets.only(bottom: 15),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'About Us',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 500,
                            //height: 400,
                            // color: Colors.red,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'We are a multinational company that provides all kind of travrl services',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff0f0e0e)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(fontSize: 25))),
                            onPressed: () {
                              print("button pressed");
                            },
                            child: Text('Learn more'),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/about-us-vector.png',
                        width: 300,
                      ),

                      /* SizedBox(
                        height: screenSize.height * 0.25,
                        width: screenSize.width * 0.4,
                        child: Image.asset(
                          'assets/images/about-us-vector.png',
                          fit: BoxFit.cover,
                        ),
                      ), */

                      // Text(
                      //   'Find Us on Google Play',
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //     fontSize: 40,
                      //     fontFamily: 'Montserrat',
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      // GestureDetector(onTap: (){  js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);},
                      //   child: Image.asset('assets/images/googleplay.png',height: 150,width: 200,),),

                      //Image.asset('assets/images/mobile.png'),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}

class ExploreDrawer extends StatelessWidget {
  const ExploreDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey.shade900,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'TRIPS',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'HOTELS',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'TICKETS',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'VISA',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.blueGrey.shade400,
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'LIMOUSINE',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Text(
                        'Travell0',
                        style: TextStyle(
                          color: Colors.blueGrey.shade300,
                          fontSize: 14,
                        ),
                      ),
                      // Image.asset('assets/images/logo.png'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  InfoText({required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: TextStyle(
            color: Colors.blueGrey.shade300,
            fontSize: 16,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.blueGrey.shade100,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),

              Container(
                  width: 100,
                  height: 50,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 100,
                  )),
              // Text(
              //   'Travell0',
              //   style: TextStyle(
              //     color: Colors.blueGrey.shade100,
              //     fontSize: 20,
              //     fontFamily: 'Montserrat',
              //     fontWeight: FontWeight.w400,
              //     letterSpacing: 3,
              //   ),
              // ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenSize.width / 25),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'TTIPS',
                            style: TextStyle(
                              color: _isHovering[0]
                                  ? Colors.blue.shade200
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 25),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'HOTELS',
                            style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'TICKETS',
                            style: TextStyle(
                              color: _isHovering[2]
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[3] = true
                              : _isHovering[3] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'VISA',
                            style: TextStyle(
                              color: _isHovering[3]
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[3],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[4] = true
                              : _isHovering[4] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'LIMOUSINE',
                            style: TextStyle(
                              color: _isHovering[4]
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[4],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[5] = true : _isHovering[5] = false;
                  });
                },
                onTap: () {},
                child: Text(
                  'HELP',
                  style: TextStyle(
                    color: _isHovering[5] ? Colors.white : Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[6] = true : _isHovering[6] = false;
                  });
                },
                onTap: () {},
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: _isHovering[6] ? Colors.white : Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 5, top: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[7] = true : _isHovering[7] = false;
                    });
                  },
                  onTap: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: _isHovering[7] ? Colors.white : Colors.white70,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
