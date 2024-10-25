import 'package:flutter/material.dart';
import 'user.dart';

class TwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('TwoScreen'),
          ),
          body: Container(
            color: Colors.green,
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('TwoScreen', style: TextStyle(color: Colors.white,fontSize: 30)),
                    
                  ],
                )
            ),
          ),
        )
    );
  }
}