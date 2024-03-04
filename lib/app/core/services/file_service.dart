import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

// This class would be simulating the API that returns the json. If necessary,
// more than 1 implementation could be made to use the local file or ask
// an API. This is ideal to be able to use Mock Data when developing.
@LazySingleton()
class FileService {
  Future<String> getJson() async {
    final response = await rootBundle.loadString('lib/assets/files/team.json');
    return response;
  }
}
