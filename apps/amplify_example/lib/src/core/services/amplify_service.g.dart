// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amplify_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(amplifyAuth)
const amplifyAuthProvider = AmplifyAuthProvider._();

final class AmplifyAuthProvider
    extends $FunctionalProvider<AmplifyClass, AmplifyClass, AmplifyClass>
    with $Provider<AmplifyClass> {
  const AmplifyAuthProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'amplifyAuthProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$amplifyAuthHash();

  @$internal
  @override
  $ProviderElement<AmplifyClass> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AmplifyClass create(Ref ref) {
    return amplifyAuth(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AmplifyClass value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AmplifyClass>(value),
    );
  }
}

String _$amplifyAuthHash() => r'93682a2827a2923643fc3999bb20882b79607933';
