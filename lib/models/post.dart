class PostEntity {
  String _postUserId; // User id, may belong to player/team/sponsor/game
  String _postId; // Unique post id
  String _postText; // The text content of the post
  String? _postImageUrl; // OPTIONAL - The image content in the post
  String? _postVideoUrl; // OPTIONAL - The video content in the post
  DateTime _postDate; // When the content is posted
  int _upvote = 0; // likes
  int _downvote = 0; // dislikes

  /// Constructor
  PostEntity(this._postUserId, this._postId, this._postText, this._postDate,
      this._upvote, this._downvote,
      [this._postImageUrl, this._postVideoUrl]);

  /// Getter and Setters
  int get downvote => _downvote;

  set downvote(int value) {
    _downvote = value;
  }

  int get upvote => _upvote;

  set upvote(int value) {
    _upvote = value;
  }

  DateTime get postDate => _postDate;

  set postDate(DateTime value) {
    _postDate = value;
  }

  String? get postVideoUrl => _postVideoUrl;

  set postVideoUrl(String? value) {
    _postVideoUrl = value;
  }

  String? get postImageUrl => _postImageUrl;

  set postImageUrl(String? value) {
    _postImageUrl = value;
  }

  String get postText => _postText;

  set postText(String value) {
    _postText = value;
  }

  String get postId => _postId;

  set postId(String value) {
    _postId = value;
  }

  String get postUserId => _postUserId;

  set postUserId(String value) {
    _postUserId = value;
  }
}
