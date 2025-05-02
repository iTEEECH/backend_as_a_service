// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchUserHash() => r'd567f52aaab34f8794f5194eedfa2f97e6bfd594';

/// See also [fetchUser].
@ProviderFor(fetchUser)
final fetchUserProvider =
    AutoDisposeFutureProvider<List<AuthUserAttribute?>>.internal(
  fetchUser,
  name: r'fetchUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchUserRef = AutoDisposeFutureProviderRef<List<AuthUserAttribute?>>;
String _$authenticationControllerHash() =>
    r'c1c2f7055b3e4325f99e39007100ea808afe4a67';

/// See also [AuthenticationController].
@ProviderFor(AuthenticationController)
final authenticationControllerProvider = AutoDisposeAsyncNotifierProvider<
    AuthenticationController, AuthSession?>.internal(
  AuthenticationController.new,
  name: r'authenticationControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authenticationControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthenticationController = AutoDisposeAsyncNotifier<AuthSession?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
