import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/domain/usecases/list_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationRepository extends Mock implements ILocationRepository {}

void main() {
  late MockLocationRepository mockLocationRepository;
  late ListLocation usecase;
  final tLocation = Location(
    address: "test",
    arrival: 1,
    date: "31 de dezembro",
    departure: 2,
    name: "test",
    photoReference: "test",
  );

  final List<Location> tList = [tLocation];

  setUp(() {
    mockLocationRepository = MockLocationRepository();
    usecase = ListLocation(mockLocationRepository);
  });

  test(
    'should list Locations from the repository',
    () async {
      // arrange
      when(() => mockLocationRepository.listLocation())
          .thenAnswer((_) async => Right(tList));
      // act
      final result = await usecase();
      // assert
      expect(result, Right(tList));
      verify(() => mockLocationRepository.listLocation());
      verifyNoMoreInteractions(mockLocationRepository);
    },
  );
}
