// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchUser)
const fetchUserProvider = FetchUserProvider._();

final class FetchUserProvider
    extends $FunctionalProvider<AsyncValue<User>, User, FutureOr<User>>
    with $FutureModifier<User>, $FutureProvider<User> {
  const FetchUserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchUserProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchUserHash();

  @$internal
  @override
  $FutureProviderElement<User> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<User> create(Ref ref) {
    return fetchUser(ref);
  }
}

String _$fetchUserHash() => r'60a4847a5ffac5ccdc1feb0675723dcd85c4e7fe';

@ProviderFor(AuthenticationController)
const authenticationControllerProvider = AuthenticationControllerProvider._();

final class AuthenticationControllerProvider
    extends $AsyncNotifierProvider<AuthenticationController, Session?> {
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
    r'00c20a64c006d695c0d7dc3742f5d9ac9a7f6d96';

abstract class _$AuthenticationController extends $AsyncNotifier<Session?> {
  FutureOr<Session?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Session?>, Session?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Session?>, Session?>,
              AsyncValue<Session?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
