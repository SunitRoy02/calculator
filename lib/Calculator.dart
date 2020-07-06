import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String number = '';
  bool textSize = true;

  bool v = true;
  bool add = false,
      sub = false,
      div = false,
      mul = false,
      per = false,
      start = false,
      end = false,
      dot1 = false,
      dot2 = false;
  bool addAction = false,
      subAction = false,
      divAction = false,
      mulAction = false,
      perAction = false;

  String val1, val2 = '';
  var result;

  String discription = '';
  var finalResult;

  void size() {
    int lol = number.length;
    if (lol > 6) {
      textSize = false;
    }
  }

  //Button Widget
  Widget button(Color btnColor, String btnString, Color stringColor) {
    return Container(
      child: RaisedButton(
        onPressed: () => action(btnString),
        child: Text(
          '$btnString',
          style: TextStyle(color: stringColor, fontSize: 26),
        ),
        shape: CircleBorder(),
        color: btnColor,
        padding: EdgeInsets.all(17),
      ),
    );
  } //end

  // zeroButton Widget
  Widget zeroButton(Color btnColor, String btnString, Color stringColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(64, 18, 64, 18),

        //onPressed
        onPressed: () => action('00'),

        child: Text(
          '$btnString',
          style: TextStyle(color: stringColor, fontSize: 26),
        ),
        shape: StadiumBorder(),
        color: btnColor,
      ),
    );
  } //end

  // clear
  void clear() {
    val1 = '';
    val2 = "";
    result = '';
    v = true;

    addAction = false;
    subAction = false;
    mulAction = false;
    divAction = false;
    perAction = false;
  }

  // bool Method
  void boolMethod() {
    add = true;
    sub = true;
    div = true;
    mul = true;
    per = true;
    dot1 = true;
    dot2 = true;
    start = true;
    end = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.black87,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 100,
                        child: AutoSizeText(
                          '$discription',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white, fontSize: 60),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 100,
                        child: AutoSizeText(
                          '$number',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white, fontSize: 60),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button(Colors.orange, 'AC', Colors.white),
                button(Colors.orange, '+/-', Colors.white),
                button(Colors.orange, '%', Colors.white),
                button(Colors.orange, '/', Colors.white),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button(Colors.grey[900], '7', Colors.white),
                button(Colors.grey[900], '8', Colors.white),
                button(Colors.grey[900], '9', Colors.white),
                button(Colors.orange, 'x', Colors.white),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button(Colors.grey[900], '4', Colors.white),
                button(Colors.grey[900], '5', Colors.white),
                button(Colors.grey[900], '6', Colors.white),
                button(Colors.orange, '-', Colors.white),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                button(Colors.grey[900], '1', Colors.white),
                button(Colors.grey[900], '2', Colors.white),
                button(Colors.grey[900], '3', Colors.white),
                button(Colors.orange, '+', Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                zeroButton(Colors.grey[900], '00', Colors.white),
                button(Colors.grey[900], '.', Colors.white),
                button(Colors.orange, '=', Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // calculation algo-------------
  void buttonClick(String button) {
    setState(() {
      if (v == true) {
        if (number == '') {
          val1 = '$button';
          number = val1;
        } else {
          val1 = '$val1' + '$button';
          number = val1;
        }
      } else {
        if (val2 == '') {
          val2 = '$button';
          number = '$number' + '$val2';
        } else {
          val2 = '$val2' + '$button';
          number = '$result' + '$val2';
        }
      }

      size();
    });
  }

  //------------

  void action(String text) {
    if (text == '1') {
      buttonClick('1');
    }
    if (text == '2') {
      buttonClick('2');
    }
    if (text == '3') {
      buttonClick('3');
    }
    if (text == '4') {
      buttonClick('4');
    }
    if (text == '5') {
      buttonClick('5');
    }
    if (text == '6') {
      buttonClick('6');
    }
    if (text == '7') {
      buttonClick('7');
    }
    if (text == '8') {
      buttonClick('8');
    }
    if (text == '9') {
      buttonClick('9');
    }
    if (text == '00') {
      setState(() {
        if (discription == '') {
          if (v == true) {
            if (number == '') {
              val1 = '';
              number = val1;
            } else {
              val1 = '$val1' + '0';
              number = val1;
            }
          } else {
            if (val2 == '') {
              val2 = '0';
              number = '$number' + '$val2';
            } else {
              val2 = '$val2' + '0';
              number = '$result' + '$val2';
            }
          }
        }

        debugPrint('$val1,$val2');
        debugPrint('$number');

        size();
      });
    }

    if (text == 'AC') {
      setState(() {
        number = '';
        discription = '';
        textSize = true;
        div = false;
        per = false;
        sub = false;
        add = false;
        mul = false;
        dot1 = false;
        dot2 = false;
        start = false;
        end = false;
        clear();
      });
    }

    if (text == '%') {
      setState(() {
        if (per == false) {
          if (number != '') {
            v = false;
            val1 = '$number';
            number = '';
            result = '$val1' + '%';
            number = '$result';
            perAction = true;
            boolMethod();
          }
        }
      });
    }
    if (text == '/') {
      setState(() {
        if (per == false) {
          if (number != '') {
            v = false;
            val1 = '$number';
            number = '';
            result = '$val1' + '/';
            number = '$result';
            divAction = true;
            boolMethod();
          }
        }
      });
    }
    if (text == 'x') {
      setState(() {
        if (per == false) {
          if (number != '') {
            v = false;
            val1 = '$number';
            number = '';
            result = '$val1' + '*';
            number = '$result';
            mulAction = true;
            boolMethod();
          }
        }
      });
    }
    if (text == '-') {
      setState(() {
        if (per == false) {
          if (number != '') {
            v = false;
            val1 = '$number';
            number = '';
            result = '$val1' + '-';
            number = '$result';
            subAction = true;
            boolMethod();
          }
        }
      });
    }
    if (text == '+') {
      setState(() {
        if (per == false) {
          if (number != '') {
            v = false;
            val1 = '$number';
            number = '';
            result = '$val1' + '+';
            number = '$result';
            addAction = true;
            boolMethod();
          }
        }
      });
    }

    if (text == '.') {
      setState(() {
        if (v == true) {
          if (dot1 == false) {
            val1 = '$val1' + '.';
            number = '$val1';
            dot1 = true;
          }
        } else {
          if (dot2 == false) {
            val2 = '$val2' + '.';
            number = '$number.';
            dot2 = true;
          }
        }
      });
    }

    if (text == '+/-') {
      setState(() {
        if (v == true) {
          if (start == false) {
            val1 = '-$val1';
            number = '$val1';
            start = true;
          }
        } else {
          if (end == false) {
            val2 = '-$val2';
            var hold = '$result';
            number = '$hold($val2)';
            end = true;
          }
        }
      });
    }

    if (text == '=') {
      setState(() {
        if (addAction == true) {
          double one = double.parse(val1);
          double two = double.parse(val2);

          finalResult = one + two;
          discription = '$number';
          number = '=' + finalResult.toString().trim();

          debugPrint('$one,$two');
          clear();
          size();
        }

        if (subAction == true) {
          double one = double.parse(val1);
          double two = double.parse(val2);
          finalResult = one - two;
          discription = '$number';
          number = '=' + finalResult.toString().trim();
          debugPrint('$one,$two');
          clear();
          size();
        }

        if (mulAction == true) {
          double one = double.parse(val1);
          double two = double.parse(val2);
          finalResult = one * two;
          discription = '$number';
          number = '=' + finalResult.toString().trim();
          debugPrint('$one,$two');

          clear();
          size();
        }

        if (divAction == true) {
          double one = double.parse(val1);
          double two = double.parse(val2);
          finalResult = one / two;
          discription = '$number';
          number = '=' + finalResult.toString().trim();

          debugPrint('$one,$two');

          clear();
          size();
        }

        if (perAction == true) {
          double one = double.parse(val1);
          double two = double.parse(val2);
          finalResult = one % two;
          discription = '$number';
          number = '=' + finalResult.toString().trim();
          debugPrint('$one,$two');

          clear();
          size();
        }
      });
    }
  }
} // end of class
