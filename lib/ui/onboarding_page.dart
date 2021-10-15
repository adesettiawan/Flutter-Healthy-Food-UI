import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:submission_flutter_pemula/model/data/data_onboarding.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentIndex = 0;
  PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: PageView.builder(
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _controller,
        itemBuilder: (_, context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  contents[context].image,
                  width: double.infinity,
                  height: _size.height * 0.3,
                ),
                SizedBox(
                  height: _size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                  child: Text(
                    contents[context].title,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                  child: Text(
                    contents[context].desc,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: _size.height * 0.05,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.yellow[900],
                      ),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      ),
                    ),
                    onPressed: () {
                      if (_currentIndex == contents.length - 1) {
                        Navigator.pushNamed(_, '/home');
                      }
                      _controller.nextPage(
                        duration: Duration(milliseconds: 10),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(
                      _currentIndex == contents.length - 1
                          ? "Continue"
                          : "Next",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height * 0.08,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (index) => buildDot(index),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 7, 0),
      height: 8,
      width: _currentIndex == index ? 15 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.yellow[900],
      ),
    );
  }
}
