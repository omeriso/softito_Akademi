import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_design/dropdownButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Habits"),
          backgroundColor: Colors.grey,
          actions: [
            DropDown(),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.history)),
            PopupMenuButton(
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<Settings>>[
                      PopupMenuItem(
                          onTap: () {
                            print(Settings.Configure);
                          },
                          child: Text("Configure "),
                          value: Settings.Configure),
                      PopupMenuItem(
                        child: Text("Specify"),
                        value: Settings.Specify,
                      ),
                      PopupMenuItem(
                        child: Text("Hide"),
                        value: Settings.Hide,
                      )
                    ])
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(200, 20, 0, 0),
                child: SizedBox(
                  width: 400,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Text(
                          "Thu",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Fri",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Sat",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Sun",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.circle),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "    wake up early",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: SizedBox(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 45,
                                height: 20,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.check,
                                      size: 20,
                                    )),
                              ),
                              SizedBox(
                                width: 45,
                                height: 20,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.check,
                                      size: 20,
                                    )),
                              ),
                              SizedBox(
                                width: 45,
                                height: 20,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.check,
                                      size: 20,
                                    )),
                              ),
                              SizedBox(
                                width: 45,
                                height: 20,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.check,
                                      size: 20,
                                    )),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.circle),
                      SizedBox(
                        child: SizedBox(
                          width: 100,
                          child: Text(
                            "    breakfast",
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: SizedBox(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 45,
                                  height: 20,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.check,
                                        size: 20,
                                      )),
                                ),
                                SizedBox(
                                  width: 45,
                                  height: 20,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.check,
                                        size: 20,
                                      )),
                                ),
                                SizedBox(
                                  width: 45,
                                  height: 20,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.check,
                                        size: 20,
                                      )),
                                ),
                                SizedBox(
                                  width: 45,
                                  height: 20,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.check,
                                        size: 20,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
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

enum Settings { Configure, Specify, Hide }
