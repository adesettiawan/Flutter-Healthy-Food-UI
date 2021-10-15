import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/model/data/data_fruit.dart';
import 'package:submission_flutter_pemula/ui/component/select_item_fruit.dart';

class FruitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, int numb) {
          return SelectItemFruit(index: numb);
        },
      ),
    );
  }
}
