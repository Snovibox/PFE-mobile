import '../model/daily_recipe/daily_recipe_model.dart';

abstract class DailyRecipeRepository {
  /// Throws [NetworkException]
  Future<List<DailyRecipeModel>> getDdailyRecipe();
  Future<DailyRecipeModel> getRecipeById(String id);
}

class DailyRecipeRepositoryImpl implements DailyRecipeRepository {

  late List<DailyRecipeModel> _coucou = [];

  @override
  Future<List<DailyRecipeModel>> getDdailyRecipe() async{
    _coucou = await FakeDataRecipe().getAll();
    return FakeDataRecipe().getAll();
  }

  @override
  Future<DailyRecipeModel> getRecipeById(String id) {
    return FakeDataRecipe().getOneById(id);
  }
}

class NetworkException implements Exception {}


//maka data avy any amin'i Caren ny atao ato rhefa vita ny azy
class FakeDataRecipe {
  getOne() async{
    await Future.delayed(const Duration(seconds: 2));
    DailyRecipeModel recipe = DailyRecipeModel(id: 1, image: 'https://picsum.photos/300?image=9',  date: DateTime.now());
    return Future.value(recipe);
  }

  getOneById(String id) {
    DailyRecipeModel recipe = DailyRecipeModel(id: 1, image: 'https://picsum.photos/300?image=9',  date: DateTime.now());
    return Future.value(recipe);
  }

  getAll() {
    DailyRecipeModel recipe1 = DailyRecipeModel(id: 1, image: 'https://picsum.photos/300?image=9',  date: DateTime.now());
    DailyRecipeModel recipe2 = DailyRecipeModel(id: 2, image: 'https://picsum.photos/250?image=10',  date: DateTime.now());
    DailyRecipeModel recipe3 = DailyRecipeModel(id: 3, image: 'https://picsum.photos/250?image=11',  date: DateTime.now());
    DailyRecipeModel recipe4 = DailyRecipeModel(id: 4, image: 'https://picsum.photos/250?image=12',  date: DateTime.now());
    DailyRecipeModel recipe5 = DailyRecipeModel(id: 5, image: 'https://picsum.photos/250?image=13',  date: DateTime.now());

    List<DailyRecipeModel> all = [recipe1, recipe2, recipe3, recipe4, recipe5];

    return Future.value(all);
  }
}