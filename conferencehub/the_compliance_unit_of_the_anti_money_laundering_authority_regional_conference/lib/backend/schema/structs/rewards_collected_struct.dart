// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RewardsCollectedStruct extends FFFirebaseStruct {
  RewardsCollectedStruct({
    String? name,
    String? id,
    DocumentReference? user,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _id = id,
        _user = user,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  static RewardsCollectedStruct fromMap(Map<String, dynamic> data) =>
      RewardsCollectedStruct(
        name: data['name'] as String?,
        id: data['id'] as String?,
        user: data['user'] as DocumentReference?,
      );

  static RewardsCollectedStruct? maybeFromMap(dynamic data) => data is Map
      ? RewardsCollectedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
        'user': _user,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static RewardsCollectedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RewardsCollectedStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'RewardsCollectedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RewardsCollectedStruct &&
        name == other.name &&
        id == other.id &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([name, id, user]);
}

RewardsCollectedStruct createRewardsCollectedStruct({
  String? name,
  String? id,
  DocumentReference? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RewardsCollectedStruct(
      name: name,
      id: id,
      user: user,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RewardsCollectedStruct? updateRewardsCollectedStruct(
  RewardsCollectedStruct? rewardsCollected, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rewardsCollected
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRewardsCollectedStructData(
  Map<String, dynamic> firestoreData,
  RewardsCollectedStruct? rewardsCollected,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rewardsCollected == null) {
    return;
  }
  if (rewardsCollected.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && rewardsCollected.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rewardsCollectedData =
      getRewardsCollectedFirestoreData(rewardsCollected, forFieldValue);
  final nestedData =
      rewardsCollectedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rewardsCollected.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRewardsCollectedFirestoreData(
  RewardsCollectedStruct? rewardsCollected, [
  bool forFieldValue = false,
]) {
  if (rewardsCollected == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rewardsCollected.toMap());

  // Add any Firestore field values
  rewardsCollected.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRewardsCollectedListFirestoreData(
  List<RewardsCollectedStruct>? rewardsCollecteds,
) =>
    rewardsCollecteds
        ?.map((e) => getRewardsCollectedFirestoreData(e, true))
        .toList() ??
    [];
