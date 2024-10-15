// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EarnPointsStruct extends FFFirebaseStruct {
  EarnPointsStruct({
    String? option,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _option = option,
        _image = image,
        super(firestoreUtilData);

  // "option" field.
  String? _option;
  String get option => _option ?? '';
  set option(String? val) => _option = val;

  bool hasOption() => _option != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static EarnPointsStruct fromMap(Map<String, dynamic> data) =>
      EarnPointsStruct(
        option: data['option'] as String?,
        image: data['image'] as String?,
      );

  static EarnPointsStruct? maybeFromMap(dynamic data) => data is Map
      ? EarnPointsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'option': _option,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'option': serializeParam(
          _option,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static EarnPointsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EarnPointsStruct(
        option: deserializeParam(
          data['option'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EarnPointsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EarnPointsStruct &&
        option == other.option &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([option, image]);
}

EarnPointsStruct createEarnPointsStruct({
  String? option,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EarnPointsStruct(
      option: option,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EarnPointsStruct? updateEarnPointsStruct(
  EarnPointsStruct? earnPoints, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    earnPoints
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEarnPointsStructData(
  Map<String, dynamic> firestoreData,
  EarnPointsStruct? earnPoints,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (earnPoints == null) {
    return;
  }
  if (earnPoints.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && earnPoints.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final earnPointsData = getEarnPointsFirestoreData(earnPoints, forFieldValue);
  final nestedData = earnPointsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = earnPoints.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEarnPointsFirestoreData(
  EarnPointsStruct? earnPoints, [
  bool forFieldValue = false,
]) {
  if (earnPoints == null) {
    return {};
  }
  final firestoreData = mapToFirestore(earnPoints.toMap());

  // Add any Firestore field values
  earnPoints.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEarnPointsListFirestoreData(
  List<EarnPointsStruct>? earnPointss,
) =>
    earnPointss?.map((e) => getEarnPointsFirestoreData(e, true)).toList() ?? [];
