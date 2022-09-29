import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fast_immutable_collections/src/ilist/ilist.dart';
import 'package:five_widgets_architecture/posting/domain/i_posting_repository.dart';
import 'package:five_widgets_architecture/posting/domain/posting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PostingRepository implements IPostingRepository {
  final SharedPreferences sharedPreferences;

  const PostingRepository({required this.sharedPreferences});

  @override
  Future<IList<Posting>> getPostings() async {
    await Future.delayed(const Duration(seconds: 3));

    return _getPostings();
  }

  IList<Posting> _getPostings() {
    final jsons = (sharedPreferences.getStringList('postings') ?? []);
    return jsons.map((p) => Posting.fromJson(jsonDecode(p))).toIList();
  }

  @override
  Future<void> save({required Posting posting}) async {
    final postings = _getPostings();

    final postingsMap = Map.fromEntries(
      postings.map((p) => MapEntry(p.id, p)),
    );

    postingsMap[posting.id] = posting;

    final updatedPostingJsonList = postingsMap.values.map((p) => jsonEncode(p.toJson())).toList();

    sharedPreferences.setStringList('postings', updatedPostingJsonList);
  }
}
