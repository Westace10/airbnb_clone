import 'package:get_storage/get_storage.dart';

final box = GetStorage();

void setData(String key, dynamic value) => box.write(key, value);

int? getInt(String key) => box.read(key);

String? getString(String key) => box.read(key);

bool? getBool(String key) => box.read(key);

double? getDouble(String key) => box.read(key);

dynamic getData(String key) => box.read(key);

void clearData() async => box.erase();
