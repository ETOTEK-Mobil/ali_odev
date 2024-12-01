import 'package:flutter/material.dart';
import 'package:odev/core/constants/app_sizes.dart';
import 'package:odev/ui/view/hafta_2/Pages/buttons_page.dart';
import 'package:odev/ui/view/hafta_2/Pages/images_page.dart';
import 'package:odev/ui/view/hafta_2/Pages/picker_page.dart';
import 'package:odev/ui/view/hafta_2/Pages/progress_slider_bar_page.dart';
import 'package:odev/ui/view/hafta_2/Pages/text_text_filed_page.dart';
import 'package:odev/ui/view/hafta_2/Pages/webview_page.dart';
import 'package:odev/ui/widgets/buttons/common_button.dart';

class Hafta2View extends StatelessWidget {
  Hafta2View({super.key});

  final _pagaNames = [
    "Text & TextField",
    "Buttons",
    "Progress Bar & Slider",
    "WebView",
    "Images",
    "Dropdown Button & Time Date Picker"
  ];

  final  _pages =const [
  TextTextFieldPage(),
  ButtonsPage(),
  ProgressSliderBarPage(),
  WebviewPage(),
  ImagesPage(),
  PickerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView.separated(
        itemBuilder: (context, index){
          return CommonButton(page: _pages[index], pageName: _pagaNames[index]);
        }, 
        separatorBuilder: (context, index){
          return const SizedBox(
            height: AppSize.md,
          );
        }, 
        itemCount: _pagaNames.length
        ),
    );
  }
}
