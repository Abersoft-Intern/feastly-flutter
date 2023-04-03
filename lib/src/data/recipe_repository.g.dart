// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recipeRepositoryHash() => r'515e9380b34b10bc6fb5979b2308da2130f8266b';

/// See also [recipeRepository].
@ProviderFor(recipeRepository)
final recipeRepositoryProvider = AutoDisposeProvider<RecipeRepository>.internal(
  recipeRepository,
  name: r'recipeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recipeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RecipeRepositoryRef = AutoDisposeProviderRef<RecipeRepository>;
String _$recipeHash() => r'fe2379a80ebabd2586aa05efd6a386fce3f3d6f7';

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

typedef RecipeRef = AutoDisposeFutureProviderRef<Recipe>;

/// See also [recipe].
@ProviderFor(recipe)
const recipeProvider = RecipeFamily();

/// See also [recipe].
class RecipeFamily extends Family<AsyncValue<Recipe>> {
  /// See also [recipe].
  const RecipeFamily();

  /// See also [recipe].
  RecipeProvider call({
    required int recipeId,
  }) {
    return RecipeProvider(
      recipeId: recipeId,
    );
  }

  @override
  RecipeProvider getProviderOverride(
    covariant RecipeProvider provider,
  ) {
    return call(
      recipeId: provider.recipeId,
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
  String? get name => r'recipeProvider';
}

/// See also [recipe].
class RecipeProvider extends AutoDisposeFutureProvider<Recipe> {
  /// See also [recipe].
  RecipeProvider({
    required this.recipeId,
  }) : super.internal(
          (ref) => recipe(
            ref,
            recipeId: recipeId,
          ),
          from: recipeProvider,
          name: r'recipeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recipeHash,
          dependencies: RecipeFamily._dependencies,
          allTransitiveDependencies: RecipeFamily._allTransitiveDependencies,
        );

  final int recipeId;

  @override
  bool operator ==(Object other) {
    return other is RecipeProvider && other.recipeId == recipeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, recipeId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
