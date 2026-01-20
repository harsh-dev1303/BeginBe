// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoryNotifierHash() => r'775c91b37049416f5813865bce21637a1ccf23a6';

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

abstract class _$CategoryNotifier
    extends BuildlessAutoDisposeAsyncNotifier<CategoriesEntity> {
  late final String branchId;

  FutureOr<CategoriesEntity> build(String branchId);
}

/// See also [CategoryNotifier].
@ProviderFor(CategoryNotifier)
const categoryNotifierProvider = CategoryNotifierFamily();

/// See also [CategoryNotifier].
class CategoryNotifierFamily extends Family<AsyncValue<CategoriesEntity>> {
  /// See also [CategoryNotifier].
  const CategoryNotifierFamily();

  /// See also [CategoryNotifier].
  CategoryNotifierProvider call(String branchId) {
    return CategoryNotifierProvider(branchId);
  }

  @override
  CategoryNotifierProvider getProviderOverride(
    covariant CategoryNotifierProvider provider,
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
  String? get name => r'categoryNotifierProvider';
}

/// See also [CategoryNotifier].
class CategoryNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          CategoryNotifier,
          CategoriesEntity
        > {
  /// See also [CategoryNotifier].
  CategoryNotifierProvider(String branchId)
    : this._internal(
        () => CategoryNotifier()..branchId = branchId,
        from: categoryNotifierProvider,
        name: r'categoryNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$categoryNotifierHash,
        dependencies: CategoryNotifierFamily._dependencies,
        allTransitiveDependencies:
            CategoryNotifierFamily._allTransitiveDependencies,
        branchId: branchId,
      );

  CategoryNotifierProvider._internal(
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
  FutureOr<CategoriesEntity> runNotifierBuild(
    covariant CategoryNotifier notifier,
  ) {
    return notifier.build(branchId);
  }

  @override
  Override overrideWith(CategoryNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: CategoryNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<CategoryNotifier, CategoriesEntity>
  createElement() {
    return _CategoryNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryNotifierProvider && other.branchId == branchId;
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
mixin CategoryNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<CategoriesEntity> {
  /// The parameter `branchId` of this provider.
  String get branchId;
}

class _CategoryNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          CategoryNotifier,
          CategoriesEntity
        >
    with CategoryNotifierRef {
  _CategoryNotifierProviderElement(super.provider);

  @override
  String get branchId => (origin as CategoryNotifierProvider).branchId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
