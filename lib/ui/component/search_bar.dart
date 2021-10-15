import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 3,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Icon(
            Icons.search,
            size: 25,
          ),
        ),
        hintText: "Cari menu sehatmu...",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
