import 'package:flutter/services.dart';

class FileService {
  Future<String> getJson() async {
    final response = await rootBundle.loadString('lib/assets/files/team.json');
    return response;
  }
}
