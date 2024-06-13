import 'package:flutter/material.dart';

//import 'kansuu.dart';

class PageBModel extends ChangeNotifier {
  int seinenInt;
  int seigatuInt;
  int seinitiInt;

  PageBModel({
    Key? key,
    required this.seinenInt,
    required this.seigatuInt,
    required this.seinitiInt,
  });

}