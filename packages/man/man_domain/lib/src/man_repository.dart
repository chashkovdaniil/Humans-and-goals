import 'models/friends.dart';
import 'models/man.dart';

abstract class ManRepository {
  /// Позволяет получить человека по идентификатору.
  Future<Man> getMan(final String id);

  /// Добавляет человека.
  Future<void> addMan(final Man man);

  /// Сохраняет человека.
  Future<void> saveMan(final Man man);

  /// Удаляет человека.
  Future<void> removeMan(final Man man);

  /// Позволяет получить список людей.
  ///
  /// [count] - количество людей на странице от 0 до N.
  /// [page] - Номер страницы от 0 до N.
  Future<List<Man>> getMen(final int count, final int page);

  /// Позволяет получить друзей указанного человека
  Future<Friends> getFriends(final Man man);
}
