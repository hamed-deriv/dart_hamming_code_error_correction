import 'package:dart_hamming_code_error_correction/dart_hamming_code_error_correction.dart';
import 'package:test/test.dart';

void main() {
  test('getNonZeroIndices', () {
    expect(getNonZeroIndices('0000'), equals(<int>[]));
    expect(getNonZeroIndices('1001'), equals(<int>[0, 3]));
    expect(getNonZeroIndices('1101'), equals(<int>[0, 1, 3]));
  });

  test('reduce', () {
    expect(reduce(<int>[0, 1, 0, 1]), equals('0'));
    expect(reduce(<int>[1, 1, 1, 0]), equals('1'));
    expect(reduce(<int>[0, 1, 0, 0]), equals('1'));
  });

  test('getCorrectData', () {
    expect(
      getCorrectedData('10001010011101100', '1001'),
      equals('11001010001101100'),
    );
  });
}
