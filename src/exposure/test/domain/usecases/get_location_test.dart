import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/domain/usecases/get_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationRepository extends Mock implements ILocationRepository {}

void main() {
  late MockLocationRepository mockLocationRepository;
  late GetLocation usecase;
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
    usecase = GetLocation(mockLocationRepository);
  });

  test(
    'should get Location from the repository',
    () async {
      // arrange
      when(() => mockLocationRepository.getLocation(any()))
          .thenAnswer((_) async => Right(tLocation));
      // act
      final result = await usecase(const Params(id: "teste"));
      // assert
      expect(result, Right(tLocation));
      verify(() => mockLocationRepository.getLocation("teste"));
      verifyNoMoreInteractions(mockLocationRepository);
    },
  );
}
