import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/model/data/data_snack.dart';
import 'package:submission_flutter_pemula/ui/component/select_item_snack.dart';

class SnackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: snacks.length,
        itemBuilder: (context, int numb) {
          return SelectItemSnack(index: numb);
        },
      ),
    );
  }
}
