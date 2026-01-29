// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_confirmation_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenConfirmationNotifierHash() =>
    r'f7901fb314fc2576dcea47e2f5a72786ecc94505';

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

abstract class _$TokenConfirmationNotifier
    extends BuildlessAutoDisposeAsyncNotifier<TokenConfirmationEntity> {
  late final String categoryId;
  late final String date;

  FutureOr<TokenConfirmationEntity> build(String categoryId, String date);
}

/// See also [TokenConfirmationNotifier].
@ProviderFor(TokenConfirmationNotifier)
const tokenConfirmationNotifierProvider = TokenConfirmationNotifierFamily();

/// See also [TokenConfirmationNotifier].
class TokenConfirmationNotifierFamily
    extends Family<AsyncValue<TokenConfirmationEntity>> {
  /// See also [TokenConfirmationNotifier].
  const TokenConfirmationNotifierFamily();

  /// See also [TokenConfirmationNotifier].
  TokenConfirmationNotifierProvider call(String categoryId, String date) {
    return TokenConfirmationNotifierProvider(categoryId, date);
  }

  @override
  TokenConfirmationNotifierProvider getProviderOverride(
    covariant TokenConfirmationNotifierProvider provider,
  ) {
    return call(provider.categoryId, provider.date);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tokenConfirmationNotifierProvider';
}

/// See also [TokenConfirmationNotifier].
class TokenConfirmationNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          TokenConfirmationNotifier,
          TokenConfirmationEntity
        > {
  /// See also [TokenConfirmationNotifier].
  TokenConfirmationNotifierProvider(String categoryId, String date)
    : this._internal(
        () => TokenConfirmationNotifier()
          ..categoryId = categoryId
          ..date = date,
        from: tokenConfirmationNotifierProvider,
        name: r'tokenConfirmationNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$tokenConfirmationNotifierHash,
        dependencies: TokenConfirmationNotifierFamily._dependencies,
        allTransitiveDependencies:
            TokenConfirmationNotifierFamily._allTransitiveDependencies,
        categoryId: categoryId,
        date: date,
      );

  TokenConfirmationNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
    required this.date,
  }) : super.internal();

  final String categoryId;
  final String date;

  @override
  FutureOr<TokenConfirmationEntity> runNotifierBuild(
    covariant TokenConfirmationNotifier notifier,
  ) {
    return notifier.build(categoryId, date);
  }

  @override
  Override overrideWith(TokenConfirmationNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TokenConfirmationNotifierProvider._internal(
        () => create()
          ..categoryId = categoryId
          ..date = date,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    TokenConfirmationNotifier,
    TokenConfirmationEntity
  >
  createElement() {
    return _TokenConfirmationNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TokenConfirmationNotifierProvider &&
        other.categoryId == categoryId &&
        other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TokenConfirmationNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<TokenConfirmationEntity> {
  /// The parameter `categoryId` of this provider.
  String get categoryId;

  /// The parameter `date` of this provider.
  String get date;
}

class _TokenConfirmationNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          TokenConfirmationNotifier,
          TokenConfirmationEntity
        >
    with TokenConfirmationNotifierRef {
  _TokenConfirmationNotifierProviderElement(super.provider);

  @override
  String get categoryId =>
      (origin as TokenConfirmationNotifierProvider).categoryId;
  @override
  String get date => (origin as TokenConfirmationNotifierProvider).date;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
