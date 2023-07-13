class UserManager {
  CacheManager _cacheManager = CacheManager();
  ApiManager _apiManager = ApiManager();

  void getData() {
    if(_cacheManager.getDataFromCache().isEmpty){
      _apiManager.getDataFromApi();
      _apiManager.saveDataToCache();
    } else {
      _cacheManager.getDataFromCache();
    }
  }
}

class CacheManager {
  void getDataFromCache() {}
}

class ApiManager {
  void getDataFromApi() {}
  void saveDataToCache() {}
}