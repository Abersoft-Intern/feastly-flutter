// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$savedRepositoryHash() => r'ab766a27d735523b399fff17bc80ab23277acd9e';

/// See also [savedRepository].
@ProviderFor(savedRepository)
final savedRepositoryProvider = AutoDisposeProvider<SavedRepository>.internal(
  savedRepository,
  name: r'savedRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$savedRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SavedRepositoryRef = AutoDisposeProviderRef<SavedRepository>;
String _$userCategoriesHash() => r'f690c1d6d9802a41d66acd7798bd00fc4a1c2d33';

/// See also [userCategories].
@ProviderFor(userCategories)
final userCategoriesProvider =
    AutoDisposeFutureProvider<List<UserCategory>>.internal(
  userCategories,
  name: r'userCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserCategoriesRef = AutoDisposeFutureProviderRef<List<UserCategory>>;
String _$savedRecipesHash() => r'e37e329b83950a8d2458fcfd47e0f1fd9a2ee823';

/// See also [savedRecipes].
@ProviderFor(savedRecipes)
final savedRecipesProvider =
    AutoDisposeFutureProvider<List<SavedRecipe>>.internal(
  savedRecipes,
  name: r'savedRecipesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$savedRecipesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SavedRecipesRef = AutoDisposeFutureProviderRef<List<SavedRecipe>>;
String _$savedRecipesByCategoryHash() =>
    r'6f600739e82a09560a7b5c1966bbf0e8897fc85c';

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

typedef SavedRecipesByCategoryRef
    = AutoDisposeFutureProviderRef<List<SavedRecipe>>;

/// See also [savedRecipesByCategory].
@ProviderFor(savedRecipesByCategory)
const savedRecipesByCategoryProvider = SavedRecipesByCategoryFamily();

/// See also [savedRecipesByCategory].
class SavedRecipesByCategoryFamily
    extends Family<AsyncValue<List<SavedRecipe>>> {
  /// See also [savedRecipesByCategory].
  const SavedRecipesByCategoryFamily();

  /// See also [savedRecipesByCategory].
  SavedRecipesByCategoryProvider call(
    int categoryId,
  ) {
    return SavedRecipesByCategoryProvider(
      categoryId,
    );
  }

  @override
  SavedRecipesByCategoryProvider getProviderOverride(
    covariant SavedRecipesByCategoryProvider provider,
  ) {
    return call(
      provider.categoryId,
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
  String? get name => r'savedRecipesByCategoryProvider';
}

/// See also [savedRecipesByCategory].
class SavedRecipesByCategoryProvider
    extends AutoDisposeFutureProvider<List<SavedRecipe>> {
  /// See also [savedRecipesByCategory].
  SavedRecipesByCategoryProvider(
    this.categoryId,
  ) : super.internal(
          (ref) => savedRecipesByCategory(
            ref,
            categoryId,
          ),
          from: savedRecipesByCategoryProvider,
          name: r'savedRecipesByCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$savedRecipesByCategoryHash,
          dependencies: SavedRecipesByCategoryFamily._dependencies,
          allTransitiveDependencies:
              SavedRecipesByCategoryFamily._allTransitiveDependencies,
        );

  final int categoryId;

  @override
  bool operator ==(Object other) {
    return other is SavedRecipesByCategoryProvider &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
