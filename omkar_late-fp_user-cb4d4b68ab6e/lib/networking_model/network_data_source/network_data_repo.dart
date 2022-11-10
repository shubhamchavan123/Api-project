import 'dart:convert';

import 'package:apidemo/core/error_haldling/custom_exception.dart';
import 'package:apidemo/features/login/data/model/LoginRequestModel.dart';
import 'package:apidemo/features/login/data/model/login_response_model.dart';
import 'package:apidemo/features/proset/data/model/proset_response_model.dart';
import 'package:apidemo/features/registration/data/model/registration_requst_model.dart';
import 'package:apidemo/networking_model/api_base_model/uri_builder.dart';
import 'package:apidemo/networking_model/network_data_source/network_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkDataRepo implements NetworkDataSource {
  var uriBuilder = URIBuilder();

  @override
  Future<http.Response> getLoginData(
      {required http.Client client, required LoginRequestModel requestBody}) async {
    try {
      var uri = uriBuilder.getLoginData();
      var header = uriBuilder.getApiEndPointHeaderContentType();
      var data = json.encode(requestBody);
      var response = await http.post(uri, body: data, headers: header);
      debugPrint('NetworkDataRepo Login response: ${response.body}');
      return response;
    } on TimeOutException catch (e) {
      debugPrint('Timed out $e');
      rethrow;
    } on Exception catch (e) {
      debugPrint('ExceptionXXX $e');
      rethrow;
    }
  }


  @override
  Future<http.Response> getRegistrationData(
      {required http.Client client, required RegistrationRequstModel requestBody}) async {
    try {
      var uri = uriBuilder.getRegistrationData();
      var header = uriBuilder.getApiEndPointHeaderContentType();
      var data = json.encode(requestBody);
      var response = await http.post(uri, body: data, headers: header);
      debugPrint('NetworkDataRepo Registration response: ${response.body}');
      return response;
    } on TimeOutException catch (e) {
      debugPrint('Timed out $e');
      rethrow;
    } on Exception catch (e) {
      debugPrint('ExceptionXXX $e');
      rethrow;
    }
  }



  @override
  Future<http.Response> getProSetData(
      {required http.Client client}) async {
    try {
      var uri = uriBuilder.getProSetData();
      var header = uriBuilder.getApiEndPointHeaderContentType();

      var response = await http.get(uri, headers: header);

      debugPrint('NetworkDataRepo Proset response: ${response.body}');
      return response;
    } on TimeOutException catch (e) {
      debugPrint('Timed out $e');
      rethrow;
    } on Exception catch (e) {
      debugPrint('ExceptionXXX $e');
      rethrow;
    }
  }






// getRegistrationData(
  //     {required http.Client client, required RegistrationRequstModel requestBody}) {
  //
  //
  // }

// @override
// Future<http.Response> getLoginData(
//     {required http.Client client, required LoginRequestModel requestBody}) async {
//
//   try {
//     var uri = uriBuilder.getLoginData();
//     var header = uriBuilder.getApiEndPointHeaderContentType();
//     var data = json.encode(requestBody);
//     var response = await http.post(uri, body: data, headers: header);
//     return response;
//   } on TimeOutException catch (e) {
//     debugPrint('Timed out $e');
//     rethrow;
//   } on Exception catch (e) {
//     debugPrint('ExceptionXXX $e');
//     rethrow;
//   }
//
// }
}
