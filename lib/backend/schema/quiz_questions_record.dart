import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizQuestionsRecord extends FirestoreRecord {
  QuizQuestionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "correctAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "options" field.
  OptionsStruct? _options;
  OptionsStruct get options => _options ?? OptionsStruct();
  bool hasOptions() => _options != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _question = snapshotData['question'] as String?;
    _description = snapshotData['description'] as String?;
    _correctAnswer = snapshotData['correctAnswer'] as String?;
    _index = castToType<int>(snapshotData['index']);
    _options = OptionsStruct.maybeFromMap(snapshotData['options']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('quizQuestions')
          : FirebaseFirestore.instance.collectionGroup('quizQuestions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('quizQuestions').doc(id);

  static Stream<QuizQuestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizQuestionsRecord.fromSnapshot(s));

  static Future<QuizQuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizQuestionsRecord.fromSnapshot(s));

  static QuizQuestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizQuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizQuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizQuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizQuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizQuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizQuestionsRecordData({
  String? question,
  String? description,
  String? correctAnswer,
  int? index,
  OptionsStruct? options,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'question': question,
      'description': description,
      'correctAnswer': correctAnswer,
      'index': index,
      'options': OptionsStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "options" field.
  addOptionsStructData(firestoreData, options, 'options');

  return firestoreData;
}

class QuizQuestionsRecordDocumentEquality
    implements Equality<QuizQuestionsRecord> {
  const QuizQuestionsRecordDocumentEquality();

  @override
  bool equals(QuizQuestionsRecord? e1, QuizQuestionsRecord? e2) {
    return e1?.question == e2?.question &&
        e1?.description == e2?.description &&
        e1?.correctAnswer == e2?.correctAnswer &&
        e1?.index == e2?.index &&
        e1?.options == e2?.options;
  }

  @override
  int hash(QuizQuestionsRecord? e) => const ListEquality().hash(
      [e?.question, e?.description, e?.correctAnswer, e?.index, e?.options]);

  @override
  bool isValidKey(Object? o) => o is QuizQuestionsRecord;
}
