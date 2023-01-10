import 'package:dart_hamming_code_error_correction/dart_hamming_code_error_correction.dart';

void main(List<String> arguments) {
  const String sampleData = '10001010011101100';
  final String reduceBinarySampleData = reduce(getNonZeroIndices(sampleData));

  print(sampleData);
  print(reduceBinarySampleData);

  final String result = getCorrectData(sampleData, reduceBinarySampleData);
  final String reduceBinaryResult = reduce(getNonZeroIndices(result));

  print(result);
  print(reduceBinaryResult);
}
