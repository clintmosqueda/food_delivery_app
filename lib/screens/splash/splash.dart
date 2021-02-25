import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/intro_model.dart';
import 'package:food_delivery_app/screens/home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController pageController = new PageController(initialPage: 0);
  int currentPage = 0;

  Widget dotIndicator(bool isCurrentPage) {
    return Container(
      width: isCurrentPage ? 20.0 : 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(
        horizontal: 2.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: isCurrentPage ? Color(0xff09b44d) : Color(0xffbde0cb),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemCount: intros.length,
              itemBuilder: (BuildContext context, int index) {
                Intro intro = intros[index];
                return Column(
                  children: [
                    ClipPath(
                      clipper: CustomClipPath(),
                      child: Image(
                          height: 600.0,
                          width: double.infinity,
                          image: AssetImage(intro.imageUrl),
                          fit: BoxFit.cover),
                    ),
                    Text(
                      intro.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff09b44d),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: (currentPage == intros.length - 1)
                  ? Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Color(0xff09b44d),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              'GET STARTED',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (var i = 0; i < intros.length; i++)
                                currentPage == i
                                    ? dotIndicator(true)
                                    : dotIndicator(false)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            pageController.animateToPage(currentPage + 1,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.linear);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: Color(0xff09b44d),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                'NEXT',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            pageController.animateToPage(intros.length - 1,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.linear);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            child: Center(
                              child: Text(
                                'SKIP',
                                style: TextStyle(
                                  color: Color(0xff09b44d),
                                ),
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
    ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 150,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
