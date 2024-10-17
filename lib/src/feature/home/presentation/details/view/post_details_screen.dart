import 'package:flutter/material.dart';

import '../../../../../core/gen/assets.gen.dart';

class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Event Details')),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ).copyWith(top: 16),
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
                  'Loream ipsum dolor sit amet consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Loream ipsum dolor sit amet consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Loream ipsum dolor sit amet consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Loream ipsum dolor sit amet consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Loream ipsum dolor sit amet consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Loream ipsum dolor sit amet consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const _ReactionBar(),
                const SizedBox(height: 20),
                const _CommentThreadBuilder(),
                const SizedBox(height: 100),
              ],
            ),
          ),
          const _CommentBox()
        ],
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
        Assets.icons.reactions.share.svg(),
        const SizedBox(width: 4),
        const Text('123'),
      ],
    );
  }
}

class _CommentThreadBuilder extends StatelessWidget {
  const _CommentThreadBuilder();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const _Comment();
      },
    );
  }
}

class _Comment extends StatelessWidget {
  const _Comment();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const Expanded(
            child: Column(
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
                SizedBox(height: 4),
                Text(
                  'Loream ipsum dolor sit amet consectetur elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CommentBox extends StatelessWidget {
  const _CommentBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SafeArea(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Write a comment...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: IconButton(
              icon: Assets.icons.create.map.svg(),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
