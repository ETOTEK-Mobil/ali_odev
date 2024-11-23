import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'package:odev/ui/view/hafta_1/pages/column_row_stack_page.dart';
import 'package:odev/ui/view/hafta_1/pages/state_managment_page.dart';

class Hafta1View extends StatelessWidget {
  const Hafta1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 211, 211),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //First Button
            Padding(
              padding: const EdgeInsets.all(AppSize.md),
              child: SizedBox(
                width: 200,
                height: AppSize.buttonHeight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const Page1()));
                  },
                  child:const Text("Columb, Row and Stack"),
                  ),
              ),
            ),
            //Second Button
            Padding(
              padding: const EdgeInsets.all(AppSize.md),
              child: SizedBox(
                width: 200,
                height: AppSize.buttonHeight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const Page2()));
                  },
                  child:const Text("State Managment"),
                  ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
