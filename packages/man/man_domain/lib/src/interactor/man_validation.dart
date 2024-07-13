import 'package:uuid/validation.dart';

import '../models/man_model.dart';

final class ManValidator {
  const ManValidator();

  void isValidIdOrThrow(String id) {
    UuidValidation.isValidOrThrow(fromString: id);
  }

  void isValidManOrThrow(ManModel man) {
    UuidValidation.isValidOrThrow(fromString: man.id);

    if (man.fullname.isEmpty) {
      throw ArgumentError.value(
        man.fullname,
        'Man#fullname',
        'Man\'s fullname must not be empty',
      );
    }
  }
}
