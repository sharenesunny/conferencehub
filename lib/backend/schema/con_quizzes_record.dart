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

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "option1" field.
  String? _option1;
  String get option1 => _option1 ?? '';
  bool hasOption1() => _option1 != null;

  // "option2" field.
  String? _option2;
  String get option2 => _option2 ?? '';
  bool hasOption2() => _option2 != null;

  // "votedop1" field.
  List<DocumentReference>? _votedop1;
  List<DocumentReference> get votedop1 => _votedop1 ?? const [];
  bool hasVotedop1() => _votedop1 != null;

  // "votedop2" field.
  List<DocumentReference>? _votedop2;
  List<DocumentReference> get votedop2 => _votedop2 ?? const [];
  bool hasVotedop2() => _votedop2 != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "votedUser" field.
  List<DocumentReference>? _votedUser;
  List<DocumentReference> get votedUser => _votedUser ?? const [];
  bool hasVotedUser() => _votedUser != null;

  // "selectedOption" field.
  Color? _selectedOption;
  Color? get selectedOption => _selectedOption;
  bool hasSelectedOption() => _selectedOption != null;

  void _initializeFields() {
    _quizID = snapshotData['quizID'] as String?;
    _question = snapshotData['question'] as String?;
    _option1 = snapshotData['option1'] as String?;
    _option2 = snapshotData['option2'] as String?;
    _votedop1 = getDataList(snapshotData['votedop1']);
    _votedop2 = getDataList(snapshotData['votedop2']);
    _active = snapshotData['active'] as bool?;
    _votedUser = getDataList(snapshotData['votedUser']);
    _selectedOption = getSchemaColor(snapshotData['selectedOption']);
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
  String? question,
  String? option1,
  String? option2,
  bool? active,
  Color? selectedOption,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quizID': quizID,
      'question': question,
      'option1': option1,
      'option2': option2,
      'active': active,
      'selectedOption': selectedOption,
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
        e1?.question == e2?.question &&
        e1?.option1 == e2?.option1 &&
        e1?.option2 == e2?.option2 &&
        listEquality.equals(e1?.votedop1, e2?.votedop1) &&
        listEquality.equals(e1?.votedop2, e2?.votedop2) &&
        e1?.active == e2?.active &&
        listEquality.equals(e1?.votedUser, e2?.votedUser) &&
        e1?.selectedOption == e2?.selectedOption;
  }

  @override
  int hash(ConQuizzesRecord? e) => const ListEquality().hash([
        e?.quizID,
        e?.question,
        e?.option1,
        e?.option2,
        e?.votedop1,
        e?.votedop2,
        e?.active,
        e?.votedUser,
        e?.selectedOption
      ]);

  @override
  bool isValidKey(Object? o) => o is ConQuizzesRecord;
}
