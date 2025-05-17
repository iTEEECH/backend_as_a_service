import 'dart:async';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite_example/src/application/application.dart';
import 'package:appwrite_example/src/core/services/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  runZonedGuarded(() async {
    // Flutter engine initialization.
    WidgetsFlutterBinding.ensureInitialized();

    // Appwrite initialization.
    final Client client = Client()
      ..setEndpoint('')
      ..setProject('')
      ..setSelfSigned(status: true);

    // Handle browser url.
    if (kIsWeb) usePathUrlStrategy();

    runApp(
      ProviderScope(
        overrides: <Override>[
          clientProvider.overrideWithValue(client),
        ],
        child: const Application(),
      ),
    );
  }, (Object error, StackTrace stackTrace) async {
    throw Error.throwWithStackTrace(error, stackTrace);
  });
}
