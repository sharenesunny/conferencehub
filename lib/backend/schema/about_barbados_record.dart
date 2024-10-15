import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AboutBarbadosRecord extends FirestoreRecord {
  AboutBarbadosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "featuredImage" field.
  String? _featuredImage;
  String get featuredImage => _featuredImage ?? '';
  bool hasFeaturedImage() => _featuredImage != null;

  void _initializeFields() {
    _featuredImage = snapshotData['featuredImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aboutBarbados');

  static Stream<AboutBarbadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AboutBarbadosRecord.fromSnapshot(s));

  static Future<AboutBarbadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AboutBarbadosRecord.fromSnapshot(s));

  static AboutBarbadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AboutBarbadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AboutBarbadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AboutBarbadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AboutBarbadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AboutBarbadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAboutBarbadosRecordData({
  String? featuredImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'featuredImage': featuredImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class AboutBarbadosRecordDocumentEquality
    implements Equality<AboutBarbadosRecord> {
  const AboutBarbadosRecordDocumentEquality();

  @override
  bool equals(AboutBarbadosRecord? e1, AboutBarbadosRecord? e2) {
    return e1?.featuredImage == e2?.featuredImage;
  }

  @override
  int hash(AboutBarbadosRecord? e) =>
      const ListEquality().hash([e?.featuredImage]);

  @override
  bool isValidKey(Object? o) => o is AboutBarbadosRecord;
}
