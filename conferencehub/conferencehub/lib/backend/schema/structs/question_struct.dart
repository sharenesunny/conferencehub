// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends FFFirebaseStruct {
  QuestionStruct({
    String? name,
    String? description,
    int? correctOption,
    OptionsStruct? options,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        _correctOption = correctOption,
        _options = options,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "correctOption" field.
  int? _correctOption;
  int get correctOption => _correctOption ?? 0;
  set correctOption(int? val) => _correctOption = val;

  void incrementCorrectOption(int amount) =>
      correctOption = correctOption + amount;

  bool hasCorrectOption() => _correctOption != null;

  // "options" field.
  OptionsStruct? _options;
  OptionsStruct get options => _options ?? OptionsStruct();
  set options(OptionsStruct? val) => _options = val;

  void updateOptions(Function(OptionsStruct) updateFn) {
    updateFn(_options ??= OptionsStruct());
  }

  bool hasOptions() => _options != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        correctOption: castToType<int>(data['correctOption']),
        options: OptionsStruct.maybeFromMap(data['options']),
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuestionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'correctOption': _correctOption,
        'options': _options?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'correctOption': serializeParam(
          _correctOption,
          ParamType.int,
        ),
        'options': serializeParam(
          _options,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        correctOption: deserializeParam(
          data['correctOption'],
          ParamType.int,
          false,
        ),
        options: deserializeStructParam(
          data['options'],
          ParamType.DataStruct,
          false,
          structBuilder: OptionsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionStruct &&
        name == other.name &&
        description == other.description &&
        correctOption == other.correctOption &&
        options == other.options;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, description, correctOption, options]);
}

QuestionStruct createQuestionStruct({
  String? name,
  String? description,
  int? correctOption,
  OptionsStruct? options,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionStruct(
      name: name,
      description: description,
      correctOption: correctOption,
      options: options ?? (clearUnsetFields ? OptionsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionStruct? updateQuestionStruct(
  QuestionStruct? question, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    question
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuestionStruct? question,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (question == null) {
    return;
  }
  if (question.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && question.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionData = getQuestionFirestoreData(question, forFieldValue);
  final nestedData = questionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = question.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionFirestoreData(
  QuestionStruct? question, [
  bool forFieldValue = false,
]) {
  if (question == null) {
    return {};
  }
  final firestoreData = mapToFirestore(question.toMap());

  // Handle nested data for "options" field.
  addOptionsStructData(
    firestoreData,
    question.hasOptions() ? question.options : null,
    'options',
    forFieldValue,
  );

  // Add any Firestore field values
  question.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionListFirestoreData(
  List<QuestionStruct>? questions,
) =>
    questions?.map((e) => getQuestionFirestoreData(e, true)).toList() ?? [];
