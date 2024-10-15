import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SponsorRecord extends FirestoreRecord {
  SponsorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "sponsorUrl" field.
  String? _sponsorUrl;
  String get sponsorUrl => _sponsorUrl ?? '';
  bool hasSponsorUrl() => _sponsorUrl != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "indexNumber" field.
  int? _indexNumber;
  int get indexNumber => _indexNumber ?? 0;
  bool hasIndexNumber() => _indexNumber != null;

  // "bottomHeight" field.
  int? _bottomHeight;
  int get bottomHeight => _bottomHeight ?? 0;
  bool hasBottomHeight() => _bottomHeight != null;

  // "downloadUrl" field.
  String? _downloadUrl;
  String get downloadUrl => _downloadUrl ?? '';
  bool hasDownloadUrl() => _downloadUrl != null;

  // "rewardID" field.
  String? _rewardID;
  String get rewardID => _rewardID ?? '';
  bool hasRewardID() => _rewardID != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _sponsorUrl = snapshotData['sponsorUrl'] as String?;
    _image = snapshotData['image'] as String?;
    _indexNumber = castToType<int>(snapshotData['indexNumber']);
    _bottomHeight = castToType<int>(snapshotData['bottomHeight']);
    _downloadUrl = snapshotData['downloadUrl'] as String?;
    _rewardID = snapshotData['rewardID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sponsor');

  static Stream<SponsorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SponsorRecord.fromSnapshot(s));

  static Future<SponsorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SponsorRecord.fromSnapshot(s));

  static SponsorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SponsorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SponsorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SponsorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SponsorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SponsorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSponsorRecordData({
  String? name,
  String? sponsorUrl,
  String? image,
  int? indexNumber,
  int? bottomHeight,
  String? downloadUrl,
  String? rewardID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'sponsorUrl': sponsorUrl,
      'image': image,
      'indexNumber': indexNumber,
      'bottomHeight': bottomHeight,
      'downloadUrl': downloadUrl,
      'rewardID': rewardID,
    }.withoutNulls,
  );

  return firestoreData;
}

class SponsorRecordDocumentEquality implements Equality<SponsorRecord> {
  const SponsorRecordDocumentEquality();

  @override
  bool equals(SponsorRecord? e1, SponsorRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.sponsorUrl == e2?.sponsorUrl &&
        e1?.image == e2?.image &&
        e1?.indexNumber == e2?.indexNumber &&
        e1?.bottomHeight == e2?.bottomHeight &&
        e1?.downloadUrl == e2?.downloadUrl &&
        e1?.rewardID == e2?.rewardID;
  }

  @override
  int hash(SponsorRecord? e) => const ListEquality().hash([
        e?.name,
        e?.sponsorUrl,
        e?.image,
        e?.indexNumber,
        e?.bottomHeight,
        e?.downloadUrl,
        e?.rewardID
      ]);

  @override
  bool isValidKey(Object? o) => o is SponsorRecord;
}
