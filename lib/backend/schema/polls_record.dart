import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PollsRecord extends FirestoreRecord {
  PollsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "pollID" field.
  String? _pollID;
  String get pollID => _pollID ?? '';
  bool hasPollID() => _pollID != null;

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

  // "option3" field.
  String? _option3;
  String get option3 => _option3 ?? '';
  bool hasOption3() => _option3 != null;

  // "option4" field.
  String? _option4;
  String get option4 => _option4 ?? '';
  bool hasOption4() => _option4 != null;

  // "usersOp3" field.
  List<DocumentReference>? _usersOp3;
  List<DocumentReference> get usersOp3 => _usersOp3 ?? const [];
  bool hasUsersOp3() => _usersOp3 != null;

  // "usersOp1" field.
  List<DocumentReference>? _usersOp1;
  List<DocumentReference> get usersOp1 => _usersOp1 ?? const [];
  bool hasUsersOp1() => _usersOp1 != null;

  // "usersOp2" field.
  List<DocumentReference>? _usersOp2;
  List<DocumentReference> get usersOp2 => _usersOp2 ?? const [];
  bool hasUsersOp2() => _usersOp2 != null;

  // "usersOp4" field.
  List<DocumentReference>? _usersOp4;
  List<DocumentReference> get usersOp4 => _usersOp4 ?? const [];
  bool hasUsersOp4() => _usersOp4 != null;

  // "usersVoted" field.
  List<DocumentReference>? _usersVoted;
  List<DocumentReference> get usersVoted => _usersVoted ?? const [];
  bool hasUsersVoted() => _usersVoted != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _pollID = snapshotData['pollID'] as String?;
    _question = snapshotData['question'] as String?;
    _option1 = snapshotData['option1'] as String?;
    _option2 = snapshotData['option2'] as String?;
    _option3 = snapshotData['option3'] as String?;
    _option4 = snapshotData['option4'] as String?;
    _usersOp3 = getDataList(snapshotData['usersOp3']);
    _usersOp1 = getDataList(snapshotData['usersOp1']);
    _usersOp2 = getDataList(snapshotData['usersOp2']);
    _usersOp4 = getDataList(snapshotData['usersOp4']);
    _usersVoted = getDataList(snapshotData['usersVoted']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('polls')
          : FirebaseFirestore.instance.collectionGroup('polls');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('polls').doc(id);

  static Stream<PollsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PollsRecord.fromSnapshot(s));

  static Future<PollsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PollsRecord.fromSnapshot(s));

  static PollsRecord fromSnapshot(DocumentSnapshot snapshot) => PollsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PollsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PollsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PollsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PollsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPollsRecordData({
  String? pollID,
  String? question,
  String? option1,
  String? option2,
  String? option3,
  String? option4,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pollID': pollID,
      'question': question,
      'option1': option1,
      'option2': option2,
      'option3': option3,
      'option4': option4,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class PollsRecordDocumentEquality implements Equality<PollsRecord> {
  const PollsRecordDocumentEquality();

  @override
  bool equals(PollsRecord? e1, PollsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pollID == e2?.pollID &&
        e1?.question == e2?.question &&
        e1?.option1 == e2?.option1 &&
        e1?.option2 == e2?.option2 &&
        e1?.option3 == e2?.option3 &&
        e1?.option4 == e2?.option4 &&
        listEquality.equals(e1?.usersOp3, e2?.usersOp3) &&
        listEquality.equals(e1?.usersOp1, e2?.usersOp1) &&
        listEquality.equals(e1?.usersOp2, e2?.usersOp2) &&
        listEquality.equals(e1?.usersOp4, e2?.usersOp4) &&
        listEquality.equals(e1?.usersVoted, e2?.usersVoted) &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(PollsRecord? e) => const ListEquality().hash([
        e?.pollID,
        e?.question,
        e?.option1,
        e?.option2,
        e?.option3,
        e?.option4,
        e?.usersOp3,
        e?.usersOp1,
        e?.usersOp2,
        e?.usersOp4,
        e?.usersVoted,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is PollsRecord;
}
