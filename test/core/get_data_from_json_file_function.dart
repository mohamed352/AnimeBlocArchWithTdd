import 'dart:convert';
import 'dart:io';

/// Reads data from a JSON file and returns it as a dynamic object.
/// The file should be located in the test/features/<folderName>/data/json folder.
/// If the file does not exist, an exception is thrown.
/// The file is read and decoded as a JSON object.
/// The JSON object is then returned.
dynamic getDataFromJsonFile(String fileName, String folderName) {
  //? read json file
  //? read file that only under test and features and json folder
  final file = File('test/features/$folderName/data/json/$fileName.json');
  if (!file.existsSync()) {
    throw Exception('File not found');
  }

  final jsonString = file.readAsStringSync();

  //? decode json
  final jsonData = jsonDecode(jsonString);

  //? return json
  return jsonData;
}
