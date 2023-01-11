import 'dart:math' as math;

List<int> getNonZeroIndices(String data) => data.codeUnits
    .asMap()
    .entries
    .where((MapEntry<int, int> item) => item.value == 49)
    .map((MapEntry<int, int> item) => item.key)
    .toList();

String reduce(List<int> data) =>
    data.reduce((int value, int element) => value ^ element).toRadixString(2);

String getCorrectedData(String data, String correction) {
  final List<int> dataUnits = data.codeUnits.toList();

  for (int index = 0; index < correction.length; index++) {
    if (correction.codeUnitAt(index) == 49) {
      int currectionIndex = math.pow(index, 2).toInt();

      currectionIndex = currectionIndex == 0 ? 1 : currectionIndex;
      dataUnits[currectionIndex] = dataUnits[currectionIndex] == 49 ? 48 : 49;
    }
  }

  return String.fromCharCodes(dataUnits);
}
