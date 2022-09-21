// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Posting _$$_PostingFromJson(Map<String, dynamic> json) => _$_Posting(
      id: json['id'] as String,
      body: json['body'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      votes: json['votes'] as int,
      myVote: $enumDecodeNullable(_$PostingVoteEnumMap, json['myVote']),
    );

Map<String, dynamic> _$$_PostingToJson(_$_Posting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'createdAt': instance.createdAt.toIso8601String(),
      'votes': instance.votes,
      'myVote': _$PostingVoteEnumMap[instance.myVote],
    };

const _$PostingVoteEnumMap = {
  PostingVote.up: 'up',
  PostingVote.down: 'down',
};
