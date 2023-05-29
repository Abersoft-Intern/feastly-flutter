// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'cook_time')
  int get cookTime => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'cooking_method')
  String get cookingMethod => throw _privateConstructorUsedError;
  String get blurhash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {int id,
      String name,
      int rating,
      @JsonKey(name: 'cook_time') int cookTime,
      String thumbnail,
      List<Ingredient> ingredients,
      List<Category> categories,
      @JsonKey(name: 'cooking_method') String cookingMethod,
      String blurhash});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rating = null,
    Object? cookTime = null,
    Object? thumbnail = null,
    Object? ingredients = null,
    Object? categories = null,
    Object? cookingMethod = null,
    Object? blurhash = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      cookTime: null == cookTime
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      cookingMethod: null == cookingMethod
          ? _value.cookingMethod
          : cookingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      blurhash: null == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$_RecipeCopyWith(_$_Recipe value, $Res Function(_$_Recipe) then) =
      __$$_RecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int rating,
      @JsonKey(name: 'cook_time') int cookTime,
      String thumbnail,
      List<Ingredient> ingredients,
      List<Category> categories,
      @JsonKey(name: 'cooking_method') String cookingMethod,
      String blurhash});
}

/// @nodoc
class __$$_RecipeCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$_Recipe>
    implements _$$_RecipeCopyWith<$Res> {
  __$$_RecipeCopyWithImpl(_$_Recipe _value, $Res Function(_$_Recipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rating = null,
    Object? cookTime = null,
    Object? thumbnail = null,
    Object? ingredients = null,
    Object? categories = null,
    Object? cookingMethod = null,
    Object? blurhash = null,
  }) {
    return _then(_$_Recipe(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      cookTime: null == cookTime
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      cookingMethod: null == cookingMethod
          ? _value.cookingMethod
          : cookingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      blurhash: null == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipe implements _Recipe {
  const _$_Recipe(
      {required this.id,
      required this.name,
      required this.rating,
      @JsonKey(name: 'cook_time') required this.cookTime,
      required this.thumbnail,
      required final List<Ingredient> ingredients,
      required final List<Category> categories,
      @JsonKey(name: 'cooking_method') required this.cookingMethod,
      required this.blurhash})
      : _ingredients = ingredients,
        _categories = categories;

  factory _$_Recipe.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int rating;
  @override
  @JsonKey(name: 'cook_time')
  final int cookTime;
  @override
  final String thumbnail;
  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey(name: 'cooking_method')
  final String cookingMethod;
  @override
  final String blurhash;

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, rating: $rating, cookTime: $cookTime, thumbnail: $thumbnail, ingredients: $ingredients, categories: $categories, cookingMethod: $cookingMethod, blurhash: $blurhash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.cookTime, cookTime) ||
                other.cookTime == cookTime) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.cookingMethod, cookingMethod) ||
                other.cookingMethod == cookingMethod) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      rating,
      cookTime,
      thumbnail,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_categories),
      cookingMethod,
      blurhash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      __$$_RecipeCopyWithImpl<_$_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {required final int id,
      required final String name,
      required final int rating,
      @JsonKey(name: 'cook_time') required final int cookTime,
      required final String thumbnail,
      required final List<Ingredient> ingredients,
      required final List<Category> categories,
      @JsonKey(name: 'cooking_method') required final String cookingMethod,
      required final String blurhash}) = _$_Recipe;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get rating;
  @override
  @JsonKey(name: 'cook_time')
  int get cookTime;
  @override
  String get thumbnail;
  @override
  List<Ingredient> get ingredients;
  @override
  List<Category> get categories;
  @override
  @JsonKey(name: 'cooking_method')
  String get cookingMethod;
  @override
  String get blurhash;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      throw _privateConstructorUsedError;
}

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  @JsonKey(name: 'item')
  String get name => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
  @useResult
  $Res call({@JsonKey(name: 'item') String name, int qty});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$_IngredientCopyWith(
          _$_Ingredient value, $Res Function(_$_Ingredient) then) =
      __$$_IngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'item') String name, int qty});
}

/// @nodoc
class __$$_IngredientCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$_Ingredient>
    implements _$$_IngredientCopyWith<$Res> {
  __$$_IngredientCopyWithImpl(
      _$_Ingredient _value, $Res Function(_$_Ingredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? qty = null,
  }) {
    return _then(_$_Ingredient(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredient implements _Ingredient {
  const _$_Ingredient(
      {@JsonKey(name: 'item') required this.name, required this.qty});

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  @override
  @JsonKey(name: 'item')
  final String name;
  @override
  final int qty;

  @override
  String toString() {
    return 'Ingredient(name: $name, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ingredient &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      __$$_IngredientCopyWithImpl<_$_Ingredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientToJson(
      this,
    );
  }
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {@JsonKey(name: 'item') required final String name,
      required final int qty}) = _$_Ingredient;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  @JsonKey(name: 'item')
  String get name;
  @override
  int get qty;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
