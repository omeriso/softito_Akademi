import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Row(
          //   children: _row(),
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: _row(),
          // ),
          // Wrap(
          //   children: [..._row(), ..._row()],
          // ),
          // SizedBox(
          //   height: 50,
          //   width: MediaQuery.of(context).size.width,
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: [..._row(), ..._row()],
          //   ),
          // ),
          // SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(children: [..._row(), ..._row(), ..._row()])),
          // Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ..._row(),
                ..._row(),
                ..._row(),
                ..._row(),
                ..._row(),
                ..._row(),
                ..._row(),
                ..._row(),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _row() {
    return [
      _Container(20, 30, Colors.red),
      _Container(10, 20, Colors.blue),
      _Container(40, 15, Colors.orange),
      _Container(25, 30, Colors.purple),
      _Container(50, 25, Colors.pink),
      _Container(10, 15, Colors.yellow),
      _Container(30, 25, Colors.amber),
      _Container(10, 15, Colors.yellow),
      _Container(25, 30, Colors.purple),
      _Container(40, 20, Colors.blue),
      _Container(40, 15, Colors.orange),
    ];
  }

  _Container(
    double width,
    double height,
    Color color,
  ) =>
      Container(
        width: width,
        height: height,
        color: color,
      );
}
