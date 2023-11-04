import 'package:freezed_annotation/freezed_annotation.dart';

export 'person.providers.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person {
  factory Person({
    // (01) Id
    required String id,

    // (02) Name
    required String name,

    // (03) Age
    required int age,
  }) = _Person;
}
