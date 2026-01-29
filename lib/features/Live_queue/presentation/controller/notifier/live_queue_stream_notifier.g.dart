// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_queue_stream_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$liveQueueStreamNotifierHash() =>
    r'd29502bfe0f5a8f5dfc8205a3b10d7a8e9a9ac66';

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

abstract class _$LiveQueueStreamNotifier
    extends BuildlessAutoDisposeStreamNotifier<LiveQueueEntity> {
  late final String tokenId;

  Stream<LiveQueueEntity> build(String tokenId);
}

/// See also [LiveQueueStreamNotifier].
@ProviderFor(LiveQueueStreamNotifier)
const liveQueueStreamNotifierProvider = LiveQueueStreamNotifierFamily();

/// See also [LiveQueueStreamNotifier].
class LiveQueueStreamNotifierFamily
    extends Family<AsyncValue<LiveQueueEntity>> {
  /// See also [LiveQueueStreamNotifier].
  const LiveQueueStreamNotifierFamily();

  /// See also [LiveQueueStreamNotifier].
  LiveQueueStreamNotifierProvider call(String tokenId) {
    return LiveQueueStreamNotifierProvider(tokenId);
  }

  @override
  LiveQueueStreamNotifierProvider getProviderOverride(
    covariant LiveQueueStreamNotifierProvider provider,
  ) {
    return call(provider.tokenId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'liveQueueStreamNotifierProvider';
}

/// See also [LiveQueueStreamNotifier].
class LiveQueueStreamNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          LiveQueueStreamNotifier,
          LiveQueueEntity
        > {
  /// See also [LiveQueueStreamNotifier].
  LiveQueueStreamNotifierProvider(String tokenId)
    : this._internal(
        () => LiveQueueStreamNotifier()..tokenId = tokenId,
        from: liveQueueStreamNotifierProvider,
        name: r'liveQueueStreamNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$liveQueueStreamNotifierHash,
        dependencies: LiveQueueStreamNotifierFamily._dependencies,
        allTransitiveDependencies:
            LiveQueueStreamNotifierFamily._allTransitiveDependencies,
        tokenId: tokenId,
      );

  LiveQueueStreamNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tokenId,
  }) : super.internal();

  final String tokenId;

  @override
  Stream<LiveQueueEntity> runNotifierBuild(
    covariant LiveQueueStreamNotifier notifier,
  ) {
    return notifier.build(tokenId);
  }

  @override
  Override overrideWith(LiveQueueStreamNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: LiveQueueStreamNotifierProvider._internal(
        () => create()..tokenId = tokenId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tokenId: tokenId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<
    LiveQueueStreamNotifier,
    LiveQueueEntity
  >
  createElement() {
    return _LiveQueueStreamNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LiveQueueStreamNotifierProvider && other.tokenId == tokenId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tokenId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LiveQueueStreamNotifierRef
    on AutoDisposeStreamNotifierProviderRef<LiveQueueEntity> {
  /// The parameter `tokenId` of this provider.
  String get tokenId;
}

class _LiveQueueStreamNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          LiveQueueStreamNotifier,
          LiveQueueEntity
        >
    with LiveQueueStreamNotifierRef {
  _LiveQueueStreamNotifierProviderElement(super.provider);

  @override
  String get tokenId => (origin as LiveQueueStreamNotifierProvider).tokenId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
