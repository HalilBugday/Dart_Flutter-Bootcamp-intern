import 'dart:convert';
import 'dart:io';
import 'package:flutter_storage/model/my_models.dart';
import 'package:flutter_storage/services/local_storage_service.dart';
import 'package:path_provider/path_provider.dart';

class FileStorageService implements LocalStorageService {
  _getFilePath() async {
    var filePath = await getApplicationDocumentsDirectory();
    //debugPrint(filePath.path);
    return filePath.path;
  }

  FileStorageService() {
    _createFile();
  }

  Future<File> _createFile() async {
    var file = File(await _getFilePath() + '/info.json');
    return file;
  }

  @override
  Future<void> verileriKaydet(UserInformation userInformation) async {
    var file = await _createFile();
    await file.writeAsString(jsonEncode(userInformation));
  }

  @override
  Future<UserInformation> verileriOku() async {
    try {
      var file = await _createFile();
      var dosyaStringIcerik = await file.readAsString();

      Map<String, dynamic> json = jsonDecode(dosyaStringIcerik);

      return UserInformation.fromJson(json);
    } catch (e) {
      //debugPrint(e.toString());
    }
    return UserInformation('', Cinsiyet.KADIN, [], false);
  }
}
