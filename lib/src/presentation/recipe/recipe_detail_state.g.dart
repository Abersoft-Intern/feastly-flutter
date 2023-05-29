// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recipeDetailStateHash() => r'aac64e039060aa46323cc25848273ba5facb0839';

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

abstract class _$RecipeDetailState
    extends BuildlessAutoDisposeAsyncNotifier<Recipe> {
  late final int recipeId;

  FutureOr<Recipe> build(
    int recipeId,
  );
}

/// See also [RecipeDetailState].
@ProviderFor(RecipeDetailState)
const recipeDetailStateProvider = RecipeDetailStateFamily();

/// See also [RecipeDetailState].
class RecipeDetailStateFamily extends Family<AsyncValue<Recipe>> {
  /// See also [RecipeDetailState].
  const RecipeDetailStateFamily();

  /// See also [RecipeDetailState].
  RecipeDetailStateProvider call(
    int recipeId,
  ) {
    return RecipeDetailStateProvider(
      recipeId,
    );
  }

  @override
  RecipeDetailStateProvider getProviderOverride(
    covariant RecipeDetailStateProvider provider,
  ) {
    return call(
      provider.recipeId,
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
  String? get name => r'recipeDetailStateProvider';
}

/// See also [RecipeDetailState].
class RecipeDetailStateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<RecipeDetailState, Recipe> {
  /// See also [RecipeDetailState].
  RecipeDetailStateProvider(
    this.recipeId,
  ) : super.internal(
          () => RecipeDetailState()..recipeId = recipeId,
          from: recipeDetailStateProvider,
          name: r'recipeDetailStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recipeDetailStateHash,
          dependencies: RecipeDetailStateFamily._dependencies,
          allTransitiveDependencies:
              RecipeDetailStateFamily._allTransitiveDependencies,
        );

  final int recipeId;

  @override
  bool operator ==(Object other) {
    return other is RecipeDetailStateProvider && other.recipeId == recipeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, recipeId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<Recipe> runNotifierBuild(
    covariant RecipeDetailState notifier,
  ) {
    return notifier.build(
      recipeId,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
