// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OptionsStruct extends FFFirebaseStruct {
  OptionsStruct({
    String? option1,
    String? option2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _option1 = option1,
        _option2 = option2,
        super(firestoreUtilData);

  // "option1" field.
  String? _option1;
  String get option1 => _option1 ?? '';
  set option1(String? val) => _option1 = val;

  bool hasOption1() => _option1 != null;

  // "option2" field.
  String? _option2;
  String get option2 => _option2 ?? '';
  set option2(String? val) => _option2 = val;

  bool hasOption2() => _option2 != null;

  static OptionsStruct fromMap(Map<String, dynamic> data) => OptionsStruct(
        option1: data['option1'] as String?,
        option2: data['option2'] as String?,
      );

  static OptionsStruct? maybeFromMap(dynamic data) =>
      data is Map ? OptionsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'option1': _option1,
        'option2': _option2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'option1': serializeParam(
          _option1,
          ParamType.String,
        ),
        'option2': serializeParam(
          _option2,
          ParamType.String,
        ),
      }.withoutNulls;

  static OptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OptionsStruct(
        option1: deserializeParam(
          data['option1'],
          ParamType.String,
          false,
        ),
        option2: deserializeParam(
          data['option2'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OptionsStruct &&
        option1 == other.option1 &&
        option2 == other.option2;
  }

  @override
  int get hashCode => const ListEquality().hash([option1, option2]);
}

OptionsStruct createOptionsStruct({
  String? option1,
  String? option2,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OptionsStruct(
      option1: option1,
      option2: option2,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OptionsStruct? updateOptionsStruct(
  OptionsStruct? options, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    options
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOptionsStructData(
  Map<String, dynamic> firestoreData,
  OptionsStruct? options,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (options == null) {
    return;
  }
  if (options.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && options.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final optionsData = getOptionsFirestoreData(options, forFieldValue);
  final nestedData = optionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = options.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOptionsFirestoreData(
  OptionsStruct? options, [
  bool forFieldValue = false,
]) {
  if (options == null) {
    return {};
  }
  final firestoreData = mapToFirestore(options.toMap());

  // Add any Firestore field values
  options.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOptionsListFirestoreData(
  List<OptionsStruct>? optionss,
) =>
    optionss?.map((e) => getOptionsFirestoreData(e, true)).toList() ?? [];
