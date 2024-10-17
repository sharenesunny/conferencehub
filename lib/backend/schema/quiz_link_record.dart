import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizLinkRecord extends FirestoreRecord {
  QuizLinkRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "URL" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _url = snapshotData['URL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quizLink');

  static Stream<QuizLinkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizLinkRecord.fromSnapshot(s));

  static Future<QuizLinkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizLinkRecord.fromSnapshot(s));

  static QuizLinkRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizLinkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizLinkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizLinkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizLinkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizLinkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizLinkRecordData({
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'URL': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizLinkRecordDocumentEquality implements Equality<QuizLinkRecord> {
  const QuizLinkRecordDocumentEquality();

  @override
  bool equals(QuizLinkRecord? e1, QuizLinkRecord? e2) {
    return e1?.url == e2?.url;
  }

  @override
  int hash(QuizLinkRecord? e) => const ListEquality().hash([e?.url]);

  @override
  bool isValidKey(Object? o) => o is QuizLinkRecord;
}
