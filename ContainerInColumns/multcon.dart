import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height:50 ,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                color: Colors.black
              )
          
            ),
            child: Text("Hello"),
            
          ),
          Container(
            padding: EdgeInsets.all(12),
            height:50 ,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.black
              )
          
            ),
            child: Text("Hello"),
            
          ),
        ],
      ),

    );
  }
}