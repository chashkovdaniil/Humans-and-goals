import 'package:freezed_annotation/freezed_annotation.dart';

import '../../man_domain.dart';
import '../models/friends.dart';
import 'man_validator.dart';

abstract interface class ManInteractor {
  /// Получает список людей.
  ///
  /// [count] - Количество людей
  ///
  /// [page] - Номер страницы
  @useResult
  Future<List<Man>> getMen(final int count, final int page);

  /// Получает человека по [id]
  @useResult
  Future<Man> getMan(final String id);

  /// Добавляет человека
  Future<void> addMan(final Man man);

  /// Сохраняет человека
  Future<void> saveMan(final Man man);

  /// Удаляет человека
  Future<void> removeMan(final Man man);

  /// Позволяет получить друзей указанного человека
  Future<Friends> getFriends({
    required final Man man,
    required final int page,
    required final int count,
  });
}

/// В этом классе находится вся бизнес логика, обработка данных.
/// Тут происходит взаимодействие с бд.
///
/// Весь контракт сохранения данных и прочее находится за пределами бизнес-логики.
final class ManInteractorImpl implements ManInteractor {
  /// Репозиторий для получения данных о пользователях
  final ManRepository _repository;
  final ManValidator _validator;

  const ManInteractorImpl({
    required final ManRepository repository,
    final ManValidator validator = const ManValidator(),
  })  : _repository = repository,
        _validator = validator;

  @useResult
  Future<List<Man>> getMen(final int count, final int page) async {
    _validator.checkPageNumber(page);
    _validator.checkPageElementsCount(count);

    return await _repository.getMen(count, page);
  }

  @useResult
  Future<Man> getMan(final String id) async {
    _validator.checkId(id);

    return await _repository.getMan(id);
  }

  Future<void> addMan(final Man man) async {
    _validator.checkMan(man);

    _repository.addMan(man);
  }

  Future<void> saveMan(final Man man) async {
    _validator.checkMan(man);

    _repository.saveMan(man);
  }

  Future<void> removeMan(final Man man) async {
    _validator.checkMan(man);
    _repository.removeMan(man);
  }

  @useResult
  Future<Friends> getFriends({
    required final Man man,
    required final int page,
    required final int count,
  }) {
    _validator.checkMan(man);
    return _repository.getFriends(man);
  }
}
