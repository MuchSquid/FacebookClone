import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_2/facebook_ui/widgets/avatar.dart';
import 'package:test_2/models/publication.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class PublicationItem extends StatelessWidget {
  const PublicationItem({super.key, required this.publication});

  final Publication publication;

  String _getEmojiPath(Reaction reaction) {
    switch (reaction) {
      case Reaction.like:
        return 'assets/emojis/like.svg';

      case Reaction.love:
        return 'assets/emojis/heart.svg';

      case Reaction.laughing:
        return 'assets/emojis/laughing.svg';

      case Reaction.sad:
        return 'assets/emojis/sad.svg';

      case Reaction.shocking:
        return 'assets/emojis/shocked.svg';

      case Reaction.angry:
        return 'assets/emojis/angry.svg';
    }
  }

  String _formatNumber(int number) {
    return NumberFormat.compact().format(number);
  }

  @override
  Widget build(BuildContext context) {
    const reactions = Reaction.values;

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Avatar(
                  size: 38,
                  assets: 'assets/users/1.jpg',
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  publication.user.username,
                ),
                const Spacer(),
                Text(
                  timeago.format(
                    publication.createdAt,
                  ),
                ),
              ],
            ),
          ),
          CachedNetworkImage(
            imageUrl: publication.imageURL,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ).copyWith(top: 15),
            child: Text(
              publication.title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      reactions.length,
                      (index) {
                        final reaction = reactions[index];
                        final isActive =
                            reaction == publication.currentUserReaction;
                        return Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                _getEmojiPath(reaction),
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(height: 3),
                              Icon(
                                Icons.circle,
                                color: isActive
                                    ? Colors.redAccent
                                    : Colors.transparent,
                                size: 5,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Flexible(
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          '${_formatNumber(publication.commentsCount)} Comments  ',
                        ),
                        Text(
                          ' ${_formatNumber(publication.sharedsCount)} Shares',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
