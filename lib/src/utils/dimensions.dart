import 'package:flutter/material.dart';

class Dimensions {
  double getHeight(BuildContext context,height)=> (MediaQuery.of(context).size.height /100)*height;
  double getWidth(BuildContext context,width)=> (MediaQuery.of(context).size.width /100)*width;
}
