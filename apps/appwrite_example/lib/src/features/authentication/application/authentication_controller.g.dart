// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchUserHash() => r'60a4847a5ffac5ccdc1feb0675723dcd85c4e7fe';

/// See also [fetchUser].
@ProviderFor(fetchUser)
final fetchUserProvider = AutoDisposeFutureProvider<User>.internal(
  fetchUser,
  name: r'fetchUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchUserRef = AutoDisposeFutureProviderRef<User>;
String _$authenticationControllerHash() =>
    r'00c20a64c006d695c0d7dc3742f5d9ac9a7f6d96';

/// See also [AuthenticationController].
@ProviderFor(AuthenticationController)
final authenticationControllerProvider = AutoDisposeAsyncNotifierProvider<
    AuthenticationController, Session?>.internal(
  AuthenticationController.new,
  name: r'authenticationControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authenticationControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthenticationController = AutoDisposeAsyncNotifier<Session?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
