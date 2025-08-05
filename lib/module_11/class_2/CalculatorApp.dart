import 'package:flutter/material.dart';
import 'package:flutter_ostad_11/module_11/class_2/widget/buildButton.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = '0';
  String _input = '0';
  String _ope = '0';
  double num1 = 0;
  double num2 = 0;

  void buttonPress(String value) {
    print('int value = $value');
    setState(() {
      if (value == 'C') {
        _output = '0';
        _input = '0';
        _ope = '';
        num1 = 0;
        num2 = 0;
      } else if (value == '=') {
        num2 = double.parse(_input);
        if (_ope == '+') {
          _output = (num1 + num2).toString();
        } else if (_ope == '-') {
          _output = (num1 - num2).toString();
        } else if (_ope == '*') {
          _output = (num1 * num2).toString();
        } else if (_ope == '÷') {
          _output = num2 != 0 ? (num1 / num2).toString() : 'Cannot divide by zero';
        }
      } else if (['+', '-', '*', '÷'].contains(value)) {
        num1 = double.parse(_input);
        _ope = value;
        _input = '';
      } else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  (_ope.isNotEmpty && _input.isNotEmpty) ?   Text('$num1 $_ope $_input',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white54
                    ),
                    ) : SizedBox(),
                  SizedBox(height: 20,),
                  Text(
                    _output,
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              buildButton(onClick: () => buttonPress('7'), text: '7'),
              buildButton(onClick: () => buttonPress('8'), text: '8'),
              buildButton(onClick: () => buttonPress('9'), text: '9'),
              buildButton(
                onClick: () => buttonPress('÷'),
                text: '÷',
                color: Colors.orange,
              )
            ],
          ),
          Row(
            children: [
              buildButton(onClick: () => buttonPress('4'), text: '4'),
              buildButton(onClick: () => buttonPress('5'), text: '5'),
              buildButton(onClick: () => buttonPress('6'), text: '6'),
              buildButton(
                onClick: () => buttonPress('*'),
                text: '*',
                color: Colors.orange,
              )
            ],
          ),
          Row(
            children: [
              buildButton(onClick: () => buttonPress('1'), text: '1'),
              buildButton(onClick: () => buttonPress('2'), text: '2'),
              buildButton(onClick: () => buttonPress('3'), text: '3'),
              buildButton(
                onClick: () => buttonPress('-'),
                text: '-',
                color: Colors.orange,
              )
            ],
          ),
          Row(
            children: [
              buildButton(onClick: () => buttonPress('C'), text: 'C'),
              buildButton(onClick: () => buttonPress('0'), text: '0'),
              buildButton(onClick: () => buttonPress('='), text: '='),
              buildButton(
                onClick: () => buttonPress('+'),
                text: '+',
                color: Colors.orange,
              )
            ],
          ),
        ],
      ),
    );
  }
}
