import '../models/man_model.dart';
import 'man_repository_impl.dart';

abstract interface class ManRepository {
  /// Создает экземпляр репозитория
  factory ManRepository() => ManRepositoryImpl();

  /// Позволяет получить человека по идентификатору
  Future<ManModel> getMan(final String id);

  /// Добавляет человека
  Future<void> addMan(final ManModel man);

  /// Сохраняет человека
  Future<void> saveMan(final ManModel man);

  /// Удаляет человека
  Future<void> removeMan(final ManModel man);

  /// Позволяет получить список людей
  Future<List<ManModel>> getMen(final int count, final int page);
}
