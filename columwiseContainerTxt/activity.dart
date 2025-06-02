import 'package:flutter/material.dart';

class  Multi extends StatelessWidget {
  const Multi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              Text("Anjaly",style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 30,
                fontWeight: FontWeight.w200,
        
              ),),
        
              Text("MA23CA010",style: TextStyle(
                color: const Color.fromARGB(255, 195, 100, 74),
                fontSize: 30,
                fontWeight: FontWeight.w200,
                
              ),),
              Text("S4MCA",style: TextStyle(
                color: const Color.fromARGB(255, 98, 74, 195),
                fontSize: 30,
                fontWeight: FontWeight.w200,
                
              ),),
            
            ],
          ),
        ),
     
    );
  }
}