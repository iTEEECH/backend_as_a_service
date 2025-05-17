import 'package:amplify_example/src/core/services/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

part 'authentication_controller.g.dart';

@riverpod
Future<List<AuthUserAttribute?>> fetchUser(Ref ref) async {
  return await ref.watch(authenticationControllerProvider.notifier).user;
  /*return attributes.firstWhere((AuthUserAttribute attribute) {
    return attribute.userAttributeKey == AuthUserAttributeKey.email;
  }).value;*/
}

@riverpod
class AuthenticationController extends _$AuthenticationController {
  @override
  Future<AuthSession?> build() async =>
      await ref.watch(amplifyAuthProvider).Auth.fetchAuthSession();

  Future<List<AuthUserAttribute>> get user async =>
      await ref.watch(amplifyAuthProvider).Auth.fetchUserAttributes();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard<AuthSession?>(() async {
      final SignInResult result =
          await ref.read(amplifyAuthProvider).Auth.signIn(
                username: email,
                password: password,
              );
      if (result.isSignedIn) {
        final AuthSession session =
            await ref.read(amplifyAuthProvider).Auth.fetchAuthSession();
        return session;
      }
      return null;
    });
  }

  Future<void> signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard<AuthSession?>(
      () async {
        await ref
            .read(amplifyAuthProvider)
            .Auth
            .signOut(options: SignOutOptions(globalSignOut: true));
        return null;
      },
    );
  }
}
