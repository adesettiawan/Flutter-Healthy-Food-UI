import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/model/data/data_vegetable.dart';
import 'package:submission_flutter_pemula/ui/component/select_item_vegetable.dart';

class VegetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: vegetables.length,
        itemBuilder: (context, int numb) {
          return SelectItemVegetable(index: numb);
        },
      ),
    );
  }
}
