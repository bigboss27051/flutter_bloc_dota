import 'dart:async';

import 'package:bloc_poc/models/dota_model/pro_player_response.dart';
import 'package:bloc_poc/services/dota_service/dota_service.dart';
import 'package:dio/dio.dart';

class DotaServiceImpl implements DotaService {
  final dio = Dio();

  @override
  FutureOr<List<ProPlayerResponse>> getProplayer() async {
    final response = await dio.get('https://api.opendota.com/api/proPlayers');
    List<ProPlayerResponse> proPlayers = (response.data as List)
        .map((item) => ProPlayerResponse.fromJson(item))
        .toList();
    return proPlayers;
  }
}
