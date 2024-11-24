import "package:flutter/material.dart";

class Page3 extends StatefulWidget {
  
  final int myData;

  const Page3({super.key, required this.myData});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:const Text("Result"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.myData}",style:const TextStyle(fontSize: 30),)
          ],
        ),
      ),
      
    );
  }
}