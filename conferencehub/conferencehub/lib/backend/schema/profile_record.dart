import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileRecord extends FirestoreRecord {
  ProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "profileId" field.
  String? _profileId;
  String get profileId => _profileId ?? '';
  bool hasProfileId() => _profileId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "job" field.
  String? _job;
  String get job => _job ?? '';
  bool hasJob() => _job != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "rewardID" field.
  String? _rewardID;
  String get rewardID => _rewardID ?? '';
  bool hasRewardID() => _rewardID != null;

  void _initializeFields() {
    _profileId = snapshotData['profileId'] as String?;
    _name = snapshotData['name'] as String?;
    _title = snapshotData['title'] as String?;
    _job = snapshotData['job'] as String?;
    _number = snapshotData['number'] as String?;
    _email = snapshotData['email'] as String?;
    _website = snapshotData['website'] as String?;
    _rewardID = snapshotData['rewardID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profile');

  static Stream<ProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfileRecord.fromSnapshot(s));

  static Future<ProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfileRecord.fromSnapshot(s));

  static ProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfileRecordData({
  String? profileId,
  String? name,
  String? title,
  String? job,
  String? number,
  String? email,
  String? website,
  String? rewardID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'profileId': profileId,
      'name': name,
      'title': title,
      'job': job,
      'number': number,
      'email': email,
      'website': website,
      'rewardID': rewardID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfileRecordDocumentEquality implements Equality<ProfileRecord> {
  const ProfileRecordDocumentEquality();

  @override
  bool equals(ProfileRecord? e1, ProfileRecord? e2) {
    return e1?.profileId == e2?.profileId &&
        e1?.name == e2?.name &&
        e1?.title == e2?.title &&
        e1?.job == e2?.job &&
        e1?.number == e2?.number &&
        e1?.email == e2?.email &&
        e1?.website == e2?.website &&
        e1?.rewardID == e2?.rewardID;
  }

  @override
  int hash(ProfileRecord? e) => const ListEquality().hash([
        e?.profileId,
        e?.name,
        e?.title,
        e?.job,
        e?.number,
        e?.email,
        e?.website,
        e?.rewardID
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfileRecord;
}
