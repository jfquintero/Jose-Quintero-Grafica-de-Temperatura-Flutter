import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class Mediciones {
  final String fecha;
  final int temperaturas;
  final charts.Color barColor;

  Mediciones(
      {required this.fecha,
      required this.temperaturas,
      required this.barColor});
}
