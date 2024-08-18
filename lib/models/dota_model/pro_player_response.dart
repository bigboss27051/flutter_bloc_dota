import 'package:json_annotation/json_annotation.dart';

part 'pro_player_response.g.dart';

@JsonSerializable()
class ProPlayerResponse {
  @JsonKey(name: 'account_id')
  int accountId;

  @JsonKey(name: 'steamid')
  String? steamid;

  @JsonKey(name: 'avatar')
  String? avatar;

  @JsonKey(name: 'avatarmedium')
  String? avatarmedium;

  @JsonKey(name: 'avatarfull')
  String? avatarfull;

  @JsonKey(name: 'profileurl')
  String? profileurl;

  @JsonKey(name: 'personaname')
  String? personaname;

  @JsonKey(name: 'last_login')
  DateTime? lastLogin;

  @JsonKey(name: 'full_history_time')
  DateTime? fullHistoryTime;

  @JsonKey(name: 'cheese')
  int? cheese;

  @JsonKey(name: 'fh_unavailable')
  bool? fhUnavailable;

  @JsonKey(name: 'loccountrycode')
  String? loccountrycode;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'country_code')
  String? countryCode;

  @JsonKey(name: 'fantasy_role')
  int? fantasyRole;

  @JsonKey(name: 'team_id')
  int? teamId;

  @JsonKey(name: 'team_name')
  String? teamName;

  @JsonKey(name: 'team_tag')
  String? teamTag;

  @JsonKey(name: 'is_locked')
  bool? isLocked;

  @JsonKey(name: 'is_pro')
  bool? isPro;

  @JsonKey(name: 'locked_until')
  int? lockedUntil;

  ProPlayerResponse({
    required this.accountId,
    required this.steamid,
    required this.avatar,
    required this.avatarmedium,
    required this.avatarfull,
    required this.profileurl,
    required this.personaname,
    required this.lastLogin,
    required this.fullHistoryTime,
    required this.cheese,
    required this.fhUnavailable,
    required this.loccountrycode,
    required this.name,
    required this.countryCode,
    required this.fantasyRole,
    required this.teamId,
    required this.teamName,
    required this.teamTag,
    required this.isLocked,
    required this.isPro,
    required this.lockedUntil,
  });

  factory ProPlayerResponse.fromJson(Map<String, dynamic> json) =>
      _$ProPlayerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProPlayerResponseToJson(this);
}
