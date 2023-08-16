import 'package:shared_preferences/shared_preferences.dart';

class FavImoveisService {
  final List<int> _favBuildings = [];
  bool _isStarted = false;

  Future<void> loadData() async {
    if (!_isStarted) {
      _isStarted = true;
      await _loadFavBuildings();
    }
  }

  Future<void> clearData() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.clear();
  }

  Future<void> _loadFavBuildings() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    List<String> strFavBuidings = _prefs.getStringList('favBuildings') ?? [];

    strFavBuidings.forEach((element) {
      _favBuildings.add(int.parse(element));
    });
  }

  Future<void> _saveFavBuildings() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    List<String> strFavBuildings =
        _favBuildings.map((e) => e.toString()).toList();

    await _prefs.setStringList('favBuildings', strFavBuildings);
  }

  void _addBuildingToFavorites(int buildingId) {
    _favBuildings.add(buildingId);
    _saveFavBuildings();
  }

  void _removeBuildingOfFavorites(int buildingId) {
    _favBuildings.remove(buildingId);
    _saveFavBuildings();
  }

  bool isFavorite(int buildingId) {
    return _favBuildings.contains(buildingId);
  }

  void toggleFavorite(int buildingId) {
    if (!isFavorite(buildingId)) {
      _addBuildingToFavorites(buildingId);
    } else {
      _removeBuildingOfFavorites(buildingId);
    }
  }
}
