// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeGroupHash() => r'39471492507d8de771a956e8abd148b11584ad60';

/// See also [activeGroup].
@ProviderFor(activeGroup)
final activeGroupProvider = AutoDisposeProvider<GroupPreview?>.internal(
  activeGroup,
  name: r'activeGroupProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$activeGroupHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ActiveGroupRef = AutoDisposeProviderRef<GroupPreview?>;
String _$groupsStateHash() => r'499e3669a0f3486678a372458ddf834a6b10e995';

/// See also [GroupsState].
@ProviderFor(GroupsState)
final groupsStateProvider =
    AutoDisposeAsyncNotifierProvider<GroupsState, List<GroupPreview>>.internal(
  GroupsState.new,
  name: r'groupsStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$groupsStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GroupsState = AutoDisposeAsyncNotifier<List<GroupPreview>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
