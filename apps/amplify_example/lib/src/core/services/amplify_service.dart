import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'amplify_service.g.dart';

@Riverpod(keepAlive: true)
AmplifyClass amplifyAuth(Ref ref) => Amplify;
