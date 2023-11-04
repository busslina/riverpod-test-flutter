import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/core/data/person/person.dart';
import 'package:riverpod_test/core/widgets/person/person.card.dart';

class PersonsPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PersonsPageState();
}

class _PersonsPageState extends ConsumerState<PersonsPage> {
  @override
  Widget build(BuildContext context) {
    final persons = ref.watch(personSetProvider);
    return Column(
      children: persons.map((personId) => PersonCard(id: personId)).toList(),
    );
  }
}
