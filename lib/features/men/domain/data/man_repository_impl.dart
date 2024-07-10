import 'package:goals_tracker/features/men/domain/data/man_repository.dart';
import 'package:goals_tracker/features/men/domain/models/man_model.dart';

class ManRepositoryImpl implements ManRepository {
  final list = <ManModel>[ManModel(id: '0')];

  @override
  Future<void> addMan(ManModel man) async {
    list.add(man);
  }

  @override
  Future<void> removeMan(ManModel man) async {
    list.removeWhere((m) => m.id == man.id);
  }

  @override
  Future<void> saveMan(ManModel man) async {
    final index = list.indexWhere((m) => m.id == man.id);
    list.replaceRange(index, index + 1, [man]);
  }

  @override
  Future<ManModel> getMan(String id) async {
    return list.firstWhere((m) => m.id == id);
  }

  @override
  Future<List<ManModel>> getMen(int count, int page) async {
    return list;
  }
}
