import 'package:flutter/material.dart';

import '../../../../../core/gen/assets.gen.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
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
          const SizedBox(height: 8),
          const Text(
            'Loream ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 8),
          Row(
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
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
