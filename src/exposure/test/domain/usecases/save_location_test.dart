import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/domain/usecases/save_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationRepository extends Mock implements ILocationRepository {}

void main() {
  late MockLocationRepository mockLocationRepository;
  late SaveLocation usecase;
  final tLocation = Location(
    address: "test",
    date: "31 de dezembro",
    name: "test",
    photoReference: "test",
    latitude: 0,
    longitude: 0,
  );

  setUp(() {
    mockLocationRepository = MockLocationRepository();
    usecase = SaveLocation(mockLocationRepository);
  });

  setUpAll(() {
    registerFallbackValue(tLocation);
  });

  test(
    'should save Location',
    () async {
      when(() => mockLocationRepository.saveLocation(any()))
          .thenAnswer((_) async => const Right(unit));

      final result = await usecase(Params(location: tLocation));

      expect(result, const Right(unit));
      verify(() => mockLocationRepository.saveLocation(tLocation));
      verifyNoMoreInteractions(mockLocationRepository);
    },
  );
}
