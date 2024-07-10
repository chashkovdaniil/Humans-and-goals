import '../../men.dart';
import '../data/man_repository.dart';

/// В этом классе находится вся бизнес логика, обработка данных
/// Тут происходит взаимодействие с бд
class ManInteractor {
  final ManRepository _manRepository;

  ManInteractor({
    required ManRepository manRepository,
  }) : _manRepository = manRepository;

  Future<List<ManModel>> getMen(int count, int page) async {
    return await _manRepository.getMen(count, page);
  }

  Future<ManModel> getMan(String id) async {
    return await _manRepository.getMan(id);
  }

  Future<void> addMan(ManModel man) async {
    // Тут добавить различные проверки
    _manRepository.addMan(man);
  }

  Future<void> saveMan(ManModel man) async {
    // Тут добавить различные проверки
    _manRepository.saveMan(man);
  }

  Future<void> removeMan(ManModel man) async {
    // Тут добавить различные проверки
    _manRepository.removeMan(man);
  }
}
