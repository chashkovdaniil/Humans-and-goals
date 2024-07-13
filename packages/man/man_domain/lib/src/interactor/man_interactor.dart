import '../../man_domain.dart';
import 'man_validation.dart';

/// В этом классе находится вся бизнес логика, обработка данных
/// Тут происходит взаимодействие с бд.
final class ManInteractor {
  /// Репозиторий для получения данных о пользователях
  final ManRepository _repository;
  final ManValidator _validator;

  const ManInteractor({
    required ManRepository repository,
    ManValidator validator = const ManValidator(),
  })  : _repository = repository,
        _validator = validator;

  /// Получает список людей.
  ///
  /// [count] - Количество людей
  ///
  /// [page] - Номер страницы
  Future<List<ManModel>> getMen(final int count, final int page) async {
    if (count <= 0) {
      throw ArgumentError.value(page, 'count', 'Must be positive');
    }
    if (page <= 0) {
      throw ArgumentError.value(page, 'page', 'Must be positive');
    }

    return await _repository.getMen(count, page);
  }

  /// Получает человека по [id]
  Future<ManModel> getMan(final String id) async {
    _validator.isValidIdOrThrow(id);

    return await _repository.getMan(id);
  }

  /// Добавляет человека
  Future<void> addMan(final ManModel man) async {
    _validator.isValidManOrThrow(man);

    _repository.addMan(man);
  }

  /// Сохраняет человека
  Future<void> saveMan(final ManModel man) async {
    _validator.isValidManOrThrow(man);

    _repository.saveMan(man);
  }

  /// Удаляет человека
  Future<void> removeMan(final ManModel man) async {
    _repository.removeMan(man);
  }
}
