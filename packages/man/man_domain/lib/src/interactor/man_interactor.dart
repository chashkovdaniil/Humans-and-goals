import 'package:freezed_annotation/freezed_annotation.dart';

import '../../man_domain.dart';
import 'man_validator.dart';

/// В этом классе находится вся бизнес логика, обработка данных
/// Тут происходит взаимодействие с бд.
final class ManInteractor {
  /// Репозиторий для получения данных о пользователях
  final ManRepository _repository;
  final ManValidator _validator;

  const ManInteractor({
    required final ManRepository repository,
    final ManValidator validator = const ManValidator(),
  })  : _repository = repository,
        _validator = validator;

  /// Получает список людей.
  ///
  /// [count] - Количество людей
  ///
  /// [page] - Номер страницы
  @useResult
  Future<List<Man>> getMen(final int count, final int page) async {
    _validator.checkPageNumber(page);
    _validator.checkPageElementsCount(count);

    return await _repository.getMen(count, page);
  }

  /// Получает человека по [id]
  @useResult
  Future<Man> getMan(final String id) async {
    _validator.checkId(id);

    return await _repository.getMan(id);
  }

  /// Добавляет человека
  Future<void> addMan(
    final Man man,
  ) async {
    _validator.checkMan(man);

    _repository.addMan(man);
  }

  /// Сохраняет человека
  Future<void> saveMan(final Man man) async {
    _validator.checkMan(man);

    _repository.saveMan(man);
  }

  /// Удаляет человека
  Future<void> removeMan(final Man man) async {
    _validator.checkMan(man);
    _repository.removeMan(man);
  }
}
