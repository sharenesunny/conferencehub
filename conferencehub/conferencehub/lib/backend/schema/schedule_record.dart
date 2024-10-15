import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduleRecord extends FirestoreRecord {
  ScheduleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "stage" field.
  String? _stage;
  String get stage => _stage ?? '';
  bool hasStage() => _stage != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "isFull" field.
  bool? _isFull;
  bool get isFull => _isFull ?? false;
  bool hasIsFull() => _isFull != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescriptionField() => _description != null;

  // "downloadLink" field.
  String? _downloadLink;
  String get downloadLink => _downloadLink ?? '';
  bool hasDownloadLink() => _downloadLink != null;

  // "liveLink" field.
  String? _liveLink;
  String get liveLink => _liveLink ?? '';
  bool hasLiveLink() => _liveLink != null;

  // "presentationId" field.
  String? _presentationId;
  String get presentationId => _presentationId ?? '';
  bool hasPresentationId() => _presentationId != null;

  // "isComplete" field.
  bool? _isComplete;
  bool get isComplete => _isComplete ?? false;
  bool hasIsComplete() => _isComplete != null;

  // "presentors" field.
  List<String>? _presentors;
  List<String> get presentors => _presentors ?? const [];
  bool hasPresentors() => _presentors != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "downloadUrl" field.
  String? _downloadUrl;
  String get downloadUrl => _downloadUrl ?? '';
  bool hasDownloadUrl() => _downloadUrl != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "presentationChat" field.
  List<ChatStruct>? _presentationChat;
  List<ChatStruct> get presentationChat => _presentationChat ?? const [];
  bool hasPresentationChat() => _presentationChat != null;

  // "thumbLocation" field.
  String? _thumbLocation;
  String get thumbLocation => _thumbLocation ?? '';
  bool hasThumbLocation() => _thumbLocation != null;

  // "thumbURL" field.
  String? _thumbURL;
  String get thumbURL => _thumbURL ?? '';
  bool hasThumbURL() => _thumbURL != null;

  // "hasDownloadable" field.
  bool? _hasDownloadable;
  bool get hasDownloadable => _hasDownloadable ?? false;
  bool hasHasDownloadable() => _hasDownloadable != null;

  // "downloadable" field.
  String? _downloadable;
  String get downloadable => _downloadable ?? '';
  bool hasDownloadableField() => _downloadable != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  bool hasCapacity() => _capacity != null;

  // "rewardID" field.
  String? _rewardID;
  String get rewardID => _rewardID ?? '';
  bool hasRewardID() => _rewardID != null;

  // "isProgram" field.
  bool? _isProgram;
  bool get isProgram => _isProgram ?? false;
  bool hasIsProgram() => _isProgram != null;

  // "solo" field.
  bool? _solo;
  bool get solo => _solo ?? false;
  bool hasSolo() => _solo != null;

  // "hasDescription" field.
  bool? _hasDescription;
  bool get hasDescription => _hasDescription ?? false;
  bool hasHasDescription() => _hasDescription != null;

  // "registered" field.
  List<String>? _registered;
  List<String> get registered => _registered ?? const [];
  bool hasRegistered() => _registered != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _stage = snapshotData['stage'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _active = snapshotData['active'] as bool?;
    _day = snapshotData['day'] as String?;
    _isFull = snapshotData['isFull'] as bool?;
    _thumbnail = snapshotData['thumbnail'] as String?;
    _description = snapshotData['description'] as String?;
    _downloadLink = snapshotData['downloadLink'] as String?;
    _liveLink = snapshotData['liveLink'] as String?;
    _presentationId = snapshotData['presentationId'] as String?;
    _isComplete = snapshotData['isComplete'] as bool?;
    _presentors = getDataList(snapshotData['presentors']);
    _type = snapshotData['type'] as String?;
    _downloadUrl = snapshotData['downloadUrl'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _presentationChat = getStructList(
      snapshotData['presentationChat'],
      ChatStruct.fromMap,
    );
    _thumbLocation = snapshotData['thumbLocation'] as String?;
    _thumbURL = snapshotData['thumbURL'] as String?;
    _hasDownloadable = snapshotData['hasDownloadable'] as bool?;
    _downloadable = snapshotData['downloadable'] as String?;
    _capacity = castToType<int>(snapshotData['capacity']);
    _rewardID = snapshotData['rewardID'] as String?;
    _isProgram = snapshotData['isProgram'] as bool?;
    _solo = snapshotData['solo'] as bool?;
    _hasDescription = snapshotData['hasDescription'] as bool?;
    _registered = getDataList(snapshotData['registered']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schedule');

  static Stream<ScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScheduleRecord.fromSnapshot(s));

  static Future<ScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScheduleRecord.fromSnapshot(s));

  static ScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScheduleRecordData({
  DateTime? date,
  String? stage,
  DateTime? time,
  String? name,
  bool? active,
  String? day,
  bool? isFull,
  String? thumbnail,
  String? description,
  String? downloadLink,
  String? liveLink,
  String? presentationId,
  bool? isComplete,
  String? type,
  String? downloadUrl,
  bool? isActive,
  String? thumbLocation,
  String? thumbURL,
  bool? hasDownloadable,
  String? downloadable,
  int? capacity,
  String? rewardID,
  bool? isProgram,
  bool? solo,
  bool? hasDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'stage': stage,
      'time': time,
      'name': name,
      'active': active,
      'day': day,
      'isFull': isFull,
      'thumbnail': thumbnail,
      'description': description,
      'downloadLink': downloadLink,
      'liveLink': liveLink,
      'presentationId': presentationId,
      'isComplete': isComplete,
      'type': type,
      'downloadUrl': downloadUrl,
      'isActive': isActive,
      'thumbLocation': thumbLocation,
      'thumbURL': thumbURL,
      'hasDownloadable': hasDownloadable,
      'downloadable': downloadable,
      'capacity': capacity,
      'rewardID': rewardID,
      'isProgram': isProgram,
      'solo': solo,
      'hasDescription': hasDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScheduleRecordDocumentEquality implements Equality<ScheduleRecord> {
  const ScheduleRecordDocumentEquality();

  @override
  bool equals(ScheduleRecord? e1, ScheduleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        e1?.stage == e2?.stage &&
        e1?.time == e2?.time &&
        e1?.name == e2?.name &&
        e1?.active == e2?.active &&
        e1?.day == e2?.day &&
        e1?.isFull == e2?.isFull &&
        e1?.thumbnail == e2?.thumbnail &&
        e1?.description == e2?.description &&
        e1?.downloadLink == e2?.downloadLink &&
        e1?.liveLink == e2?.liveLink &&
        e1?.presentationId == e2?.presentationId &&
        e1?.isComplete == e2?.isComplete &&
        listEquality.equals(e1?.presentors, e2?.presentors) &&
        e1?.type == e2?.type &&
        e1?.downloadUrl == e2?.downloadUrl &&
        e1?.isActive == e2?.isActive &&
        listEquality.equals(e1?.presentationChat, e2?.presentationChat) &&
        e1?.thumbLocation == e2?.thumbLocation &&
        e1?.thumbURL == e2?.thumbURL &&
        e1?.hasDownloadable == e2?.hasDownloadable &&
        e1?.downloadable == e2?.downloadable &&
        e1?.capacity == e2?.capacity &&
        e1?.rewardID == e2?.rewardID &&
        e1?.isProgram == e2?.isProgram &&
        e1?.solo == e2?.solo &&
        e1?.hasDescription == e2?.hasDescription &&
        listEquality.equals(e1?.registered, e2?.registered);
  }

  @override
  int hash(ScheduleRecord? e) => const ListEquality().hash([
        e?.date,
        e?.stage,
        e?.time,
        e?.name,
        e?.active,
        e?.day,
        e?.isFull,
        e?.thumbnail,
        e?.description,
        e?.downloadLink,
        e?.liveLink,
        e?.presentationId,
        e?.isComplete,
        e?.presentors,
        e?.type,
        e?.downloadUrl,
        e?.isActive,
        e?.presentationChat,
        e?.thumbLocation,
        e?.thumbURL,
        e?.hasDownloadable,
        e?.downloadable,
        e?.capacity,
        e?.rewardID,
        e?.isProgram,
        e?.solo,
        e?.hasDescription,
        e?.registered
      ]);

  @override
  bool isValidKey(Object? o) => o is ScheduleRecord;
}
