import '../men.dart';

class ManRepositoryImpl implements ManRepository {
  final list = <Man>[
    const Man(
      id: '0',
      fullname: 'Empty',
      description: 'as',
      goals: [],
      link: '',
      phone: '',
    ),
  ];

  @override
  Future<void> addMan(final Man man) async {
    list.add(man);
  }

  @override
  Future<void> removeMan(final Man man) async {
    list.removeWhere((final m) => m.id == man.id);
  }

  @override
  Future<void> saveMan(final Man man) async {
    final index = list.indexWhere((final m) => m.id == man.id);
    list.replaceRange(index, index + 1, [man]);
  }

  @override
  Future<Man> getMan(final String id) async {
    return list.firstWhere((final m) => m.id == id);
  }

  @override
  Future<List<Man>> getMen(final int count, final int page) async {
    return list;
  }
}
