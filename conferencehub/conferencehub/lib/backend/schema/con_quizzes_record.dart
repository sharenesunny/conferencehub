import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConQuizzesRecord extends FirestoreRecord {
  ConQuizzesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "quizID" field.
  String? _quizID;
  String get quizID => _quizID ?? '';
  bool hasQuizID() => _quizID != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "questionNumber" field.
  int? _questionNumber;
  int get questionNumber => _questionNumber ?? 0;
  bool hasQuestionNumber() => _questionNumber != null;

  // "questions" field.
  List<QuestionStruct>? _questions;
  List<QuestionStruct> get questions => _questions ?? const [];
  bool hasQuestions() => _questions != null;

  // "totalPoints" field.
  int? _totalPoints;
  int get totalPoints => _totalPoints ?? 0;
  bool hasTotalPoints() => _totalPoints != null;

  void _initializeFields() {
    _quizID = snapshotData['quizID'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _questionNumber = castToType<int>(snapshotData['questionNumber']);
    _questions = getStructList(
      snapshotData['questions'],
      QuestionStruct.fromMap,
    );
    _totalPoints = castToType<int>(snapshotData['totalPoints']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conQuizzes');

  static Stream<ConQuizzesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConQuizzesRecord.fromSnapshot(s));

  static Future<ConQuizzesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConQuizzesRecord.fromSnapshot(s));

  static ConQuizzesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConQuizzesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConQuizzesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConQuizzesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConQuizzesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConQuizzesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConQuizzesRecordData({
  String? quizID,
  String? name,
  String? description,
  int? questionNumber,
  int? totalPoints,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quizID': quizID,
      'name': name,
      'description': description,
      'questionNumber': questionNumber,
      'totalPoints': totalPoints,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConQuizzesRecordDocumentEquality implements Equality<ConQuizzesRecord> {
  const ConQuizzesRecordDocumentEquality();

  @override
  bool equals(ConQuizzesRecord? e1, ConQuizzesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.quizID == e2?.quizID &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.questionNumber == e2?.questionNumber &&
        listEquality.equals(e1?.questions, e2?.questions) &&
        e1?.totalPoints == e2?.totalPoints;
  }

  @override
  int hash(ConQuizzesRecord? e) => const ListEquality().hash([
        e?.quizID,
        e?.name,
        e?.description,
        e?.questionNumber,
        e?.questions,
        e?.totalPoints
      ]);

  @override
  bool isValidKey(Object? o) => o is ConQuizzesRecord;
}
