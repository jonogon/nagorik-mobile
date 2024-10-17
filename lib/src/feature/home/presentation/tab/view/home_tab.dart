import 'package:flutter/material.dart';

import '../../shared/widget/post_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nagorik')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const PostCard();
            },
          ),
        ),
      ),
    );
  }
}
