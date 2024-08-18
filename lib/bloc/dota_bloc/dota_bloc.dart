import 'package:bloc_poc/models/dota_model/pro_player_response.dart';
import 'package:bloc_poc/services/dota_service/dota_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dota_event.dart';
part 'dota_state.dart';

class DotaBloc extends Bloc<DotaEvent, DotaState> {
  final DotaService dotaServices;

  DotaBloc({required this.dotaServices}) : super(const DotaState()) {
    on<GetProPlayerEvent>(getProPlayers);
  }

  Future<void> getProPlayers(
      GetProPlayerEvent event, Emitter<DotaState> emit) async {
    emit(state.copyWith(status: DotaStateStatus.isLoading));
    try {
      final proPlayers = await dotaServices.getProplayer();
      emit(
        state.copyWith(
          status: DotaStateStatus.isLoaded,
          proPlayers: proPlayers,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: DotaStateStatus.isFailed));
    }
  }
}
