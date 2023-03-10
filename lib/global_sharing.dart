import 'package:flutter/material.dart';

final key = GlobalKey();

class GlobalSharing extends StatelessWidget {
  const GlobalSharing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return Container(
                  color: Colors.green,
                  child: Foo(key),
                );
              case 1:
                return Container(
                  color: Colors.blueAccent,
                  child: const Center(child: Text('blank')),
                );
              case 2:
                return Container(
                  color: Colors.red,
                  child: Foo(key),
                );
              default:
                throw '404';
            }
          },
        ),
      ),
    );
  }
}

class Foo extends StatefulWidget {

  @override
  State<Foo> createState() => _FooState();

  Foo(Key? key) : super(key: key);
}

class _FooState extends State<Foo> {
  bool _switchValue = false;
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: _switchValue,
            onChanged: (v){
              setState(() {
                _switchValue = v;
              });
            }),
        Slider(
            value: _sliderValue,
            onChanged: (v) {
              setState(() {
                _sliderValue = v;
              });
            })
      ],
    );
  }
}

