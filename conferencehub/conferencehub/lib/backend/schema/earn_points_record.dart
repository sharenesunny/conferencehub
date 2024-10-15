import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EarnPointsRecord extends FirestoreRecord {
  EarnPointsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "option" field.
  List<EarnPointsStruct>? _option;
  List<EarnPointsStruct> get option => _option ?? const [];
  bool hasOption() => _option != null;

  void _initializeFields() {
    _option = getStructList(
      snapshotData['option'],
      EarnPointsStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('earnPoints');

  static Stream<EarnPointsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EarnPointsRecord.fromSnapshot(s));

  static Future<EarnPointsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EarnPointsRecord.fromSnapshot(s));

  static EarnPointsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EarnPointsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EarnPointsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EarnPointsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EarnPointsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EarnPointsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEarnPointsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class EarnPointsRecordDocumentEquality implements Equality<EarnPointsRecord> {
  const EarnPointsRecordDocumentEquality();

  @override
  bool equals(EarnPointsRecord? e1, EarnPointsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.option, e2?.option);
  }

  @override
  int hash(EarnPointsRecord? e) => const ListEquality().hash([e?.option]);

  @override
  bool isValidKey(Object? o) => o is EarnPointsRecord;
}
