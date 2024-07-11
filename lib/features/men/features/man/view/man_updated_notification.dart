import 'package:flutter/widgets.dart';

/// Нотификация того, что обновились данные о человеке
final class ManUpdatedNotification extends Notification {
  /// Идентификатор человека, с которым произошли изменения
  final String id;

  const ManUpdatedNotification({required this.id});
}
