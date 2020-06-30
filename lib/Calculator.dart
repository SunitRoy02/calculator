import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String number = '';
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
  bool addAction = false,subAction = false,divAction = false,mulAction = false,perAction = false;

  String val1, val2 = '';
  var result ;
  String discription= '';
  var finalResult;

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
  void clear(){
    val1 = '';
    val2 = "";
    result = '';
    v = true;
    div = false;
    sub = false;
    add = false;
    mul = false;
    dot1 = false;
    dot2 = false;
    start = false;
    end = false;
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
                      child: Text(
                        '$discription',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        '$number',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                        textDirection: TextDirection.ltr,

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

  action(String text) {
    if (text == '1') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '1';
            number = val1;
          } else {
            val1 = '$val1' + '1';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '1';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '1';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '2') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '2';
            number = val1;
          } else {
            val1 = '$val1' + '2';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '2';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '2';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '3') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '3';
            number = val1;
          } else {
            val1 = '$val1' + '3';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '3';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '3';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '4') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '4';
            number = val1;
          } else {
            val1 = '$val1' + '4';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '4';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '4';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '5') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '5';
            number = val1;
          } else {
            val1 = '$val1' + '5';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '5';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '5';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '6') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '6';
            number = val1;
          } else {
            val1 = '$val1' + '6';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '6';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '6';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '7') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '7';
            number = val1;
          } else {
            val1 = '$val1' + '7';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '7';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '7';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '8') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '8';
            number = val1;
          } else {
            val1 = '$val1' + '8';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '8';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '8';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '9') {
      setState(() {
        if (v == true) {
          if (number == '') {
            val1 = '9';
            number = val1;
          } else {
            val1 = '$val1' + '9';
            number = val1;
          }
        } else {
          if (val2 == '') {
            val2 = '9';
            number = '$number' + '$val2';
          } else {
            val2 = '$val2' + '9';
            number = '$result' + '$val2';
          }
        }
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }
    if (text == '00') {
      setState(() {
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
        debugPrint('$val1,$val2');
        debugPrint('$number');
      });
    }

    if (text == 'AC') {
      setState(() {
        number = '';
        discription = '';
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
      debugPrint('$v || valu1 :$val1 || number :$number || valu2 :$val2');
    }
    if (text == '/') {
      setState(() {
        if (div == false) {
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
        if (mul == false) {
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
        if (sub == false) {
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
        if (add == false) {
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
      debugPrint('$v, valu1 :$val1,number :$number,valu2 :$val2');
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
            var hold  = '$result';
            number = '$hold($val2)';
            end = true;
          }
        }
      });
      debugPrint('$v, valu1 :$val1,number :$number,valu2 :$val2');
    }

    if (text == '=') {
      setState(() {

        if(addAction == true){
          double one = double.parse(val1);
          double two = double.parse(val2);

          finalResult = one+two;
          discription = '$number';
          number = '='+finalResult.toString().trim();

          debugPrint('$one,$two');

          clear();
        }

        if(subAction == true){
          double one = double.parse(val1);
          double two = double.parse(val2);
          finalResult = one-two;
          discription = '$number';
          number = '='+finalResult.toString().trim();
          debugPrint('$one,$two');
          clear();
        }

        if(mulAction == true){
          double one = double.parse(val1);
          double two = double.parse(val2);
          finalResult = one*two;
          discription = '$number';
          number = '='+finalResult.toString().trim();
          debugPrint('$one,$two');
          clear();
        }

        if(divAction == true){
          double one = double.parse(val1);
          double two = double.parse(val2);
          finalResult = one/two;
          discription = '$number';
          number = '='+finalResult.toString().trim();

          debugPrint('$one,$two');
          clear();
        }

        if(perAction == true){
          double one = double.parse(val1);
          double two = double.parse(val2);
          finalResult = one%two;
          discription = '$number';
          number = '='+finalResult.toString().trim();
          debugPrint('$one,$two');
          clear();
        }





      });
    }
  } // end of action method

} // end of class
