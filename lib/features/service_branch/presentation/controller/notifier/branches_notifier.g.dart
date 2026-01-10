// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branches_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$branchesNotifierHash() => r'cb65d6224cfc741aa5449c5f24b8a6f32c27ad7a';

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

abstract class _$BranchesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<ServiceBranchesEntity> {
  late final String serviceId;

  FutureOr<ServiceBranchesEntity> build(String serviceId);
}

/// See also [BranchesNotifier].
@ProviderFor(BranchesNotifier)
const branchesNotifierProvider = BranchesNotifierFamily();

/// See also [BranchesNotifier].
class BranchesNotifierFamily extends Family<AsyncValue<ServiceBranchesEntity>> {
  /// See also [BranchesNotifier].
  const BranchesNotifierFamily();

  /// See also [BranchesNotifier].
  BranchesNotifierProvider call(String serviceId) {
    return BranchesNotifierProvider(serviceId);
  }

  @override
  BranchesNotifierProvider getProviderOverride(
    covariant BranchesNotifierProvider provider,
  ) {
    return call(provider.serviceId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'branchesNotifierProvider';
}

/// See also [BranchesNotifier].
class BranchesNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          BranchesNotifier,
          ServiceBranchesEntity
        > {
  /// See also [BranchesNotifier].
  BranchesNotifierProvider(String serviceId)
    : this._internal(
        () => BranchesNotifier()..serviceId = serviceId,
        from: branchesNotifierProvider,
        name: r'branchesNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$branchesNotifierHash,
        dependencies: BranchesNotifierFamily._dependencies,
        allTransitiveDependencies:
            BranchesNotifierFamily._allTransitiveDependencies,
        serviceId: serviceId,
      );

  BranchesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.serviceId,
  }) : super.internal();

  final String serviceId;

  @override
  FutureOr<ServiceBranchesEntity> runNotifierBuild(
    covariant BranchesNotifier notifier,
  ) {
    return notifier.build(serviceId);
  }

  @override
  Override overrideWith(BranchesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: BranchesNotifierProvider._internal(
        () => create()..serviceId = serviceId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        serviceId: serviceId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    BranchesNotifier,
    ServiceBranchesEntity
  >
  createElement() {
    return _BranchesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BranchesNotifierProvider && other.serviceId == serviceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, serviceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BranchesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<ServiceBranchesEntity> {
  /// The parameter `serviceId` of this provider.
  String get serviceId;
}

class _BranchesNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          BranchesNotifier,
          ServiceBranchesEntity
        >
    with BranchesNotifierRef {
  _BranchesNotifierProviderElement(super.provider);

  @override
  String get serviceId => (origin as BranchesNotifierProvider).serviceId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
