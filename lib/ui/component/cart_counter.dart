import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int _numbOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (_numbOfItems > 1)
              setState(
                () {
                  _numbOfItems--;
                },
              );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Text(
            _numbOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        _buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(
              () {
                _numbOfItems++;
              },
            );
          },
        ),
      ],
    );
  }

  SizedBox _buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 36,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
