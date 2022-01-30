
import 'package:flutter/cupertino.dart';

double getContextPercentaje(BuildContext context, double percentaje) {
  return MediaQuery.of(context).size.width * percentaje;
}