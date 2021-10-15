import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/ui/component/fruit_page.dart';
import 'package:submission_flutter_pemula/ui/component/search_bar.dart';
import 'package:submission_flutter_pemula/ui/component/snack_page.dart';
import 'package:submission_flutter_pemula/ui/component/vegetable_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: _height * 0.3,
                    width: _width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(1.0),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0.3),
                            Colors.black.withOpacity(0.2),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 20,
                    child: RichText(
                      text: TextSpan(
                        text: "Atur Kebutuhan ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: "Menu \nSehat Sekarang.",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              fontFamily: 'poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: Offset(
                  0.0,
                  -(_height * 0.3 - _height * 0.262),
                ),
                child: Container(
                  width: _width,
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(27),
                      topRight: Radius.circular(27),
                    ),
                  ),
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          unselectedLabelColor: Colors.grey[400],
                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          tabs: [
                            Tab(
                              child: Text(
                                'Sayuran',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Buah',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Snak',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 10,
                          ),
                          child: SearchBar(),
                        ),
                        Container(
                          height: _height * 0.59,
                          child: TabBarView(
                            children: [
                              VegetablePage(),
                              FruitPage(),
                              SnackPage(),
                            ],
                          ),
                        ),
                      ],
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
