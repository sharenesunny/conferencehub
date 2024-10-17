import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityFeedRecord extends FirestoreRecord {
  ActivityFeedRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "feedText" field.
  String? _feedText;
  String get feedText => _feedText ?? '';
  bool hasFeedText() => _feedText != null;

  // "feedLikes" field.
  List<DocumentReference>? _feedLikes;
  List<DocumentReference> get feedLikes => _feedLikes ?? const [];
  bool hasFeedLikes() => _feedLikes != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "feedImage" field.
  String? _feedImage;
  String get feedImage => _feedImage ?? '';
  bool hasFeedImage() => _feedImage != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "profileImg" field.
  String? _profileImg;
  String get profileImg => _profileImg ?? '';
  bool hasProfileImg() => _profileImg != null;

  void _initializeFields() {
    _feedText = snapshotData['feedText'] as String?;
    _feedLikes = getDataList(snapshotData['feedLikes']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _feedImage = snapshotData['feedImage'] as String?;
    _user = snapshotData['user'] as String?;
    _profileImg = snapshotData['profileImg'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activityFeed');

  static Stream<ActivityFeedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityFeedRecord.fromSnapshot(s));

  static Future<ActivityFeedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityFeedRecord.fromSnapshot(s));

  static ActivityFeedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityFeedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityFeedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityFeedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityFeedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityFeedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityFeedRecordData({
  String? feedText,
  DateTime? timestamp,
  String? feedImage,
  String? user,
  String? profileImg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'feedText': feedText,
      'timestamp': timestamp,
      'feedImage': feedImage,
      'user': user,
      'profileImg': profileImg,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityFeedRecordDocumentEquality
    implements Equality<ActivityFeedRecord> {
  const ActivityFeedRecordDocumentEquality();

  @override
  bool equals(ActivityFeedRecord? e1, ActivityFeedRecord? e2) {
    const listEquality = ListEquality();
    return e1?.feedText == e2?.feedText &&
        listEquality.equals(e1?.feedLikes, e2?.feedLikes) &&
        e1?.timestamp == e2?.timestamp &&
        e1?.feedImage == e2?.feedImage &&
        e1?.user == e2?.user &&
        e1?.profileImg == e2?.profileImg;
  }

  @override
  int hash(ActivityFeedRecord? e) => const ListEquality().hash([
        e?.feedText,
        e?.feedLikes,
        e?.timestamp,
        e?.feedImage,
        e?.user,
        e?.profileImg
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivityFeedRecord;
}
