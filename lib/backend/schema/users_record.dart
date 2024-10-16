import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "connectCode" field.
  String? _connectCode;
  String get connectCode => _connectCode ?? '';
  bool hasConnectCode() => _connectCode != null;

  // "rewardPoints" field.
  int? _rewardPoints;
  int get rewardPoints => _rewardPoints ?? 0;
  bool hasRewardPoints() => _rewardPoints != null;

  // "job" field.
  String? _job;
  String get job => _job ?? '';
  bool hasJob() => _job != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "checkIn" field.
  bool? _checkIn;
  bool get checkIn => _checkIn ?? false;
  bool hasCheckIn() => _checkIn != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "socialMedia" field.
  SocialMediaStruct? _socialMedia;
  SocialMediaStruct get socialMedia => _socialMedia ?? SocialMediaStruct();
  bool hasSocialMedia() => _socialMedia != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _connectCode = snapshotData['connectCode'] as String?;
    _rewardPoints = castToType<int>(snapshotData['rewardPoints']);
    _job = snapshotData['job'] as String?;
    _title = snapshotData['title'] as String?;
    _checkIn = snapshotData['checkIn'] as bool?;
    _bio = snapshotData['bio'] as String?;
    _country = snapshotData['country'] as String?;
    _company = snapshotData['company'] as String?;
    _socialMedia = SocialMediaStruct.maybeFromMap(snapshotData['socialMedia']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? connectCode,
  int? rewardPoints,
  String? job,
  String? title,
  bool? checkIn,
  String? bio,
  String? country,
  String? company,
  SocialMediaStruct? socialMedia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'connectCode': connectCode,
      'rewardPoints': rewardPoints,
      'job': job,
      'title': title,
      'checkIn': checkIn,
      'bio': bio,
      'country': country,
      'company': company,
      'socialMedia': SocialMediaStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "socialMedia" field.
  addSocialMediaStructData(firestoreData, socialMedia, 'socialMedia');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.connectCode == e2?.connectCode &&
        e1?.rewardPoints == e2?.rewardPoints &&
        e1?.job == e2?.job &&
        e1?.title == e2?.title &&
        e1?.checkIn == e2?.checkIn &&
        e1?.bio == e2?.bio &&
        e1?.country == e2?.country &&
        e1?.company == e2?.company &&
        e1?.socialMedia == e2?.socialMedia;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.connectCode,
        e?.rewardPoints,
        e?.job,
        e?.title,
        e?.checkIn,
        e?.bio,
        e?.country,
        e?.company,
        e?.socialMedia
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
