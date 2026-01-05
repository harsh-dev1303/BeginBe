// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountDetailNotifierHash() =>
    r'3e5f25ba2552e348b722d2a61661480a0ab58f53';

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

abstract class _$AccountDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<AccountDetailEntity> {
  late final int userId;

  FutureOr<AccountDetailEntity> build(int userId);
}

/// See also [AccountDetailNotifier].
@ProviderFor(AccountDetailNotifier)
const accountDetailNotifierProvider = AccountDetailNotifierFamily();

/// See also [AccountDetailNotifier].
class AccountDetailNotifierFamily
    extends Family<AsyncValue<AccountDetailEntity>> {
  /// See also [AccountDetailNotifier].
  const AccountDetailNotifierFamily();

  /// See also [AccountDetailNotifier].
  AccountDetailNotifierProvider call(int userId) {
    return AccountDetailNotifierProvider(userId);
  }

  @override
  AccountDetailNotifierProvider getProviderOverride(
    covariant AccountDetailNotifierProvider provider,
  ) {
    return call(provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'accountDetailNotifierProvider';
}

/// See also [AccountDetailNotifier].
class AccountDetailNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          AccountDetailNotifier,
          AccountDetailEntity
        > {
  /// See also [AccountDetailNotifier].
  AccountDetailNotifierProvider(int userId)
    : this._internal(
        () => AccountDetailNotifier()..userId = userId,
        from: accountDetailNotifierProvider,
        name: r'accountDetailNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$accountDetailNotifierHash,
        dependencies: AccountDetailNotifierFamily._dependencies,
        allTransitiveDependencies:
            AccountDetailNotifierFamily._allTransitiveDependencies,
        userId: userId,
      );

  AccountDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final int userId;

  @override
  FutureOr<AccountDetailEntity> runNotifierBuild(
    covariant AccountDetailNotifier notifier,
  ) {
    return notifier.build(userId);
  }

  @override
  Override overrideWith(AccountDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AccountDetailNotifierProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    AccountDetailNotifier,
    AccountDetailEntity
  >
  createElement() {
    return _AccountDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountDetailNotifierProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AccountDetailNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<AccountDetailEntity> {
  /// The parameter `userId` of this provider.
  int get userId;
}

class _AccountDetailNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          AccountDetailNotifier,
          AccountDetailEntity
        >
    with AccountDetailNotifierRef {
  _AccountDetailNotifierProviderElement(super.provider);

  @override
  int get userId => (origin as AccountDetailNotifierProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
