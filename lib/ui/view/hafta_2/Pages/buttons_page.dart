import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {

  bool switchControl = false;
  bool? rememberMe = false;
  int? radioValue = 0;
  var toggleStatus = [false,false,false];
  int? selectedToggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Buttons"),
      ),
      body:SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(AppSize.md),
                            child: Text("Switch",style: TextStyle(
                              fontSize: AppSize.md,
                              fontWeight: FontWeight.w700
                            ),),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:const EdgeInsets.all(AppSize.md),
                            child: Text(switchControl ? "Open":"Close",
                            style: TextStyle(
                              fontWeight: toggleStatus[0] ? FontWeight.w700 : FontWeight.normal,
                              fontStyle: toggleStatus[1] ? FontStyle.italic : FontStyle.normal,
                              decoration: toggleStatus[2] ? TextDecoration.underline : TextDecoration.none,
                              ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(AppSize.md),
                            child: Switch(
                              activeTrackColor: Colors.green,
                              value: switchControl, 
                              onChanged: (data){
                                setState(() {
                                  switchControl = data;
                                });
                              }
                              ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding:const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(AppSize.md),
                            child: Text("CheckBox",style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: AppSize.md
                            ),),
                          ),
                          
                        ],
                      ),
                      Row(
                        children: [
                          IntrinsicWidth(
                            child: CheckboxListTile(
                              activeColor: Colors.green,
                              title: Text("remember me",
                              style: TextStyle(
                                fontWeight: toggleStatus[0] ? FontWeight.w700 : FontWeight.normal,
                                fontStyle: toggleStatus[1] ? FontStyle.italic : FontStyle.normal,
                                decoration: toggleStatus[2] ? TextDecoration.underline : TextDecoration.none,
                                ),
                                ),
                              value: rememberMe,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? data){
                                setState(() {
                                  rememberMe = data;
                                });
                              }
                              ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(AppSize.md),
                            child: Text("Radio",
                            style: TextStyle(
                              fontSize: AppSize.md,
                              fontWeight: FontWeight.w700
                            ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IntrinsicWidth(
                            child: RadioListTile(
                              title: Text("Pizza",
                              style: TextStyle(
                                fontWeight: toggleStatus[0] ? FontWeight.w700 : FontWeight.normal,
                                fontStyle: toggleStatus[1] ? FontStyle.italic : FontStyle.normal,
                                decoration: toggleStatus[2] ? TextDecoration.underline : TextDecoration.none,
                                ),
                                ),
                              value: 1,
                              groupValue: radioValue,
                              onChanged: (int? data){
                                setState(() {
                                  radioValue = data;
                                });
                              }
                              ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IntrinsicWidth(
                            child: RadioListTile(
                              title:Text("Hamburger",
                              style: TextStyle(
                                fontWeight: toggleStatus[0] ? FontWeight.w700 : FontWeight.normal,
                                fontStyle: toggleStatus[1] ? FontStyle.italic : FontStyle.normal,
                                decoration: toggleStatus[2] ? TextDecoration.underline : TextDecoration.none,
                                ),
                                ),
                              value: 2,
                              groupValue: radioValue,
                              onChanged: (int? data){
                                setState(() {
                                  radioValue = data;
                                });
                              }
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(AppSize.md),
                            child: Text("Toggle Buttons",
                            style: TextStyle(
                              fontSize: AppSize.md,
                              fontWeight: FontWeight.w700
                            ),),
                          ),
                        ],
                      ),
                      IntrinsicWidth(
                        child: Padding(
                          padding: const EdgeInsets.all(AppSize.md),
                          child: ToggleButtons(
                            isSelected: toggleStatus,
                            onPressed: (int ?data){
                              setState(() {
                                selectedToggleIndex = data;
                                toggleStatus[data!] = !toggleStatus[data];
                              });
                            },
                            color: Colors.black,
                            selectedColor: Colors.green,
                            children:const [
                              Icon(Icons.format_bold),
                              Icon(Icons.format_italic),
                              Icon(Icons.format_underline),
                            ],
                            ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

