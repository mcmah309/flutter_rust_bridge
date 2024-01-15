import 'package:frb_example_pure_dart/src/rust/api/simple.dart';
import 'package:frb_example_pure_dart/src/rust/frb_generated.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Surely, you can use Mockito or whatever other mocking packages
class MockRustLibApi extends Mock implements RustLibApi {}

Future<void> main() async {
  final mockApi = MockRustLibApi();
  when(() => mockApi.initApp()).thenAnswer((_) async => null);
  when(() => mockApi.myInitOne()).thenAnswer((_) async => null);
  when(() => mockApi.myInitTwo()).thenAnswer((_) async => null);

  await RustLib.init(api: mockApi);

  test('can mock Rust calls', () async {
    when(() => mockApi.simpleAdderTwinNormal(a: 1, b: 2))
        .thenAnswer((_) async => 123456789);
    final actualResult = await simpleAdderTwinNormal(a: 1, b: 2);
    expect(actualResult, isNot(3));
    expect(actualResult, equals(123456789));
    verify(() => mockApi.simpleAdderTwinNormal(a: 1, b: 2)).called(1);
  });
}
