import 'package:man_domain/man_domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'mock_man_repository.dart';

const assertionError = TypeMatcher<AssertionError>();

const empty = ManModel(id: '', fullname: '', description: '', goals: []);
final emptyWithValidId = ManModel(
  id: Uuid().v4(),
  fullname: '',
  description: '',
  goals: [],
);
final validMan = ManModel(
  id: Uuid().v4(),
  fullname: 'fullname',
  description: '',
  goals: [],
);

void main() {
  group('Errors, exceptions, asserts', () {
    MockManRepository manRepository = MockManRepository();
    ManInteractor manInteractor = ManInteractor(repository: (manRepository));

    setUp(() {});

    tearDown(() {
      reset(manRepository);
    });

    test('Invalid id', () async {
      await expectLater(
        manInteractor.getMan(empty.id),
        throwsA(isA<FormatException>()),
      );
      await expectLater(
        manInteractor.addMan(empty),
        throwsA(isA<FormatException>()),
      );
      await expectLater(
        manInteractor.saveMan(empty),
        throwsA(isA<FormatException>()),
      );
      await expectLater(
        manInteractor.addMan(empty),
        throwsA(isA<FormatException>()),
      );
    });

    test('Invalid fullname, valid id', () async {
      when(() => manRepository.getMan(emptyWithValidId.id)).thenAnswer(
        (_) => Future.value(emptyWithValidId),
      );
      await expectLater(
        manInteractor.getMan(emptyWithValidId.id),
        completes,
      );
      await expectLater(
        manInteractor.addMan(emptyWithValidId),
        throwsA(isA<ArgumentError>()),
      );
      await expectLater(
        manInteractor.saveMan(emptyWithValidId),
        throwsA(isA<ArgumentError>()),
      );
      await expectLater(
        manInteractor.addMan(emptyWithValidId),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('Valid id, valid fullname', () async {
      when(() => manRepository.getMan(validMan.id)).thenAnswer(
        (_) => Future.value(validMan),
      );
      when(() => manRepository.addMan(validMan)).thenAnswer(
        (_) => Future.value(null),
      );
      when(() => manRepository.saveMan(validMan)).thenAnswer(
        (_) => Future.value(null),
      );
      when(() => manRepository.removeMan(validMan)).thenAnswer(
        (_) => Future.value(null),
      );
      await expectLater(manInteractor.getMan(validMan.id), completes);
      await expectLater(manInteractor.addMan(validMan), completes);
      await expectLater(manInteractor.saveMan(validMan), completes);
      await expectLater(manInteractor.addMan(validMan), completes);
    });
  });
}
