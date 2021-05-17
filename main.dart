import 'package:csv/csv.dart';
import 'dart:io';
import 'dart:async';

int main(List<String> args) {
  File reader = File("Passengers.csv");
  List<String> lines = [];
  reader.readAsLines().then((value) {
    lines = value;
    lines.forEach((element) {
      List<List<dynamic>> rowsAsListOfValues =
          const CsvToListConverter().convert(element);

      print(rowsAsListOfValues);
    });
  });

  return 0;
}
