import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckedInRecord extends FirestoreRecord {
  CheckedInRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "usersCheckedIn" field.
  List<CheckInStruct>? _usersCheckedIn;
  List<CheckInStruct> get usersCheckedIn => _usersCheckedIn ?? const [];
  bool hasUsersCheckedIn() => _usersCheckedIn != null;

  // "checkInCode" field.
  String? _checkInCode;
  String get checkInCode => _checkInCode ?? '';
  bool hasCheckInCode() => _checkInCode != null;

  void _initializeFields() {
    _day = snapshotData['day'] as DateTime?;
    _usersCheckedIn = getStructList(
      snapshotData['usersCheckedIn'],
      CheckInStruct.fromMap,
    );
    _checkInCode = snapshotData['checkInCode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('checkedIn');

  static Stream<CheckedInRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CheckedInRecord.fromSnapshot(s));

  static Future<CheckedInRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CheckedInRecord.fromSnapshot(s));

  static CheckedInRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CheckedInRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CheckedInRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CheckedInRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CheckedInRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CheckedInRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCheckedInRecordData({
  DateTime? day,
  String? checkInCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'day': day,
      'checkInCode': checkInCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class CheckedInRecordDocumentEquality implements Equality<CheckedInRecord> {
  const CheckedInRecordDocumentEquality();

  @override
  bool equals(CheckedInRecord? e1, CheckedInRecord? e2) {
    const listEquality = ListEquality();
    return e1?.day == e2?.day &&
        listEquality.equals(e1?.usersCheckedIn, e2?.usersCheckedIn) &&
        e1?.checkInCode == e2?.checkInCode;
  }

  @override
  int hash(CheckedInRecord? e) =>
      const ListEquality().hash([e?.day, e?.usersCheckedIn, e?.checkInCode]);

  @override
  bool isValidKey(Object? o) => o is CheckedInRecord;
}
