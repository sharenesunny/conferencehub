import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpeakerRecord extends FirestoreRecord {
  SpeakerRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "speakerId" field.
  String? _speakerId;
  String get speakerId => _speakerId ?? '';
  bool hasSpeakerId() => _speakerId != null;

  // "speakerPresentations" field.
  DocumentReference? _speakerPresentations;
  DocumentReference? get speakerPresentations => _speakerPresentations;
  bool hasSpeakerPresentations() => _speakerPresentations != null;

  // "downloadUrl" field.
  String? _downloadUrl;
  String get downloadUrl => _downloadUrl ?? '';
  bool hasDownloadUrl() => _downloadUrl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _bio = snapshotData['bio'] as String?;
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _speakerId = snapshotData['speakerId'] as String?;
    _speakerPresentations =
        snapshotData['speakerPresentations'] as DocumentReference?;
    _downloadUrl = snapshotData['downloadUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('speaker');

  static Stream<SpeakerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpeakerRecord.fromSnapshot(s));

  static Future<SpeakerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpeakerRecord.fromSnapshot(s));

  static SpeakerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpeakerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpeakerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpeakerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpeakerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpeakerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpeakerRecordData({
  String? name,
  String? bio,
  String? image,
  String? title,
  String? speakerId,
  DocumentReference? speakerPresentations,
  String? downloadUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'bio': bio,
      'image': image,
      'title': title,
      'speakerId': speakerId,
      'speakerPresentations': speakerPresentations,
      'downloadUrl': downloadUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpeakerRecordDocumentEquality implements Equality<SpeakerRecord> {
  const SpeakerRecordDocumentEquality();

  @override
  bool equals(SpeakerRecord? e1, SpeakerRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.bio == e2?.bio &&
        e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.speakerId == e2?.speakerId &&
        e1?.speakerPresentations == e2?.speakerPresentations &&
        e1?.downloadUrl == e2?.downloadUrl;
  }

  @override
  int hash(SpeakerRecord? e) => const ListEquality().hash([
        e?.name,
        e?.bio,
        e?.image,
        e?.title,
        e?.speakerId,
        e?.speakerPresentations,
        e?.downloadUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is SpeakerRecord;
}
