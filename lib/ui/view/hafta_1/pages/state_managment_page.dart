import 'package:flutter/material.dart';
import 'package:odev/ui/view/hafta_1/pages/result_page.dart';

//aktif veri değişiklği olacağı için sayfa StateFull

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("State Manegment"),
      ),
      body: Column(
        children: [

          //kaç kere tıklandı Texti 

          const Spacer(flex: 30,),
          Column(
            children: [
              //-----------------------------------------Butona her tıkladığında textin
              //-----------------------------------------o kadar büyümesini sağlar
              Text("$counter",style: TextStyle(fontSize: counter.toDouble() + 40),)
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // artı butonu

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          counter += 1;
                        });
                      },
                      child:const Text("+"),
                    ),
                  ),
                ),
              ),

              // eksi butonu

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          counter = counter -= 1;
                        });
                      },
                      child: const Text("-"),
                    ),
                  ),
                ),
              )
            ],
          ),

          // sonuç sayfası butonu

          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Page3(myData: counter)));
                    },
                    child:const Text("Result",style: TextStyle(fontSize: 20.0),),
                  ),
                ),
              )
            ],
          ),

          const Spacer(flex: 70,),
        ],
      ),
    );
  }
}