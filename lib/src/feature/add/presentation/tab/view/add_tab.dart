import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/gen/assets.gen.dart';
import '../../../../../core/services/navigation/routes.dart';

class AddTab extends StatelessWidget {
  const AddTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            FocusScope.of(context).unfocus();
            context.pushReplacementNamed(Routes.home);
          },
        ),
        leadingWidth: 32,
        title: const Text('New Event'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Post'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
        child: Column(
          children: [
            // Author Avatar with Initial
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.shade200,
                  child: Text(
                    'FN',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Author Name'),
                    SizedBox(height: 4),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        _Chip(text: 'Road Accident'),
                        _Chip(text: 'Fire'),
                        _Chip(text: 'Flood'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const TextField(
              autofocus: true,
              minLines: 2,
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'What happened?',
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Assets.icons.create.map.svg(
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 8),
                Assets.icons.create.image.svg(
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 8),
                Assets.icons.create.camera.svg(
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 8),
                Assets.icons.create.video.svg(
                  color: Colors.grey.shade600,
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(text),
    );
  }
}
