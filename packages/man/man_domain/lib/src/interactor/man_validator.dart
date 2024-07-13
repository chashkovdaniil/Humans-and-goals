import '../models/man.dart';

final class ManValidator {
  const ManValidator();

  void checkId(final String id) {
    if (id.isEmpty) {
      throw ArgumentError.value(
        id,
        'id',
        'id must not be empty',
      );
    }
  }

  void checkMan(final Man man) {
    checkId(man.id);
    if (man.fullname.isEmpty) {
      throw ArgumentError.value(
        man.fullname,
        'Man#fullname',
        'Man\'s fullname must not be empty',
      );
    }
  }

  void checkPageNumber(final int page) {
    if (page <= 0) {
      throw ArgumentError.value(page, 'page', 'Must be positive');
    }
  }

  void checkPageElementsCount(final int count) {
    if (count <= 0) {
      throw ArgumentError.value(count, 'page', 'Must be positive');
    }
  }
}
