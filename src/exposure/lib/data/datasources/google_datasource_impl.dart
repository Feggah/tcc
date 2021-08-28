import 'dart:typed_data';
import 'package:exposure/data/datasources/i_google_datasource.dart';
import 'package:exposure/data/datasources/i_secret_datasource.dart';
import 'package:exposure/data/models/location_search_item_model.dart';
import 'package:exposure/shared/exceptions.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IGoogleDataSource)
class GoogleDataSourceImpl implements IGoogleDataSource {
  final String baseUrl = "https://maps.googleapis.com/maps/api/place";
  final ISecretDataSource secretDataSource;
  final Dio client;

  GoogleDataSourceImpl({
    required this.client,
    required this.secretDataSource,
  });

  @override
  Future<Uint8List> getPhotoImage(String photoReference) async {
    try {
      final String key = await secretDataSource.getApiKey();
      final String path =
          "$baseUrl/photo?photoreference=$photoReference&key=$key&maxwidth=400";
      client.options = BaseOptions(responseType: ResponseType.bytes);
      final Response response = await client.get(
        path,
      );
      return response.data as Uint8List;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<List<LocationSearchItemModel>> searchLocation(String name) async {
    try {
      final String key = await secretDataSource.getApiKey();
      final String location = name.replaceAll(RegExp(' +'), '%20');
      final String path =
          "$baseUrl/autocomplete/json?input=$location&key=$key&language=pt-BR";
      // ignore: avoid_redundant_argument_values
      client.options = BaseOptions(responseType: ResponseType.json);
      final Response response = await client.get(path);

      final List<LocationSearchItemModel> list = [];
      for (final prediction in response.data["predictions"]) {
        final LocationSearchItemModel model = LocationSearchItemModel.fromJson(
          prediction as Map<String, dynamic>,
        );
        list.add(model);
      }
      return list;
    } catch (e) {
      throw ServerException();
    }
  }
}
