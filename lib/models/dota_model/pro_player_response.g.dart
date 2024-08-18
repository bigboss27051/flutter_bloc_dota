// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pro_player_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProPlayerResponse _$ProPlayerResponseFromJson(Map<String, dynamic> json) =>
    ProPlayerResponse(
      accountId: (json['account_id'] as num).toInt(),
      steamid: json['steamid'] as String?,
      avatar: json['avatar'] as String?,
      avatarmedium: json['avatarmedium'] as String?,
      avatarfull: json['avatarfull'] as String?,
      profileurl: json['profileurl'] as String?,
      personaname: json['personaname'] as String?,
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      fullHistoryTime: json['full_history_time'] == null
          ? null
          : DateTime.parse(json['full_history_time'] as String),
      cheese: (json['cheese'] as num?)?.toInt(),
      fhUnavailable: json['fh_unavailable'] as bool?,
      loccountrycode: json['loccountrycode'] as String?,
      name: json['name'] as String?,
      countryCode: json['country_code'] as String?,
      fantasyRole: (json['fantasy_role'] as num?)?.toInt(),
      teamId: (json['team_id'] as num?)?.toInt(),
      teamName: json['team_name'] as String?,
      teamTag: json['team_tag'] as String?,
      isLocked: json['is_locked'] as bool?,
      isPro: json['is_pro'] as bool?,
      lockedUntil: (json['locked_until'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProPlayerResponseToJson(ProPlayerResponse instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'steamid': instance.steamid,
      'avatar': instance.avatar,
      'avatarmedium': instance.avatarmedium,
      'avatarfull': instance.avatarfull,
      'profileurl': instance.profileurl,
      'personaname': instance.personaname,
      'last_login': instance.lastLogin?.toIso8601String(),
      'full_history_time': instance.fullHistoryTime?.toIso8601String(),
      'cheese': instance.cheese,
      'fh_unavailable': instance.fhUnavailable,
      'loccountrycode': instance.loccountrycode,
      'name': instance.name,
      'country_code': instance.countryCode,
      'fantasy_role': instance.fantasyRole,
      'team_id': instance.teamId,
      'team_name': instance.teamName,
      'team_tag': instance.teamTag,
      'is_locked': instance.isLocked,
      'is_pro': instance.isPro,
      'locked_until': instance.lockedUntil,
    };
