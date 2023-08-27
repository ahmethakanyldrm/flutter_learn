import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.visiblePassword,
      autofillHints: [AutofillHints.password],
      obscureText: _isSecure,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: "Password",
        suffix: IconButton(
          onPressed: () {
            _changeLoading();
          },
          icon: AnimatedCrossFade(
            firstChild: Icon(Icons.visibility_outlined),
            secondChild: Icon(Icons.visibility_off_outlined),
            crossFadeState: _isSecure
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(seconds: 3),
          ),
          // Icon(_isSecure ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
