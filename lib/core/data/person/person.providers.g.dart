// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$personSetHash() => r'fa4e84e87956057835c8b7c8c7fdf95863b09103';

/// (01) Person set
///
/// Copied from [PersonSet].
@ProviderFor(PersonSet)
final personSetProvider = NotifierProvider<PersonSet, ISet<String>>.internal(
  PersonSet.new,
  name: r'personSetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$personSetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PersonSet = Notifier<ISet<String>>;
String _$personFamHash() => r'e4b0c53ffebc0274aeee80156f6f37dc6ebb8c0b';

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

abstract class _$PersonFam extends BuildlessNotifier<Person> {
  late final String id;

  Person build(
    String id,
  );
}

/// (02) Person family
///
/// Copied from [PersonFam].
@ProviderFor(PersonFam)
const personFamProvider = PersonFamFamily();

/// (02) Person family
///
/// Copied from [PersonFam].
class PersonFamFamily extends Family<Person> {
  /// (02) Person family
  ///
  /// Copied from [PersonFam].
  const PersonFamFamily();

  /// (02) Person family
  ///
  /// Copied from [PersonFam].
  PersonFamProvider call(
    String id,
  ) {
    return PersonFamProvider(
      id,
    );
  }

  @override
  PersonFamProvider getProviderOverride(
    covariant PersonFamProvider provider,
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
  String? get name => r'personFamProvider';
}

/// (02) Person family
///
/// Copied from [PersonFam].
class PersonFamProvider extends NotifierProviderImpl<PersonFam, Person> {
  /// (02) Person family
  ///
  /// Copied from [PersonFam].
  PersonFamProvider(
    String id,
  ) : this._internal(
          () => PersonFam()..id = id,
          from: personFamProvider,
          name: r'personFamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$personFamHash,
          dependencies: PersonFamFamily._dependencies,
          allTransitiveDependencies: PersonFamFamily._allTransitiveDependencies,
          id: id,
        );

  PersonFamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Person runNotifierBuild(
    covariant PersonFam notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(PersonFam Function() create) {
    return ProviderOverride(
      origin: this,
      override: PersonFamProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  NotifierProviderElement<PersonFam, Person> createElement() {
    return _PersonFamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PersonFamProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PersonFamRef on NotifierProviderRef<Person> {
  /// The parameter `id` of this provider.
  String get id;
}

class _PersonFamProviderElement
    extends NotifierProviderElement<PersonFam, Person> with PersonFamRef {
  _PersonFamProviderElement(super.provider);

  @override
  String get id => (origin as PersonFamProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
