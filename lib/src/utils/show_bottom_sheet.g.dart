// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_bottom_sheet.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$showBottomSheetHash() => r'8e220be74e19260dc1443fc4255c1777b988d919';

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

typedef ShowBottomSheetRef = AutoDisposeProviderRef<Future<dynamic> Function()>;

/// See also [showBottomSheet].
@ProviderFor(showBottomSheet)
const showBottomSheetProvider = ShowBottomSheetFamily();

/// See also [showBottomSheet].
class ShowBottomSheetFamily extends Family<Future<dynamic> Function()> {
  /// See also [showBottomSheet].
  const ShowBottomSheetFamily();

  /// See also [showBottomSheet].
  ShowBottomSheetProvider call({
    required BuildContext context,
    required String title,
    required String subtitle,
    String? yesText,
    void Function()? onYesTap,
    String? noText,
    void Function()? onNoTap,
    List<Widget>? customButtons,
  }) {
    return ShowBottomSheetProvider(
      context: context,
      title: title,
      subtitle: subtitle,
      yesText: yesText,
      onYesTap: onYesTap,
      noText: noText,
      onNoTap: onNoTap,
      customButtons: customButtons,
    );
  }

  @override
  ShowBottomSheetProvider getProviderOverride(
    covariant ShowBottomSheetProvider provider,
  ) {
    return call(
      context: provider.context,
      title: provider.title,
      subtitle: provider.subtitle,
      yesText: provider.yesText,
      onYesTap: provider.onYesTap,
      noText: provider.noText,
      onNoTap: provider.onNoTap,
      customButtons: provider.customButtons,
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
  String? get name => r'showBottomSheetProvider';
}

/// See also [showBottomSheet].
class ShowBottomSheetProvider
    extends AutoDisposeProvider<Future<dynamic> Function()> {
  /// See also [showBottomSheet].
  ShowBottomSheetProvider({
    required this.context,
    required this.title,
    required this.subtitle,
    this.yesText,
    this.onYesTap,
    this.noText,
    this.onNoTap,
    this.customButtons,
  }) : super.internal(
          (ref) => showBottomSheet(
            ref,
            context: context,
            title: title,
            subtitle: subtitle,
            yesText: yesText,
            onYesTap: onYesTap,
            noText: noText,
            onNoTap: onNoTap,
            customButtons: customButtons,
          ),
          from: showBottomSheetProvider,
          name: r'showBottomSheetProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$showBottomSheetHash,
          dependencies: ShowBottomSheetFamily._dependencies,
          allTransitiveDependencies:
              ShowBottomSheetFamily._allTransitiveDependencies,
        );

  final BuildContext context;
  final String title;
  final String subtitle;
  final String? yesText;
  final void Function()? onYesTap;
  final String? noText;
  final void Function()? onNoTap;
  final List<Widget>? customButtons;

  @override
  bool operator ==(Object other) {
    return other is ShowBottomSheetProvider &&
        other.context == context &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.yesText == yesText &&
        other.onYesTap == onYesTap &&
        other.noText == noText &&
        other.onNoTap == onNoTap &&
        other.customButtons == customButtons;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, subtitle.hashCode);
    hash = _SystemHash.combine(hash, yesText.hashCode);
    hash = _SystemHash.combine(hash, onYesTap.hashCode);
    hash = _SystemHash.combine(hash, noText.hashCode);
    hash = _SystemHash.combine(hash, onNoTap.hashCode);
    hash = _SystemHash.combine(hash, customButtons.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
