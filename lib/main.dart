import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyWidget(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffade6e6),
        appBar: AppBar(
          title: const Text(
            '       First Screen of My apl',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Piramida(
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              Piramida(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Piramida(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Piramida extends StatelessWidget {
  const Piramida({Key? key, required this.mainAxisAlignment}) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: mainAxisAlignment, children: [
      Container(
        height: 80,
        width: 80,
        color: Colors.red,
        child: const Center(
          child: Text('1'),
        ),
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.yellow,
        child: const Center(
          child: Text('2'),
        ),
      ),
      Container(
        height: 120,
        width: 120,
        color: Colors.green,
        child: const Center(
          child: Text('3'),
        ),
      ),
    ]);
  }
}
