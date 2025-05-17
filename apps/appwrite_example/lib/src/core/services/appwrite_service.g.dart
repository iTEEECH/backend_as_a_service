// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appwrite_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientHash() => r'd204d8661b4f52eb2c4bbe156ba7cbb39c1bcdce';

/// See also [client].
@ProviderFor(client)
final clientProvider = Provider<Client>.internal(
  client,
  name: r'clientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ClientRef = ProviderRef<Client>;
String _$accountHash() => r'83f5dfc8cbcb6fcad494ada50202c93b163bec2c';

/// See also [account].
@ProviderFor(account)
final accountProvider = Provider<Account>.internal(
  account,
  name: r'accountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$accountHash,
  dependencies: <ProviderOrFamily>[clientProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    clientProvider,
    ...?clientProvider.allTransitiveDependencies
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AccountRef = ProviderRef<Account>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
