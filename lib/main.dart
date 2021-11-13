import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Game(),
    );
  }
}

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  double height = 400;
  double height2 = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Column(
              children: [
                Column(children: [
                  GestureDetector(
                      child: Container(
                        color: Colors.yellow,
                        height: height,
                        width: 450,
                        child: Text(""),
                      ),
                      onTap: () {
                        height == 800
                            ? showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Yellows win"),
                                    content:
                                        Text("Tabriklaymiz sariqlar yutdi"),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              height = 400;
                                              height2 = 400;
                                            });
                                          },
                                          child: Icon(Icons.restart_alt)),
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              height = 400;
                                              height2 = 400;
                                            });
                                          },
                                          child: Icon(Icons.not_interested)),
                                    ],
                                  );
                                })
                            : setState(
                                () {
                                  height2 -= 100;
                                  height += 100;
                                },
                              );
                      }),
                  GestureDetector(
                    child: Container(
                      color: Colors.red,
                      width: 450,
                      height: height2,
                      child: Text(""),
                    ),
                    onTap: () {
                      height2 == 800
                          ? showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Reds win"),
                                  content: Text("Tabriklaymiz Qizillar yutdi"),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            height = 400;
                                            height2 = 400;
                                          });
                                        },
                                        child: Icon(Icons.restart_alt)),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            height = 400;
                                            height2 = 400;
                                          });
                                        },
                                        child: Icon(Icons.not_interested)),
                                  ],
                                );
                              })
                          : setState(
                              () {
                                height -= 100;
                                height2 += 100;
                              },
                            );
                    },
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
