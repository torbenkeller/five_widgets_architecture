import 'package:freezed_annotation/freezed_annotation.dart';

part 'posting.freezed.dart';
part 'posting.g.dart';

enum PostingVote {
  up,
  down,
}

@freezed
class Posting with _$Posting {
  const Posting._();

  const factory Posting({
    required String id,
    required String body,
    required DateTime createdAt,
    required int votes,
    PostingVote? myVote,
  }) = _Posting;

  factory Posting.fromJson(Map<String, dynamic> json) => _$PostingFromJson(json);
}
