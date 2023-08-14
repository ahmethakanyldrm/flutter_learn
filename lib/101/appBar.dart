import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});
  final String _title = "Welcome Learn";

// appBar custom özellikler hariç materialappte genel özellikleri yaz
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: false,
        toolbarTextStyle: TextStyle(
          color: Colors.red,
        ),
        leading: Icon(Icons.chevron_left),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_email_unread_sharp),
          ),
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
