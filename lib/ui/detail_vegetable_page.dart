import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/model/data/data_vegetable.dart';
import 'package:submission_flutter_pemula/ui/component/cart_counter.dart';

class DetailVegetablePage extends StatefulWidget {
  final int index;

  DetailVegetablePage({Key numb, this.index}) : super(key: numb);

  @override
  _DetailVegetablePageState createState() => _DetailVegetablePageState();
}

class _DetailVegetablePageState extends State<DetailVegetablePage> {
  bool _favorite = false;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: _width,
          child: Stack(
            children: [
              Container(
                height: _height * 0.57,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      vegetables[widget.index].image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.03),
                        Colors.black.withOpacity(0.24),
                        Colors.black.withOpacity(0.68),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
              ),
              Container(
                width: _width,
                margin: EdgeInsets.only(
                  top: _height * 0.51,
                ),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(27),
                    topRight: Radius.circular(27),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      vegetables[widget.index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 36,
                        fontFamily: 'poppins',
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      width: _width,
                      height: 45,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: vegetables[widget.index].rating,
                        itemBuilder: (context, int numb) {
                          return Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                            size: 23,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Deskripsi:",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      vegetables[widget.index].description,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        wordSpacing: 1.5,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Harga",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[400],
                                fontFamily: 'poppins',
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Rp. " +
                                  vegetables[widget.index].price.toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        CartCounter(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 25,
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: 25,
                            ),
                            height: 45,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: Colors.yellow[900],
                              ),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.yellow[900],
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Tambah keranjang',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.yellow[900],
                                        ),
                                      ),
                                      content: Text(
                                        'Barhasil dimasukan ke keranjang!',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      actions: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              right: 20,
                                              bottom: 10,
                                            ),
                                            child: Text(
                                              'Oke',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.yellow[900],
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 45,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  backgroundColor: Colors.yellow[900],
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                          'Terimakasih',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.yellow[900],
                                          ),
                                        ),
                                        content: Text(
                                          'Pesanan anda sedang kami proses!',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        actions: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 20,
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                'Oke',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.yellow[900],
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  'Beli Sekarang'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                child: SafeArea(
                  child: IconButton(
                    icon: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.yellow[900],
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Positioned(
                right: 26,
                top: _height * 0.47,
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        _favorite = !_favorite;
                      },
                    );
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.18),
                          blurRadius: 3,
                          spreadRadius: 0.5,
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: 40,
                      color: (_favorite) ? Colors.red : Colors.black87,
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
