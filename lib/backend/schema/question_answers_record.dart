import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionAnswersRecord extends FirestoreRecord {
  QuestionAnswersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "questionID" field.
  String? _questionID;
  String get questionID => _questionID ?? '';
  bool hasQuestionID() => _questionID != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "votes" field.
  int? _votes;
  int get votes => _votes ?? 0;
  bool hasVotes() => _votes != null;

  // "votedBy" field.
  List<DocumentReference>? _votedBy;
  List<DocumentReference> get votedBy => _votedBy ?? const [];
  bool hasVotedBy() => _votedBy != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "presentationId" field.
  String? _presentationId;
  String get presentationId => _presentationId ?? '';
  bool hasPresentationId() => _presentationId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _questionID = snapshotData['questionID'] as String?;
    _name = snapshotData['name'] as String?;
    _votes = castToType<int>(snapshotData['votes']);
    _votedBy = getDataList(snapshotData['votedBy']);
    _question = snapshotData['question'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _presentationId = snapshotData['presentationId'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('questionAnswers')
          : FirebaseFirestore.instance.collectionGroup('questionAnswers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('questionAnswers').doc(id);

  static Stream<QuestionAnswersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionAnswersRecord.fromSnapshot(s));

  static Future<QuestionAnswersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionAnswersRecord.fromSnapshot(s));

  static QuestionAnswersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionAnswersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionAnswersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionAnswersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionAnswersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionAnswersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionAnswersRecordData({
  String? questionID,
  String? name,
  int? votes,
  String? question,
  DateTime? timestamp,
  String? presentationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'questionID': questionID,
      'name': name,
      'votes': votes,
      'question': question,
      'timestamp': timestamp,
      'presentationId': presentationId,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionAnswersRecordDocumentEquality
    implements Equality<QuestionAnswersRecord> {
  const QuestionAnswersRecordDocumentEquality();

  @override
  bool equals(QuestionAnswersRecord? e1, QuestionAnswersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.questionID == e2?.questionID &&
        e1?.name == e2?.name &&
        e1?.votes == e2?.votes &&
        listEquality.equals(e1?.votedBy, e2?.votedBy) &&
        e1?.question == e2?.question &&
        e1?.timestamp == e2?.timestamp &&
        e1?.presentationId == e2?.presentationId;
  }

  @override
  int hash(QuestionAnswersRecord? e) => const ListEquality().hash([
        e?.questionID,
        e?.name,
        e?.votes,
        e?.votedBy,
        e?.question,
        e?.timestamp,
        e?.presentationId
      ]);

  @override
  bool isValidKey(Object? o) => o is QuestionAnswersRecord;
}
