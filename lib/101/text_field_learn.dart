import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});


  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
           buildCounter: (BuildContext context, {int? currentLength, bool? isFocused,int? maxLength}){
              return buildAnimatedContainer(currentLength);
           },
            keyboardType: TextInputType.emailAddress,
            // autofillHints: [AutofillHints.email],
            /*
            inputFormatters: [
              TextProjectInputFormatter()._formatter
            ],

             */
            focusNode: focusNodeTextFieldOne,
            textInputAction: TextInputAction.next,
            decoration: _InputDecarator().emailInput,
          ),

          TextField(
            maxLength: 20,
           buildCounter: (BuildContext context, {int? currentLength, bool? isFocused,int? maxLength}){
              return buildAnimatedContainer(currentLength);
           },
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            inputFormatters: [
              TextProjectInputFormatter()._formatter
            ],

            focusNode: focusNodeTextFieldTwo,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              border: OutlineInputBorder(),
              labelText: "Mail",

            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer(int? currentLength) {
    return AnimatedContainer(
          key: UniqueKey(),
          duration: Duration(milliseconds: 100),
          height: 10,
          width: 10.0 * (currentLength ?? 0),
          color: Colors.green,
        );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if(newValue.text == "a"){
      return oldValue;
    }
    return oldValue;
  //if(oldValue.text.length.isOdd) {
  //return newValue;
  //}
  //return oldValue;
  });
}

class _InputDecarator {

  final emailInput = InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mail,
  );
}

