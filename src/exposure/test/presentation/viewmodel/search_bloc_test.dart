import 'package:dartz/dartz.dart';
import 'package:exposure/domain/entities/location_search_item.dart';
import 'package:exposure/domain/usecases/search_location.dart';
import 'package:exposure/presentation/viewmodel/search_bloc.dart';
import 'package:exposure/shared/failures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSearchLocationUseCase extends Mock implements SearchLocation {}

void main() {
  late SearchBloc bloc;
  late MockSearchLocationUseCase mockSearchLocationUseCase;

  const tItem = LocationSearchItem(
    locationId: "locationId",
    title: "title",
    description: "description",
  );

  final List<LocationSearchItem> tList = [tItem];

  setUpAll(() {
    registerFallbackValue(const Params(name: "dummy"));
  });

  setUp(() {
    mockSearchLocationUseCase = MockSearchLocationUseCase();
    bloc = SearchBloc(searchLocation: mockSearchLocationUseCase);
  });

  test('init state should be Initial', () {
    expect(bloc.state, equals(const SearchState.initial()));
  });

  group("textChanged", () {
    test("should emit [loading, loadFailure] when an error occur", () async {
      when(() => mockSearchLocationUseCase(any())).thenAnswer(
        (_) async => const Left(Failure.internalError()),
      );
      const expected = [
        SearchState.loading(),
        SearchState.loadFailure(Failure.internalError()),
      ];
      expectLater(bloc.stream, emitsInOrder(expected));
      bloc.add(const SearchEvent.textChanged("text"));
    });

    test(
      'should emit [Loading, Loaded] when data is gotten successfully and it is greater than zero',
      () async {
        when(() => mockSearchLocationUseCase(any())).thenAnswer(
          (_) async => Right(tList),
        );
        final expected = [
          const SearchState.loading(),
          SearchState.loaded(tList)
        ];

        expectLater(bloc.stream, emitsInOrder(expected));

        bloc.add(const SearchEvent.textChanged("text"));
      },
    );

    test(
      'should emit [Loading, NotFound] when data is gotten successfully and it is equal to zero',
      () async {
        when(() => mockSearchLocationUseCase(any())).thenAnswer(
          (_) async => const Right([]),
        );
        final expected = [
          const SearchState.loading(),
          const SearchState.notFound(),
        ];

        expectLater(bloc.stream, emitsInOrder(expected));

        bloc.add(const SearchEvent.textChanged("text"));
      },
    );

    test(
      'should emit [Initial] when text field is empty',
      () async {
        final expected = [
          const SearchState.initial(),
        ];

        expectLater(bloc.stream, emitsInOrder(expected));

        bloc.add(const SearchEvent.textChanged(""));
      },
    );
  });
}
