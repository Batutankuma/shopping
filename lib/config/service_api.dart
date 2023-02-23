import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProviderServices extends GetConnect {
  //url de base
  final String urlbase = "fakestoreapi.com";
  final client = http.Client();

  //create
  Future<Response> create(url, data) async {
    try {
      var response = await post("$urlbase/$url", data);
      if (response.hasError) throw Exception(response.body['message']);
      return Future.value(response.body['message']);
    } catch (e) {
      return Future.error(e);
    }
  }

  //find
  find(url) async {
    try {
      var response = await client.get(Uri.https(urlbase,'/$url'));
      if (response.statusCode == 400 || response.statusCode == 401) throw Exception(response.body);
      return response.body.toString();
    } catch (e) {
      return Future.error(e);
    }
    /**
     * try {
      // ignore: unused_local_variable
      var response = await get("$urlbase/$url");
      //if code api 400 and 401 send message Error
      if (response.statusCode == 400 || response.statusCode == 401) throw Exception(response.body['message']);
      //response data of result API
      return response.body.toString();
    } catch (e) {
      return Future.error(e);
    }
     */
  }

  //find by
  Future<Response> findBy(url, id) async {
    try {
      var response = await get("$urlbase/$url/$id");
      if (response.hasError) throw Exception(response.body);
      return Future.value(response.body);
    } catch (e) {
      return Future.error(e);
    }
  }

  //update
  updateBy(url, id, data) async {
    try {
      var response = await patch("$urlbase/$url/$id", data);
      if (response.hasError) throw Exception(response.body);
      return Future.value(response.body);
    } catch (e) {
      return Future.error(e);
    }
  }

  //delete
  Future<Response> deleteBy(url, id) async {
    try {
      var response = await delete("$urlbase/$url/$id");
      if (response.hasError) throw Exception(response.body);
      return Future.value(response.body);
    } catch (e) {
      return Future.error(e);
    }
  }
}