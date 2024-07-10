import 'package:goals_tracker/features/men/domain/models/man_model.dart';

abstract interface class ManRepository {
  /// Позволяет получить человека по идентификатору
  Future<ManModel> getMan(String id);

  /// Добавляет человека
  Future<void> addMan(ManModel man);

  /// Сохраняет человека
  Future<void> saveMan(ManModel man);

  /// Удаляет человека
  Future<void> removeMan(ManModel man);

  /// Позволяет получить список людей
  Future<List<ManModel>> getMen(int count, int page);
}
