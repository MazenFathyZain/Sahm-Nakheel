import 'package:sahm_nakheel/core/networking/api_service.dart';
import 'package:sahm_nakheel/features/home/data/model/landing.dart';

class LandingRepo {
  final ApiService _apiService;
  LandingRepo(this._apiService);

  Future<List<Landing>> getLandaingData() async {
    return await _apiService.getLandaingData();
  }
}
