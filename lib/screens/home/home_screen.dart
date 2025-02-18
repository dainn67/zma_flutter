import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.star),
                title: const Text('Featured Content'),
                subtitle: const Text('Check out what\'s new'),
                onTap: () {
                  // Navigate to featured content
                },
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: const Icon(Icons.trending_up),
                title: const Text('Trending'),
                subtitle: const Text('Popular right now'),
                onTap: () {
                  // Navigate to trending
                },
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: const Icon(Icons.category),
                title: const Text('Categories'),
                subtitle: const Text('Browse by category'),
                onTap: () {
                  // Navigate to categories
                },
              ),
            ),
          ],
        ),
      );
  }
} 