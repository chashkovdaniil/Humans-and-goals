import '../men.dart';

class ManRepositoryImpl implements ManRepository {
  final list = <ManModel>[
    const ManModel(
      id: '0',
      fullname: 'Empty',
      description: 'as',
      goals: [],
    )
  ];

  @override
  Future<void> addMan(final ManModel man) async {
    list.add(man);
  }

  @override
  Future<void> removeMan(final ManModel man) async {
    list.removeWhere((final m) => m.id == man.id);
  }

  @override
  Future<void> saveMan(final ManModel man) async {
    final index = list.indexWhere((final m) => m.id == man.id);
    list.replaceRange(index, index + 1, [man]);
  }

  @override
  Future<ManModel> getMan(final String id) async {
    return list.firstWhere((final m) => m.id == id);
  }

  @override
  Future<List<ManModel>> getMen(final int count, final int page) async {
    return list;
  }
}
