// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_preview_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenPreviewNotifierHash() =>
    r'c210da1468f88dc9bda22b84ba7287a81ce3168d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TokenPreviewNotifier
    extends BuildlessAutoDisposeAsyncNotifier<TokenPreviewEntity> {
  late final String categoryId;

  FutureOr<TokenPreviewEntity> build(String categoryId);
}

/// See also [TokenPreviewNotifier].
@ProviderFor(TokenPreviewNotifier)
const tokenPreviewNotifierProvider = TokenPreviewNotifierFamily();

/// See also [TokenPreviewNotifier].
class TokenPreviewNotifierFamily
    extends Family<AsyncValue<TokenPreviewEntity>> {
  /// See also [TokenPreviewNotifier].
  const TokenPreviewNotifierFamily();

  /// See also [TokenPreviewNotifier].
  TokenPreviewNotifierProvider call(String categoryId) {
    return TokenPreviewNotifierProvider(categoryId);
  }

  @override
  TokenPreviewNotifierProvider getProviderOverride(
    covariant TokenPreviewNotifierProvider provider,
  ) {
    return call(provider.categoryId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tokenPreviewNotifierProvider';
}

/// See also [TokenPreviewNotifier].
class TokenPreviewNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          TokenPreviewNotifier,
          TokenPreviewEntity
        > {
  /// See also [TokenPreviewNotifier].
  TokenPreviewNotifierProvider(String categoryId)
    : this._internal(
        () => TokenPreviewNotifier()..categoryId = categoryId,
        from: tokenPreviewNotifierProvider,
        name: r'tokenPreviewNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$tokenPreviewNotifierHash,
        dependencies: TokenPreviewNotifierFamily._dependencies,
        allTransitiveDependencies:
            TokenPreviewNotifierFamily._allTransitiveDependencies,
        categoryId: categoryId,
      );

  TokenPreviewNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final String categoryId;

  @override
  FutureOr<TokenPreviewEntity> runNotifierBuild(
    covariant TokenPreviewNotifier notifier,
  ) {
    return notifier.build(categoryId);
  }

  @override
  Override overrideWith(TokenPreviewNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TokenPreviewNotifierProvider._internal(
        () => create()..categoryId = categoryId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    TokenPreviewNotifier,
    TokenPreviewEntity
  >
  createElement() {
    return _TokenPreviewNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TokenPreviewNotifierProvider &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TokenPreviewNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<TokenPreviewEntity> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;
}

class _TokenPreviewNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          TokenPreviewNotifier,
          TokenPreviewEntity
        >
    with TokenPreviewNotifierRef {
  _TokenPreviewNotifierProviderElement(super.provider);

  @override
  String get categoryId => (origin as TokenPreviewNotifierProvider).categoryId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
