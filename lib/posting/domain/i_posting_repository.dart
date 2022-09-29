import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:five_widgets_architecture/main.dart';
import 'package:five_widgets_architecture/posting/domain/posting.dart';
import 'package:five_widgets_architecture/posting/domain/posting_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postingRepositoryProvider = Provider<IPostingRepository>(
  (ref) => PostingRepository(
    sharedPreferences: ref.watch(sharedPreferencesProvider),
  ),
);

abstract class IPostingRepository {
  Future<IList<Posting>> getPostings();
  Future<void> save({required Posting posting});
}
