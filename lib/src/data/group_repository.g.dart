// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupRepositoryHash() => r'3635f792f86b9c8e6e47e323df8a72c1c7c160be';

/// See also [groupRepository].
@ProviderFor(groupRepository)
final groupRepositoryProvider = Provider<GroupRepository>.internal(
  groupRepository,
  name: r'groupRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$groupRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GroupRepositoryRef = ProviderRef<GroupRepository>;
String _$groupDetailHash() => r'425d8567e60f2a2f44ac1139a0ed6097b419de40';

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

typedef GroupDetailRef = AutoDisposeFutureProviderRef<Group>;

/// See also [groupDetail].
@ProviderFor(groupDetail)
const groupDetailProvider = GroupDetailFamily();

/// See also [groupDetail].
class GroupDetailFamily extends Family<AsyncValue<Group>> {
  /// See also [groupDetail].
  const GroupDetailFamily();

  /// See also [groupDetail].
  GroupDetailProvider call(
    int id,
  ) {
    return GroupDetailProvider(
      id,
    );
  }

  @override
  GroupDetailProvider getProviderOverride(
    covariant GroupDetailProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'groupDetailProvider';
}

/// See also [groupDetail].
class GroupDetailProvider extends AutoDisposeFutureProvider<Group> {
  /// See also [groupDetail].
  GroupDetailProvider(
    this.id,
  ) : super.internal(
          (ref) => groupDetail(
            ref,
            id,
          ),
          from: groupDetailProvider,
          name: r'groupDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupDetailHash,
          dependencies: GroupDetailFamily._dependencies,
          allTransitiveDependencies:
              GroupDetailFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is GroupDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$groupRecipesHash() => r'4775b8889700404c0fbd7fd391dc4ff7c9256bd2';
typedef GroupRecipesRef = AutoDisposeFutureProviderRef<List<SavedRecipe>>;

/// See also [groupRecipes].
@ProviderFor(groupRecipes)
const groupRecipesProvider = GroupRecipesFamily();

/// See also [groupRecipes].
class GroupRecipesFamily extends Family<AsyncValue<List<SavedRecipe>>> {
  /// See also [groupRecipes].
  const GroupRecipesFamily();

  /// See also [groupRecipes].
  GroupRecipesProvider call(
    int? id,
  ) {
    return GroupRecipesProvider(
      id,
    );
  }

  @override
  GroupRecipesProvider getProviderOverride(
    covariant GroupRecipesProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'groupRecipesProvider';
}

/// See also [groupRecipes].
class GroupRecipesProvider
    extends AutoDisposeFutureProvider<List<SavedRecipe>> {
  /// See also [groupRecipes].
  GroupRecipesProvider(
    this.id,
  ) : super.internal(
          (ref) => groupRecipes(
            ref,
            id,
          ),
          from: groupRecipesProvider,
          name: r'groupRecipesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupRecipesHash,
          dependencies: GroupRecipesFamily._dependencies,
          allTransitiveDependencies:
              GroupRecipesFamily._allTransitiveDependencies,
        );

  final int? id;

  @override
  bool operator ==(Object other) {
    return other is GroupRecipesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
