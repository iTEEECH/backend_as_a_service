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
    extends
        $FunctionalProvider<
          AsyncValue<List<AuthUserAttribute?>>,
          List<AuthUserAttribute?>,
          FutureOr<List<AuthUserAttribute?>>
        >
    with
        $FutureModifier<List<AuthUserAttribute?>>,
        $FutureProvider<List<AuthUserAttribute?>> {
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
  $FutureProviderElement<List<AuthUserAttribute?>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AuthUserAttribute?>> create(Ref ref) {
    return fetchUser(ref);
  }
}

String _$fetchUserHash() => r'd567f52aaab34f8794f5194eedfa2f97e6bfd594';

@ProviderFor(AuthenticationController)
const authenticationControllerProvider = AuthenticationControllerProvider._();

final class AuthenticationControllerProvider
    extends $AsyncNotifierProvider<AuthenticationController, AuthSession?> {
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
    r'c1c2f7055b3e4325f99e39007100ea808afe4a67';

abstract class _$AuthenticationController extends $AsyncNotifier<AuthSession?> {
  FutureOr<AuthSession?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AuthSession?>, AuthSession?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AuthSession?>, AuthSession?>,
              AsyncValue<AuthSession?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
