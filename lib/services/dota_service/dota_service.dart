import 'dart:async';

import 'package:bloc_poc/models/dota_model/pro_player_response.dart';

abstract class DotaService {
  FutureOr<List<ProPlayerResponse>> getProplayer();
}
