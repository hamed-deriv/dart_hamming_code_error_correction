import 'package:dart_hamming_code_error_correction/dart_hamming_code_error_correction.dart';

void main(List<String> arguments) {
  final String sampleData = '10001010011101100';
  final String reduceBinary = reduce(getBits(sampleData));

  print(reduceBinary);

  final String result = getCorrectData(sampleData, reduceBinary);
  final String reduceBinary2 = reduce(getBits(result));

  print(reduceBinary2);
}
