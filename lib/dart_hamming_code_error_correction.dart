import 'dart:math' as math;

List<int> getBits(String data) {
  final List<int> nonZeroIndices = <int>[];

  for (int index = 0; index < data.length; index++) {
    if (String.fromCharCode(data.codeUnitAt(index)) == '1') {
      nonZeroIndices.add(index);
    }
  }

  return nonZeroIndices;
}

String reduce(List<int> data) =>
    data.reduce((value, element) => value ^ element).toRadixString(2);

String getCorrectData(String data, String correction) {
  final List<int> dataUnits = data.codeUnits.toList();

  for (var index = 0; index < correction.length; index++) {
    if (String.fromCharCode(dataUnits[index]) == '1') {
      final int currectionIndex = math.pow(index, 2).toInt();

      dataUnits[currectionIndex] = dataUnits[currectionIndex] == 49 ? 48 : 49;
    }
  }

  return String.fromCharCodes(dataUnits);
}
