import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/model/data/data_vegetable.dart';
import 'package:submission_flutter_pemula/ui/detail_vegetable_page.dart';

class SelectItemVegetable extends StatelessWidget {
  final int index;

  SelectItemVegetable({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 35),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailVegetablePage(
                          index: index,
                        );
                      },
                    ),
                  );
                },
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          vegetables[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vegetables[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'poppins',
                              ),
                            ),
                            Text(
                              vegetables[index].slug,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[500],
                                fontSize: 12,
                                fontFamily: 'poppins',
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Rp. " + vegetables[index].price.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailVegetablePage(
                            index: index,
                          );
                        },
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[350],
                    size: 24,
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
