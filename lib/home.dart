import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grafica_flutter/datos.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:grafica_flutter/mediciones.dart';

class HomePage extends StatelessWidget {
  final List<Mediciones> data = [
    Mediciones(
      fecha: "20-12-2021",
      temperaturas: 30,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Mediciones(
      fecha: "20-12-2021",
      temperaturas: 20,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Mediciones(
      fecha: "18-12-2021",
      temperaturas: 28,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Mediciones(
      fecha: "17-12-2021",
      temperaturas: 25,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Mediciones(
      fecha: "16-12-2021",
      temperaturas: 29,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Mediciones(
      fecha: "15-12-2021",
      temperaturas: 27,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Mediciones(
      fecha: "14-12-2021",
      temperaturas: 24,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("TEMPERATURAS"),
      ),
      body: Center(
          child: Datos(
        data: data,
      )),
    );
  }
}
