import 'package:flutter/material.dart';

final key = GlobalKey<_AwesomeTextState>();

class GlobalKeyState extends StatelessWidget {
  const GlobalKeyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => key.currentState?._increment(),
                child: const Text('Up'),
              ),
              AwesomeText(key: key,),
            ],
          ),
        ),
      ),
    );
  }
}

class AwesomeText extends StatefulWidget {
  const AwesomeText({Key? key}) : super(key: key);

  @override
  State<AwesomeText> createState() => _AwesomeTextState();
}

class _AwesomeTextState extends State<AwesomeText> {
  var _value = 0;
  void _increment() {
    _value += 1;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Text('$_value');
  }
}

