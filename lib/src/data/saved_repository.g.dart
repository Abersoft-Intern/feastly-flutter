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
String _$savedRecipesHash() => r'c25600b34af95405a40fd03bba5717c9aab070bd';

/// See also [savedRecipes].
@ProviderFor(savedRecipes)
final savedRecipesProvider =
    AutoDisposeFutureProvider<List<RecipePreview>>.internal(
  savedRecipes,
  name: r'savedRecipesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$savedRecipesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SavedRecipesRef = AutoDisposeFutureProviderRef<List<RecipePreview>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
