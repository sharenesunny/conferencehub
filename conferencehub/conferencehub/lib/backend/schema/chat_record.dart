import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatRecord extends FirestoreRecord {
  ChatRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "chatMessage" field.
  String? _chatMessage;
  String get chatMessage => _chatMessage ?? '';
  bool hasChatMessage() => _chatMessage != null;

  // "chatID" field.
  String? _chatID;
  String get chatID => _chatID ?? '';
  bool hasChatID() => _chatID != null;

  // "UID" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "presentationID" field.
  String? _presentationID;
  String get presentationID => _presentationID ?? '';
  bool hasPresentationID() => _presentationID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _chatMessage = snapshotData['chatMessage'] as String?;
    _chatID = snapshotData['chatID'] as String?;
    _uid = snapshotData['UID'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _displayName = snapshotData['displayName'] as String?;
    _presentationID = snapshotData['presentationID'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('chat')
          : FirebaseFirestore.instance.collectionGroup('chat');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('chat').doc(id);

  static Stream<ChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatRecord.fromSnapshot(s));

  static Future<ChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatRecord.fromSnapshot(s));

  static ChatRecord fromSnapshot(DocumentSnapshot snapshot) => ChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatRecordData({
  String? chatMessage,
  String? chatID,
  String? uid,
  DateTime? timestamp,
  String? displayName,
  String? presentationID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chatMessage': chatMessage,
      'chatID': chatID,
      'UID': uid,
      'timestamp': timestamp,
      'displayName': displayName,
      'presentationID': presentationID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatRecordDocumentEquality implements Equality<ChatRecord> {
  const ChatRecordDocumentEquality();

  @override
  bool equals(ChatRecord? e1, ChatRecord? e2) {
    return e1?.chatMessage == e2?.chatMessage &&
        e1?.chatID == e2?.chatID &&
        e1?.uid == e2?.uid &&
        e1?.timestamp == e2?.timestamp &&
        e1?.displayName == e2?.displayName &&
        e1?.presentationID == e2?.presentationID;
  }

  @override
  int hash(ChatRecord? e) => const ListEquality().hash([
        e?.chatMessage,
        e?.chatID,
        e?.uid,
        e?.timestamp,
        e?.displayName,
        e?.presentationID
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatRecord;
}
