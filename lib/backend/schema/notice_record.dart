import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NoticeRecord extends FirestoreRecord {
  NoticeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "noticeId" field.
  String? _noticeId;
  String get noticeId => _noticeId ?? '';
  bool hasNoticeId() => _noticeId != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "downloadUrl" field.
  String? _downloadUrl;
  String get downloadUrl => _downloadUrl ?? '';
  bool hasDownloadUrl() => _downloadUrl != null;

  void _initializeFields() {
    _noticeId = snapshotData['noticeId'] as String?;
    _active = snapshotData['active'] as bool?;
    _day = snapshotData['day'] as String?;
    _message = snapshotData['message'] as String?;
    _icon = snapshotData['icon'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _downloadUrl = snapshotData['downloadUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notice');

  static Stream<NoticeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoticeRecord.fromSnapshot(s));

  static Future<NoticeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoticeRecord.fromSnapshot(s));

  static NoticeRecord fromSnapshot(DocumentSnapshot snapshot) => NoticeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoticeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoticeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoticeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoticeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoticeRecordData({
  String? noticeId,
  bool? active,
  String? day,
  String? message,
  String? icon,
  Color? color,
  String? downloadUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'noticeId': noticeId,
      'active': active,
      'day': day,
      'message': message,
      'icon': icon,
      'color': color,
      'downloadUrl': downloadUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoticeRecordDocumentEquality implements Equality<NoticeRecord> {
  const NoticeRecordDocumentEquality();

  @override
  bool equals(NoticeRecord? e1, NoticeRecord? e2) {
    return e1?.noticeId == e2?.noticeId &&
        e1?.active == e2?.active &&
        e1?.day == e2?.day &&
        e1?.message == e2?.message &&
        e1?.icon == e2?.icon &&
        e1?.color == e2?.color &&
        e1?.downloadUrl == e2?.downloadUrl;
  }

  @override
  int hash(NoticeRecord? e) => const ListEquality().hash([
        e?.noticeId,
        e?.active,
        e?.day,
        e?.message,
        e?.icon,
        e?.color,
        e?.downloadUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is NoticeRecord;
}
