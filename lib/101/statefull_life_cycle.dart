import 'package:flutter/material.dart';

class StetfulLifeCycle extends StatefulWidget {
  const StetfulLifeCycle({super.key, required this.message});

  final String message;

  @override
  State<StetfulLifeCycle> createState() => _StetfulLifeCycleState();
}

class _StetfulLifeCycleState extends State<StetfulLifeCycle> {

  String _message = "";
  late final bool _isOdd;
  // mesaj tekse yanına tek değilse çift yaz
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    // constructor metot
    // statefull widgetlar çizilmeden önce çalışmaya başlar çizilmeden çalışması biter
    _computeMessageValue();
    print("a");
  }

  // initState den sonra çalışır ama ekran çizilmeden çalışır
  // sayfa içerisinde state değeri komple değiştiğinde tekrar çağrılır
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("b");
  }

  @override
  void didUpdateWidget(covariant StetfulLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.message != widget.message) {
      _message = widget.message;
      _computeMessageValue();
    }
    print("c");

  }

  @override
  void dispose() {
    super.dispose();
    print("Alo");
  }

  void _computeMessageValue() {
     if(_isOdd){
      _message += " Çift";
    }else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(
              onPressed: () {
                setState(() {
                  _message = "";
                });
              },
              child: Text(widget.message),
            )
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = "";
                });
              },
              child: Text(widget.message),
            ),

    );
  }
}
