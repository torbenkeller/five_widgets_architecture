import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:five_widgets_architecture/posting/domain/i_posting_repository.dart';
import 'package:five_widgets_architecture/posting/domain/posting.dart';
import 'package:riverbloc/riverbloc.dart';
import 'package:uuid/uuid.dart';

final postingsCubitProvider = BlocProvider<PostingsCubit, IList<Posting>>(
  (ref) => throw UnimplementedError(),
);

class PostingsCubit extends Cubit<IList<Posting>> {
  final IPostingRepository postingRepository;

  PostingsCubit({
    required this.postingRepository,
    required IList<Posting> postings,
  }) : super(postings);

  Future<void> createPosting({required String body}) async {
    final posting = Posting(
      id: const Uuid().v4(),
      body: body,
      createdAt: DateTime.now(),
      votes: 0,
      myVote: null,
    );

    final newState = state.add(posting);
    postingRepository.save(posting: posting);

    emit(newState);
  }

  Future<void> voteUp({required String id}) async {
    final posting = state.firstWhere((element) => element.id == id);

    late final Posting updatedPosting;
    switch (posting.myVote) {
      case PostingVote.up:
        updatedPosting = posting.copyWith(
          votes: posting.votes - 1,
          myVote: null,
        );
        break;
      case PostingVote.down:
        updatedPosting = posting.copyWith(
          votes: posting.votes + 2,
          myVote: PostingVote.up,
        );
        break;
      case null:
        updatedPosting = posting.copyWith(
          votes: posting.votes + 1,
          myVote: PostingVote.up,
        );
        break;
    }

    await postingRepository.save(posting: updatedPosting);

    final newState = state.replaceFirstWhere((element) => element.id == id, updatedPosting);
    emit(newState);
  }

  Future<void> voteDown({required String id}) async {
    final posting = state.firstWhere((element) => element.id == id);

    late final Posting updatedPosting;
    switch (posting.myVote) {
      case PostingVote.up:
        updatedPosting = posting.copyWith(
          votes: posting.votes - 2,
          myVote: PostingVote.down,
        );
        break;
      case PostingVote.down:
        updatedPosting = posting.copyWith(
          votes: posting.votes + 1,
          myVote: null,
        );
        break;
      case null:
        updatedPosting = posting.copyWith(
          votes: posting.votes - 1,
          myVote: PostingVote.down,
        );
        break;
    }

    await postingRepository.save(posting: updatedPosting);

    final newState = state.replaceFirstWhere((element) => element.id == id, updatedPosting);
    emit(newState);
  }
}
