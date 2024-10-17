// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CheckInStruct extends FFFirebaseStruct {
  CheckInStruct({
    DateTime? time,
    String? name,
    String? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _time = time,
        _name = name,
        _uid = uid,
        super(firestoreUtilData);

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;

  bool hasTime() => _time != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  static CheckInStruct fromMap(Map<String, dynamic> data) => CheckInStruct(
        time: data['time'] as DateTime?,
        name: data['name'] as String?,
        uid: data['uid'] as String?,
      );

  static CheckInStruct? maybeFromMap(dynamic data) =>
      data is Map ? CheckInStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'time': _time,
        'name': _name,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
      }.withoutNulls;

  static CheckInStruct fromSerializableMap(Map<String, dynamic> data) =>
      CheckInStruct(
        time: deserializeParam(
          data['time'],
          ParamType.DateTime,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CheckInStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CheckInStruct &&
        time == other.time &&
        name == other.name &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality().hash([time, name, uid]);
}

CheckInStruct createCheckInStruct({
  DateTime? time,
  String? name,
  String? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CheckInStruct(
      time: time,
      name: name,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CheckInStruct? updateCheckInStruct(
  CheckInStruct? checkIn, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    checkIn
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCheckInStructData(
  Map<String, dynamic> firestoreData,
  CheckInStruct? checkIn,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (checkIn == null) {
    return;
  }
  if (checkIn.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && checkIn.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final checkInData = getCheckInFirestoreData(checkIn, forFieldValue);
  final nestedData = checkInData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = checkIn.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCheckInFirestoreData(
  CheckInStruct? checkIn, [
  bool forFieldValue = false,
]) {
  if (checkIn == null) {
    return {};
  }
  final firestoreData = mapToFirestore(checkIn.toMap());

  // Add any Firestore field values
  checkIn.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCheckInListFirestoreData(
  List<CheckInStruct>? checkIns,
) =>
    checkIns?.map((e) => getCheckInFirestoreData(e, true)).toList() ?? [];
