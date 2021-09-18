import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:exposure/domain/repositories/i_location_repository.dart';
import 'package:exposure/domain/usecases/search_location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocationRepository extends Mock implements ILocationRepository {}

void main() {
  late MockLocationRepository mockLocationRepository;
  late SearchLocation usecase;
  const tItem = LocationSearchItem(
    locationId: "locationId",
    title: "title",
    description: "description",
  );

  final List<LocationSearchItem> tList = [tItem];

  setUp(() {
    mockLocationRepository = MockLocationRepository();
    usecase = SearchLocation(mockLocationRepository);
  });

  test(
    'should list LocationSearchItem from the repository',
    () async {
      // arrange
      when(() => mockLocationRepository.searchLocation(any()))
          .thenAnswer((_) async => Right(tList));
      // act
      final result = await usecase(const Params(name: "test"));
      // assert
      expect(result, Right(tList));
      verify(() => mockLocationRepository.searchLocation("test"));
      verifyNoMoreInteractions(mockLocationRepository);
    },
  );
}
