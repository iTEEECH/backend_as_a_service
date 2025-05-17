import 'package:appwrite/models.dart';
import 'package:appwrite_example/src/core/services/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

@riverpod
Future<User> fetchUser(Ref ref) async {
  return ref.watch(authenticationControllerProvider.notifier).user;
}

@riverpod
class AuthenticationController extends _$AuthenticationController {
  @override
  FutureOr<Session?> build() async =>
      await ref.watch(accountProvider).getSession(sessionId: 'sessionId');

  Future<User> get user async => await ref.watch(accountProvider).get();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard<Session?>(
      () async {
        final Session response =
            await ref.read(accountProvider).createEmailPasswordSession(
                  email: email,
                  password: password,
                );
        return response;
      },
    );
  }

  Future<void> signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard<Session?>(
      () async {
        await ref.read(accountProvider).deleteSessions();
        return null;
      },
    );
  }
}
