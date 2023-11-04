import 'package:busslina_dart_lightweight_lib/busslina_dart_lightweight_lib.dart'
    as llib;
import 'package:busslina_flutter_lightweight_lib/busslina_flutter_lightweight_lib.dart'
    as fllib;

import 'package:riverpod_test/riverpod_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonCard extends ConsumerStatefulWidget {
  final String id;

  const PersonCard({
    super.key,
    required this.id,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PersonCardState();
}

class _PersonCardState extends ConsumerState<PersonCard> {
  @override
  Widget build(BuildContext context) {
    final person = ref.watch(personFamProvider(widget.id));
    return Row(
      children: [
        // (01) Id
        fllib.Label(
          'Id: ${person.id}',
          color: Colors.black,
        ),

        // (02) Name
        fllib.Label(
          'Name: ${person.name}',
          color: Colors.black,
        ),

        // (03) Age
        fllib.Label(
          'Age: ${person.age}',
          color: Colors.black,
        ),
      ],
    ).onTap(() => ref.read(personSetProvider.notifier).delete(widget.id));
  }
}
