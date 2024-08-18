part of 'dota_bloc.dart';

abstract class DotaEvent extends Equatable {
  const DotaEvent();

  @override
  List<Object> get props => [];
}

class GetProPlayerEvent extends DotaEvent {
  const GetProPlayerEvent();

  @override
  List<Object> get props => [];
}
