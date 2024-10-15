import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotesRecord extends FirestoreRecord {
  NotesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "noteTitle" field.
  String? _noteTitle;
  String get noteTitle => _noteTitle ?? '';
  bool hasNoteTitle() => _noteTitle != null;

  // "noteContent" field.
  String? _noteContent;
  String get noteContent => _noteContent ?? '';
  bool hasNoteContent() => _noteContent != null;

  // "noteID" field.
  String? _noteID;
  String get noteID => _noteID ?? '';
  bool hasNoteID() => _noteID != null;

  // "uID" field.
  String? _uID;
  String get uID => _uID ?? '';
  bool hasUID() => _uID != null;

  // "creationDate" field.
  DateTime? _creationDate;
  DateTime? get creationDate => _creationDate;
  bool hasCreationDate() => _creationDate != null;

  // "updatedDate" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  // "wasUpdated" field.
  bool? _wasUpdated;
  bool get wasUpdated => _wasUpdated ?? false;
  bool hasWasUpdated() => _wasUpdated != null;

  // "rewardID" field.
  String? _rewardID;
  String get rewardID => _rewardID ?? '';
  bool hasRewardID() => _rewardID != null;

  void _initializeFields() {
    _noteTitle = snapshotData['noteTitle'] as String?;
    _noteContent = snapshotData['noteContent'] as String?;
    _noteID = snapshotData['noteID'] as String?;
    _uID = snapshotData['uID'] as String?;
    _creationDate = snapshotData['creationDate'] as DateTime?;
    _updatedDate = snapshotData['updatedDate'] as DateTime?;
    _wasUpdated = snapshotData['wasUpdated'] as bool?;
    _rewardID = snapshotData['rewardID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notes');

  static Stream<NotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotesRecord.fromSnapshot(s));

  static Future<NotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotesRecord.fromSnapshot(s));

  static NotesRecord fromSnapshot(DocumentSnapshot snapshot) => NotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotesRecordData({
  String? noteTitle,
  String? noteContent,
  String? noteID,
  String? uID,
  DateTime? creationDate,
  DateTime? updatedDate,
  bool? wasUpdated,
  String? rewardID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'noteTitle': noteTitle,
      'noteContent': noteContent,
      'noteID': noteID,
      'uID': uID,
      'creationDate': creationDate,
      'updatedDate': updatedDate,
      'wasUpdated': wasUpdated,
      'rewardID': rewardID,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotesRecordDocumentEquality implements Equality<NotesRecord> {
  const NotesRecordDocumentEquality();

  @override
  bool equals(NotesRecord? e1, NotesRecord? e2) {
    return e1?.noteTitle == e2?.noteTitle &&
        e1?.noteContent == e2?.noteContent &&
        e1?.noteID == e2?.noteID &&
        e1?.uID == e2?.uID &&
        e1?.creationDate == e2?.creationDate &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.wasUpdated == e2?.wasUpdated &&
        e1?.rewardID == e2?.rewardID;
  }

  @override
  int hash(NotesRecord? e) => const ListEquality().hash([
        e?.noteTitle,
        e?.noteContent,
        e?.noteID,
        e?.uID,
        e?.creationDate,
        e?.updatedDate,
        e?.wasUpdated,
        e?.rewardID
      ]);

  @override
  bool isValidKey(Object? o) => o is NotesRecord;
}
