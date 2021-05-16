import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/utils/appBar.dart';
import 'package:flutter_project/utils/inputKey.dart';
import 'package:flutter_project/utils/textField.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // List<String> currentPin = ["","","",""];
  // TextEditingController pinOneController = TextEditingController();
  // TextEditingController pinTwoController = TextEditingController();
  // TextEditingController pinThreeController = TextEditingController();
  // TextEditingController pinFourController = TextEditingController();
  TextEditingController _upperTextField = TextEditingController();
  TextEditingController _lowerTextField = TextEditingController();

  @override
  void dispose() {
    _upperTextField.dispose();
    _lowerTextField.dispose();
    super.dispose();
  }

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.transparent),
  );
  int pinIndex = 0;

  String get images => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // buildExitButton(),
          appBar(),
          Expanded(
            child: Container(
              alignment: Alignment(0, 0),
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CurrencyTextField(),
                  SizedBox(height: 40),
                  CurrencyTextField(),
                ],
              ),
            ),
            flex: 1,
          ),

          buildNumberPad(),
        ],
      ),
    );
  }

  buildNumberPad() {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: "1",
                    onPressed: () {
                      pinIndexSetup("1");
                    },
                  ),
                  KeyboardNumber(
                    n: "2",
                    onPressed: () {
                      pinIndexSetup("2");
                    },
                  ),
                  KeyboardNumber(
                    n: "3",
                    onPressed: () {
                      pinIndexSetup("3");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: "4",
                    onPressed: () {
                      pinIndexSetup("4");
                    },
                  ),
                  KeyboardNumber(
                    n: "5",
                    onPressed: () {
                      pinIndexSetup("5");
                    },
                  ),
                  KeyboardNumber(
                    n: "6",
                    onPressed: () {
                      pinIndexSetup("6");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: "7",
                    onPressed: () {
                      pinIndexSetup("7");
                    },
                  ),
                  KeyboardNumber(
                    n: "8",
                    onPressed: () {
                      pinIndexSetup("8");
                    },
                  ),
                  KeyboardNumber(
                    n: "9",
                    onPressed: () {
                      pinIndexSetup("9");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: ".",
                    onPressed: () {},
                  ),
                  KeyboardNumber(
                    n: "0",
                    onPressed: () {
                      pinIndexSetup("0");
                    },
                  ),
                  Container(
                    width: 60.0,
                    child: Icon(
                      Icons.backspace,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  //
  pinIndexSetup(String text) {
    //   if (pinIndex == 0)
    //     pinIndex = 1;
    //   else if (pinIndex < 4) pinIndex++;
    //   setPin(pinIndex, text);
    //   currentPin[pinIndex - 1] = text;
    //   String strPin = "";
    //   currentPin.forEach((e) {
    //     strPin += e;
    //   });
    //   if (pinIndex == 4) print(strPin);
  }

  ///Here Grid View Builder

// buildPinRow() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       PINNumber(
//         outlineInputBorder : outlineInputBorder,
//         textEditingController : pinOneController,
//       ),
//       PINNumber(
//         outlineInputBorder : outlineInputBorder,
//         textEditingController : pinTwoController,
//       ),
//       PINNumber(
//         outlineInputBorder : outlineInputBorder,
//         textEditingController : pinThreeController,
//       ),
//       PINNumber(
//         outlineInputBorder : outlineInputBorder,
//         textEditingController : pinFourController,
//       ),
//     ],
//   );
// }

//This is and next to this

// buildSecurityText() {
//    return Text("Security Pin",
//      style: TextStyle(
//        color: Colors.white,
//        fontSize: 22.0,
//        fontWeight: FontWeight.bold,
//      ),
//    );
//  }

//   buildExitButton() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Padding(padding: const EdgeInsets.all(8.0),
//         child: MaterialButton(
//           onPressed: () {},
//           height: 50.0,
//           minWidth: 50.0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50.0),
//           ),
//           child: Icon(Icons.clear, color: Colors.white),
//         ),
//         ),
//       ],
//     );
//   }
}
