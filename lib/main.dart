import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _lightIsOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.lightbulb_outline,
                  color: _lightIsOn ? Colors.yellow.shade600 : Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _lightIsOn = !_lightIsOn;
                  });
                },
                child: Container(
                  color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
                ),
              )
            ],
          ),
        ),
        backgroundColor: _lightIsOn ? Colors.white : Colors.black,
      ),
    );
  }
}
