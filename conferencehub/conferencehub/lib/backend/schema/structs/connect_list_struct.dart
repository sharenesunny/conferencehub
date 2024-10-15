// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ConnectListStruct extends FFFirebaseStruct {
  ConnectListStruct({
    DocumentReference? user,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _user = user,
        super(firestoreUtilData);

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  static ConnectListStruct fromMap(Map<String, dynamic> data) =>
      ConnectListStruct(
        user: data['user'] as DocumentReference?,
      );

  static ConnectListStruct? maybeFromMap(dynamic data) => data is Map
      ? ConnectListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ConnectListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConnectListStruct(
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'ConnectListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConnectListStruct && user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([user]);
}

ConnectListStruct createConnectListStruct({
  DocumentReference? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ConnectListStruct(
      user: user,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ConnectListStruct? updateConnectListStruct(
  ConnectListStruct? connectList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    connectList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addConnectListStructData(
  Map<String, dynamic> firestoreData,
  ConnectListStruct? connectList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (connectList == null) {
    return;
  }
  if (connectList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && connectList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final connectListData =
      getConnectListFirestoreData(connectList, forFieldValue);
  final nestedData =
      connectListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = connectList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getConnectListFirestoreData(
  ConnectListStruct? connectList, [
  bool forFieldValue = false,
]) {
  if (connectList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(connectList.toMap());

  // Add any Firestore field values
  connectList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getConnectListListFirestoreData(
  List<ConnectListStruct>? connectLists,
) =>
    connectLists?.map((e) => getConnectListFirestoreData(e, true)).toList() ??
    [];
