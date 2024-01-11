import 'dart:async';

import 'package:flutter_hackathon/shared/api/some_api.dart';

class SomeRepository {
  final SomeApi apiClient;

  SomeRepository({required this.apiClient});

  Future<String> getSome() async {
    final response = await apiClient.getSome();

    if (response != null) {
      return response;
    }

    throw Exception();
  }
}
