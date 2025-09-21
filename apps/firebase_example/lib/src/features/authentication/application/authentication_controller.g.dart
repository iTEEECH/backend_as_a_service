// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthenticationController)
const authenticationControllerProvider = AuthenticationControllerProvider._();

final class AuthenticationControllerProvider
    extends $StreamNotifierProvider<AuthenticationController, User?> {
  const AuthenticationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationControllerHash();

  @$internal
  @override
  AuthenticationController create() => AuthenticationController();
}

String _$authenticationControllerHash() =>
    r'cd7bdc7faf12a23dde5bce37480ef78f1211fc54';

abstract class _$AuthenticationController extends $StreamNotifier<User?> {
  Stream<User?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<User?>, User?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<User?>, User?>,
              AsyncValue<User?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
