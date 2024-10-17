// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QandaVotesStruct extends FFFirebaseStruct {
  QandaVotesStruct({
    String? name,
    DateTime? timestamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _timestamp = timestamp,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  static QandaVotesStruct fromMap(Map<String, dynamic> data) =>
      QandaVotesStruct(
        name: data['name'] as String?,
        timestamp: data['timestamp'] as DateTime?,
      );

  static QandaVotesStruct? maybeFromMap(dynamic data) => data is Map
      ? QandaVotesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'timestamp': _timestamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static QandaVotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      QandaVotesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'QandaVotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QandaVotesStruct &&
        name == other.name &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode => const ListEquality().hash([name, timestamp]);
}

QandaVotesStruct createQandaVotesStruct({
  String? name,
  DateTime? timestamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QandaVotesStruct(
      name: name,
      timestamp: timestamp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QandaVotesStruct? updateQandaVotesStruct(
  QandaVotesStruct? qandaVotes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    qandaVotes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQandaVotesStructData(
  Map<String, dynamic> firestoreData,
  QandaVotesStruct? qandaVotes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (qandaVotes == null) {
    return;
  }
  if (qandaVotes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && qandaVotes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final qandaVotesData = getQandaVotesFirestoreData(qandaVotes, forFieldValue);
  final nestedData = qandaVotesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = qandaVotes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQandaVotesFirestoreData(
  QandaVotesStruct? qandaVotes, [
  bool forFieldValue = false,
]) {
  if (qandaVotes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(qandaVotes.toMap());

  // Add any Firestore field values
  qandaVotes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQandaVotesListFirestoreData(
  List<QandaVotesStruct>? qandaVotess,
) =>
    qandaVotess?.map((e) => getQandaVotesFirestoreData(e, true)).toList() ?? [];
