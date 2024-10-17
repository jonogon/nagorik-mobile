import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/gen/assets.gen.dart';
import '../../../../../core/services/navigation/routes.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.postDetails),
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _UserCard(),
            const _Media(),
            const SizedBox(height: 8),
            Text(
              '#RoadAccident #Fire #MissingPerson',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Loream ipsum dolor sit amet consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const _ReactionBar(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _UserCard extends StatelessWidget {
  const _UserCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.15),
            child: Text(
              'FN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Author Name',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 2),
              Text(
                '12:00 PM, 12th June 2021',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Media extends StatelessWidget {
  const _Media();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.image,
              size: 48,
              color: Colors.grey.shade400,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            final activeColor = Colors.grey.shade400;
            final inactiveColor = Colors.grey.shade200;
            return Container(
              width: 10,
              height: 10,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: index == 0 ? activeColor : inactiveColor,
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ],
    );
  }
}

class _ReactionBar extends StatelessWidget {
  const _ReactionBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.icons.reactions.like.svg(),
        const SizedBox(width: 4),
        const Text('123'),
        const SizedBox(width: 16),
        Assets.icons.reactions.comment.svg(),
        const SizedBox(width: 4),
        const Text('123'),
        const SizedBox(width: 16),
        Assets.icons.reactions.share.svg(),
        const SizedBox(width: 4),
        const Text('123'),
      ],
    );
  }
}
