import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_2/facebook_ui/widgets/cicle_buttons.dart';
import 'package:test_2/facebook_ui/widgets/publication_item.dart';
import 'package:test_2/facebook_ui/widgets/quick_actions.dart';
import 'package:test_2/facebook_ui/widgets/stories.dart';
import 'package:test_2/facebook_ui/widgets/what_is_your_mind.dart';
import 'package:test_2/icons/custom_icons.dart';
import 'package:faker/faker.dart';
import 'package:test_2/models/publication.dart';

class FacebookUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];

    for (var i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      final Publication publication = Publication(
        user: User(
          avatar: faker.image.image(),
          username: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageURL: faker.image.image(),
        commentsCount: random.integer(50000),
        sharedsCount: random.integer(50000),
        currentUserReaction:
            Reaction.values[random.integer(Reaction.values.length - 1)],
      );
      publications.add(publication);
    }

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          colorFilter: const ColorFilter.mode(
            Colors.lightBlue,
            BlendMode.srcIn,
          ),
        ),
        leadingWidth: 150,
        actions: const [
          CircleButton(
            color: Colors.grey,
            iconData: CustomIcons.search,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: Colors.redAccent,
            iconData: CustomIcons.bell,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: Colors.blueAccent,
            iconData: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: Colors.blue,
            iconData: CustomIcons.messenger,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          const WhatIsOnYourMind(),
          const SizedBox(height: 30),
          QuickActions(),
          const SizedBox(height: 30),
          const MyStories(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => PublicationItem(
              publication: publications[index],
            ),
            itemCount: publications.length,
          )
        ],
      ),
    );
  }
}
