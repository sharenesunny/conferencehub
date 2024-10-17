// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SocialMediaStruct extends FFFirebaseStruct {
  SocialMediaStruct({
    String? instagram,
    String? facebook,
    String? linkedIn,
    String? youTube,
    String? twitter,
    String? tikTok,
    String? threads,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _instagram = instagram,
        _facebook = facebook,
        _linkedIn = linkedIn,
        _youTube = youTube,
        _twitter = twitter,
        _tikTok = tikTok,
        _threads = threads,
        super(firestoreUtilData);

  // "Instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  set instagram(String? val) => _instagram = val;

  bool hasInstagram() => _instagram != null;

  // "Facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  set facebook(String? val) => _facebook = val;

  bool hasFacebook() => _facebook != null;

  // "LinkedIn" field.
  String? _linkedIn;
  String get linkedIn => _linkedIn ?? '';
  set linkedIn(String? val) => _linkedIn = val;

  bool hasLinkedIn() => _linkedIn != null;

  // "YouTube" field.
  String? _youTube;
  String get youTube => _youTube ?? '';
  set youTube(String? val) => _youTube = val;

  bool hasYouTube() => _youTube != null;

  // "Twitter" field.
  String? _twitter;
  String get twitter => _twitter ?? '';
  set twitter(String? val) => _twitter = val;

  bool hasTwitter() => _twitter != null;

  // "TikTok" field.
  String? _tikTok;
  String get tikTok => _tikTok ?? '';
  set tikTok(String? val) => _tikTok = val;

  bool hasTikTok() => _tikTok != null;

  // "Threads" field.
  String? _threads;
  String get threads => _threads ?? '';
  set threads(String? val) => _threads = val;

  bool hasThreads() => _threads != null;

  static SocialMediaStruct fromMap(Map<String, dynamic> data) =>
      SocialMediaStruct(
        instagram: data['Instagram'] as String?,
        facebook: data['Facebook'] as String?,
        linkedIn: data['LinkedIn'] as String?,
        youTube: data['YouTube'] as String?,
        twitter: data['Twitter'] as String?,
        tikTok: data['TikTok'] as String?,
        threads: data['Threads'] as String?,
      );

  static SocialMediaStruct? maybeFromMap(dynamic data) => data is Map
      ? SocialMediaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Instagram': _instagram,
        'Facebook': _facebook,
        'LinkedIn': _linkedIn,
        'YouTube': _youTube,
        'Twitter': _twitter,
        'TikTok': _tikTok,
        'Threads': _threads,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Instagram': serializeParam(
          _instagram,
          ParamType.String,
        ),
        'Facebook': serializeParam(
          _facebook,
          ParamType.String,
        ),
        'LinkedIn': serializeParam(
          _linkedIn,
          ParamType.String,
        ),
        'YouTube': serializeParam(
          _youTube,
          ParamType.String,
        ),
        'Twitter': serializeParam(
          _twitter,
          ParamType.String,
        ),
        'TikTok': serializeParam(
          _tikTok,
          ParamType.String,
        ),
        'Threads': serializeParam(
          _threads,
          ParamType.String,
        ),
      }.withoutNulls;

  static SocialMediaStruct fromSerializableMap(Map<String, dynamic> data) =>
      SocialMediaStruct(
        instagram: deserializeParam(
          data['Instagram'],
          ParamType.String,
          false,
        ),
        facebook: deserializeParam(
          data['Facebook'],
          ParamType.String,
          false,
        ),
        linkedIn: deserializeParam(
          data['LinkedIn'],
          ParamType.String,
          false,
        ),
        youTube: deserializeParam(
          data['YouTube'],
          ParamType.String,
          false,
        ),
        twitter: deserializeParam(
          data['Twitter'],
          ParamType.String,
          false,
        ),
        tikTok: deserializeParam(
          data['TikTok'],
          ParamType.String,
          false,
        ),
        threads: deserializeParam(
          data['Threads'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SocialMediaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SocialMediaStruct &&
        instagram == other.instagram &&
        facebook == other.facebook &&
        linkedIn == other.linkedIn &&
        youTube == other.youTube &&
        twitter == other.twitter &&
        tikTok == other.tikTok &&
        threads == other.threads;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([instagram, facebook, linkedIn, youTube, twitter, tikTok, threads]);
}

SocialMediaStruct createSocialMediaStruct({
  String? instagram,
  String? facebook,
  String? linkedIn,
  String? youTube,
  String? twitter,
  String? tikTok,
  String? threads,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SocialMediaStruct(
      instagram: instagram,
      facebook: facebook,
      linkedIn: linkedIn,
      youTube: youTube,
      twitter: twitter,
      tikTok: tikTok,
      threads: threads,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SocialMediaStruct? updateSocialMediaStruct(
  SocialMediaStruct? socialMedia, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    socialMedia
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSocialMediaStructData(
  Map<String, dynamic> firestoreData,
  SocialMediaStruct? socialMedia,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (socialMedia == null) {
    return;
  }
  if (socialMedia.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && socialMedia.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final socialMediaData =
      getSocialMediaFirestoreData(socialMedia, forFieldValue);
  final nestedData =
      socialMediaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = socialMedia.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSocialMediaFirestoreData(
  SocialMediaStruct? socialMedia, [
  bool forFieldValue = false,
]) {
  if (socialMedia == null) {
    return {};
  }
  final firestoreData = mapToFirestore(socialMedia.toMap());

  // Add any Firestore field values
  socialMedia.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSocialMediaListFirestoreData(
  List<SocialMediaStruct>? socialMedias,
) =>
    socialMedias?.map((e) => getSocialMediaFirestoreData(e, true)).toList() ??
    [];
