import 'package:busslina_dart_lightweight_lib/busslina_dart_lightweight_lib.dart'
    as llib;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/riverpod_test.dart';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'person.providers.g.dart';

/// (01) Person set
@Riverpod(keepAlive: true)
class PersonSet extends _$PersonSet {
  @override
  bool updateShouldNotify(ISet<String> previous, ISet<String> next) =>
      previous != next;

  @override
  ISet<String> build() {
    llib.debug('PersonSet.build()');
    return ISet(_persons.map((person) => person.id).toSet());
  }

  void delete(String id) {
    llib.debug('PersonSet.delete() -- $id');
    state = state.remove(id);
  }
}

/// (02) Person family
@Riverpod(keepAlive: false)
class PersonFam extends _$PersonFam {
  KeepAliveLink? _keepAliveLink;

  @override
  Person build(String id) {
    _keepAliveLink = ref.keepAlive();
    llib.debug('PersonFam.build() -- $id');

    ref.onDispose(() {
      llib.debug('PersonFam.onDispose() -- $id');
    });

    ref.listen(personSetProvider, (_, next) {
      if (!next.contains(id)) {
        _deleted();
      }
    });

    return _persons.where((person) => person.id == id).first;
  }

  void _deleted() => _keepAliveLink?.close();
}

final _persons = {
  Person(id: '1', name: 'John', age: 20),
  Person(id: '2', name: 'Jane', age: 21),
  Person(id: '3', name: 'Jack', age: 22),
  Person(id: '4', name: 'Jill', age: 23),
};
