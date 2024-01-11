import 'dart:async';

import 'package:flutter_hackathon/shared/api/home_api.dart';

class HomeRepository {
  final HomeApi apiClient;

  HomeRepository({required this.apiClient});

  Future<String> getHome() async {
    final response = await apiClient.getHome();

    if (response != null) {
      return response;
    }

    throw Exception();
  }
}
