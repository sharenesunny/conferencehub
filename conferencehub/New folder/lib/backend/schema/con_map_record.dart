import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConMapRecord extends FirestoreRecord {
  ConMapRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mapId" field.
  String? _mapId;
  String get mapId => _mapId ?? '';
  bool hasMapId() => _mapId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "imgHeigth" field.
  int? _imgHeigth;
  int get imgHeigth => _imgHeigth ?? 0;
  bool hasImgHeigth() => _imgHeigth != null;

  // "downloadUrl" field.
  String? _downloadUrl;
  String get downloadUrl => _downloadUrl ?? '';
  bool hasDownloadUrl() => _downloadUrl != null;

  void _initializeFields() {
    _mapId = snapshotData['mapId'] as String?;
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
    _imgHeigth = castToType<int>(snapshotData['imgHeigth']);
    _downloadUrl = snapshotData['downloadUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conMap');

  static Stream<ConMapRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConMapRecord.fromSnapshot(s));

  static Future<ConMapRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConMapRecord.fromSnapshot(s));

  static ConMapRecord fromSnapshot(DocumentSnapshot snapshot) => ConMapRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConMapRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConMapRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConMapRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConMapRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConMapRecordData({
  String? mapId,
  String? name,
  String? image,
  String? description,
  int? imgHeigth,
  String? downloadUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mapId': mapId,
      'name': name,
      'image': image,
      'description': description,
      'imgHeigth': imgHeigth,
      'downloadUrl': downloadUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConMapRecordDocumentEquality implements Equality<ConMapRecord> {
  const ConMapRecordDocumentEquality();

  @override
  bool equals(ConMapRecord? e1, ConMapRecord? e2) {
    return e1?.mapId == e2?.mapId &&
        e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.imgHeigth == e2?.imgHeigth &&
        e1?.downloadUrl == e2?.downloadUrl;
  }

  @override
  int hash(ConMapRecord? e) => const ListEquality().hash([
        e?.mapId,
        e?.name,
        e?.image,
        e?.description,
        e?.imgHeigth,
        e?.downloadUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is ConMapRecord;
}
