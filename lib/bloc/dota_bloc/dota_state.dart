part of 'dota_bloc.dart';

enum DotaStateStatus { initState, isLoading, isLoaded, isFailed }

final class DotaState extends Equatable {
  final DotaStateStatus status;
  final List<ProPlayerResponse> proPlayers;

  const DotaState({
    this.status = DotaStateStatus.initState,
    this.proPlayers = const [],
  });

  DotaState copyWith(
      {DotaStateStatus? status, List<ProPlayerResponse>? proPlayers}) {
    return DotaState(
      status: status ?? this.status,
      proPlayers: proPlayers ?? this.proPlayers,
    );
  }

  @override
  List<Object> get props => [
        status,
        proPlayers,
      ];
}
