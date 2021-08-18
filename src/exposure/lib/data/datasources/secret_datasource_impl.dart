import 'dart:convert';

import 'package:exposure/data/datasources/i_secret_datasource.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISecretDataSource)
class SecretDataSourceImpl implements ISecretDataSource {
  @override
  Future<String> getApiKey() {
    return rootBundle.loadStructuredData("secret.json", (value) async {
      final Map<String, dynamic> map =
          json.decode(value) as Map<String, dynamic>;
      return map["api_key"] as String;
    });
  }
}
