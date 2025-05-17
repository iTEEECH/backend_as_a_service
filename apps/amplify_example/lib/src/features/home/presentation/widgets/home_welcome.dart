import 'package:amplify_example/src/features/authentication/authentication.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeWelcome extends ConsumerWidget {
  const HomeWelcome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider(s).
    final AsyncValue<List<AuthUserAttribute?>> user = ref.watch(fetchUserProvider);

    // Content.
    return switch (user) {
      AsyncError(:final Object error) => Text(
          'Error $error 👋',
          style: TextStyle(fontSize: 20.0),
        ),
      AsyncValue<Map<AuthUserAttributeKey, String>>(value: final user) => Text(
          'Welcome ${user?[AuthUserAttributeKey.email]} 👋',
          style: TextStyle(fontSize: 20.0),
        ),
      _ => const CircularProgressIndicator.adaptive(),
    };
  }
}
