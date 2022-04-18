import 'package:convo1/helpers.dart';
import 'package:flutter/material.dart';
import 'package:convo1/theme.dart';
import 'package:convo1/models/models.dart';
import 'package:convo1/widgets/widgets.dart';
import 'package:faker/faker.dart';
import 'package:jiffy/jiffy.dart';

class message_page extends StatefulWidget {
  const message_page({Key? key}) : super(key: key);

  @override
  State<message_page> createState() => _message_pageState();
}

class _message_pageState extends State<message_page> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      //it is used for applying different scrolling effect such as horizontal,vertical.
      slivers: [
        const SliverToBoxAdapter(
          // story section
          child: _stories(),
        ),
        SliverList(
          ///profilers and their messages
          delegate: SliverChildBuilderDelegate(_delegate),
        )
      ],
    );
  }

  Widget _delegate(BuildContext context, int index) {
    final Faker faker = Faker();
    final date = Helpers.randomDate();
    return _messageTitle(
        messageData: MessageData(
            sennderName: faker.person
                .name(), //generating fake data using this Faker package
            message: faker.lorem.sentence(),
            messageDate: date,
            dateMessage: Jiffy(date).fromNow(),
            profilePicture: Helpers.randomPictureUrl()));
  }
}

class _messageTitle extends StatelessWidget {
  const _messageTitle({Key? key, required this.messageData}) : super(key: key);
  final MessageData messageData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Avatar.medium(url: messageData.profilePicture),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  messageData.sennderName,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      letterSpacing: 0.2,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                  height: 20,
                  child: Text(
                    messageData.message,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 4,
              ),
              Text(
                messageData.dateMessage.toUpperCase(),
                style: const TextStyle(
                  fontSize: 11,
                  letterSpacing: -0.2,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textFaded,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                    color: AppColors.secondary, shape: BoxShape.circle),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 10, color: AppColors.textLigth),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _stories extends StatelessWidget {
  const _stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: SizedBox(
        height: 134,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8, bottom: 16),
            child: Text(
              "Stories",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: AppColors.textFaded),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final faker = Faker();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 60,
                    child: _StoryCard(
                        storyData: StoryData(
                            name: faker.person
                                .name(), //it is generating random names using faker package
                            url: Helpers
                                .randomPictureUrl())), //it is generating random images using this Helpers class
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard({
    Key? key,
    required this.storyData,
  }) : super(key: key);

  final StoryData storyData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Avatar.medium(url: storyData.url),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              storyData.name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11,
                letterSpacing: 0.3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
