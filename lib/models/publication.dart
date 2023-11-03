class Publication {
  final User user;
  final String title;
  final DateTime createdAt;
  final String imageURL;
  final int commentsCount;
  final int sharedsCount;
  final Reaction currentUserReaction;

  Publication({
    required this.user,
    required this.title,
    required this.createdAt,
    required this.imageURL,
    required this.commentsCount,
    required this.sharedsCount,
    required this.currentUserReaction,
  });
}

class User {
  final String avatar;
  final String username;

  User({
    required this.avatar,
    required this.username,
  });
}

enum Reaction {
  like,
  love,
  laughing,
  sad,
  shocking,
  angry,
}
