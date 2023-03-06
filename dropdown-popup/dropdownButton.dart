import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? selectedItem = items.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedItem,
      items: items
          .map(
            (item) => DropdownMenuItem<String>(value: item, child: Text(item)),
          )
          .toList(),
      onChanged: (value) {
        selectedItem = value;
        setState(() {});
      },
    );
  }
}

List<String> items = ["Yapılanlar", "Yapılmayanlar"];
