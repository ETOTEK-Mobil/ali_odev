import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {

    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidht = screenInfo.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 106, 97),
        title:const Text("columb, Row and stack"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: screenHeight/3,
                      color: Colors.yellow,
                      child:const Center(child: Text("Row 1")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: screenHeight/3,
                      color: const Color.fromARGB(255, 48, 185, 98),
                      child:const Center(child: Text("Row 2")),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  height: screenHeight/3,
                  color: Colors.black,
                  child:const Center(child: Text("Column 1",style: TextStyle(color: Colors.white),)),
                ),
              ),
              Expanded(
                child: Container(
                  height: screenHeight/3,
                  color: const Color.fromARGB(255, 220, 47, 223),
                  child:const Center(child: Text("Column 2",style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight/3 -50,
            left: screenWidht/2 - 50,
            child: Container(
              width: 100,
              height: 100,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child:const Center(child: Text("Circle 1")),
            ),
          ),
        ],
      )
    );
  }
}