import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FileService {
  Future<String> getJson() async {
    final response = await rootBundle.loadString('lib/assets/files/team.json');
    return response;
  }
}
