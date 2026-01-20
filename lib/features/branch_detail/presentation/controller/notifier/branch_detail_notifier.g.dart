// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$branchDetailNotifierHash() =>
    r'ab4d276e367cbcabfdf72a82254454bf4f839cd3';

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

abstract class _$BranchDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<SpecificBranchDetail> {
  late final String branchId;

  FutureOr<SpecificBranchDetail> build(String branchId);
}

/// See also [BranchDetailNotifier].
@ProviderFor(BranchDetailNotifier)
const branchDetailNotifierProvider = BranchDetailNotifierFamily();

/// See also [BranchDetailNotifier].
class BranchDetailNotifierFamily
    extends Family<AsyncValue<SpecificBranchDetail>> {
  /// See also [BranchDetailNotifier].
  const BranchDetailNotifierFamily();

  /// See also [BranchDetailNotifier].
  BranchDetailNotifierProvider call(String branchId) {
    return BranchDetailNotifierProvider(branchId);
  }

  @override
  BranchDetailNotifierProvider getProviderOverride(
    covariant BranchDetailNotifierProvider provider,
  ) {
    return call(provider.branchId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'branchDetailNotifierProvider';
}

/// See also [BranchDetailNotifier].
class BranchDetailNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          BranchDetailNotifier,
          SpecificBranchDetail
        > {
  /// See also [BranchDetailNotifier].
  BranchDetailNotifierProvider(String branchId)
    : this._internal(
        () => BranchDetailNotifier()..branchId = branchId,
        from: branchDetailNotifierProvider,
        name: r'branchDetailNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$branchDetailNotifierHash,
        dependencies: BranchDetailNotifierFamily._dependencies,
        allTransitiveDependencies:
            BranchDetailNotifierFamily._allTransitiveDependencies,
        branchId: branchId,
      );

  BranchDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.branchId,
  }) : super.internal();

  final String branchId;

  @override
  FutureOr<SpecificBranchDetail> runNotifierBuild(
    covariant BranchDetailNotifier notifier,
  ) {
    return notifier.build(branchId);
  }

  @override
  Override overrideWith(BranchDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: BranchDetailNotifierProvider._internal(
        () => create()..branchId = branchId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        branchId: branchId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    BranchDetailNotifier,
    SpecificBranchDetail
  >
  createElement() {
    return _BranchDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BranchDetailNotifierProvider && other.branchId == branchId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, branchId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BranchDetailNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<SpecificBranchDetail> {
  /// The parameter `branchId` of this provider.
  String get branchId;
}

class _BranchDetailNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          BranchDetailNotifier,
          SpecificBranchDetail
        >
    with BranchDetailNotifierRef {
  _BranchDetailNotifierProviderElement(super.provider);

  @override
  String get branchId => (origin as BranchDetailNotifierProvider).branchId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
