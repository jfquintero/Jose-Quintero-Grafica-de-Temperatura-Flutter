import 'package:flutter/material.dart';
import 'package:grafica_flutter/mediciones.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Datos extends StatelessWidget {
  final List<Mediciones> data;

  Datos({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Mediciones, String>> series = [
      charts.Series(
          id: "Fecha",
          data: data,
          domainFn: (Mediciones series, _) => series.fecha,
          measureFn: (Mediciones series, _) => series.temperaturas,
          colorFn: (Mediciones series, _) => series.barColor)
    ];

    return Container(
      height: 1000,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Temperaturas de los ultimos 7 dias",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
