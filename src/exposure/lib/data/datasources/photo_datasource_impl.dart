import 'dart:typed_data';
import 'package:exposure/data/datasources/i_photo_datasource.dart';
import 'package:exposure/data/datasources/i_secret_datasource.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IPhotoDataSource)
class PhotoDataSourceImpl implements IPhotoDataSource {
  final String baseUrl = "https://maps.googleapis.com/maps/api/place";
  final ISecretDataSource secretDataSource;
  final Dio client;

  PhotoDataSourceImpl({
    required this.client,
    required this.secretDataSource,
  });

  @override
  Future<Uint8List> getPhotoImage(String photoReference) async {
    try {
      final String key = await secretDataSource.getApiKey();
      final String path =
          "$baseUrl/photo?photoreference=$photoReference&key=$key&maxwidth=400";
      final Response response = await client.get(path);
      return response.data as Uint8List;
    } catch (e) {
      throw ServerException();
    }
  }
}
