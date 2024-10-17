// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuestionAnswersStruct extends FFFirebaseStruct {
  QuestionAnswersStruct({
    String? questionID,
    String? name,
    String? question,
    DateTime? timestamp,
    String? votedBy,
    int? votes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _questionID = questionID,
        _name = name,
        _question = question,
        _timestamp = timestamp,
        _votedBy = votedBy,
        _votes = votes,
        super(firestoreUtilData);

  // "questionID" field.
  String? _questionID;
  String get questionID => _questionID ?? '';
  set questionID(String? val) => _questionID = val;

  bool hasQuestionID() => _questionID != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  // "votedBy" field.
  String? _votedBy;
  String get votedBy => _votedBy ?? '';
  set votedBy(String? val) => _votedBy = val;

  bool hasVotedBy() => _votedBy != null;

  // "votes" field.
  int? _votes;
  int get votes => _votes ?? 0;
  set votes(int? val) => _votes = val;

  void incrementVotes(int amount) => votes = votes + amount;

  bool hasVotes() => _votes != null;

  static QuestionAnswersStruct fromMap(Map<String, dynamic> data) =>
      QuestionAnswersStruct(
        questionID: data['questionID'] as String?,
        name: data['name'] as String?,
        question: data['question'] as String?,
        timestamp: data['timestamp'] as DateTime?,
        votedBy: data['votedBy'] as String?,
        votes: castToType<int>(data['votes']),
      );

  static QuestionAnswersStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionAnswersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'questionID': _questionID,
        'name': _name,
        'question': _question,
        'timestamp': _timestamp,
        'votedBy': _votedBy,
        'votes': _votes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'questionID': serializeParam(
          _questionID,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
        'votedBy': serializeParam(
          _votedBy,
          ParamType.String,
        ),
        'votes': serializeParam(
          _votes,
          ParamType.int,
        ),
      }.withoutNulls;

  static QuestionAnswersStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionAnswersStruct(
        questionID: deserializeParam(
          data['questionID'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.DateTime,
          false,
        ),
        votedBy: deserializeParam(
          data['votedBy'],
          ParamType.String,
          false,
        ),
        votes: deserializeParam(
          data['votes'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'QuestionAnswersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionAnswersStruct &&
        questionID == other.questionID &&
        name == other.name &&
        question == other.question &&
        timestamp == other.timestamp &&
        votedBy == other.votedBy &&
        votes == other.votes;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([questionID, name, question, timestamp, votedBy, votes]);
}

QuestionAnswersStruct createQuestionAnswersStruct({
  String? questionID,
  String? name,
  String? question,
  DateTime? timestamp,
  String? votedBy,
  int? votes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionAnswersStruct(
      questionID: questionID,
      name: name,
      question: question,
      timestamp: timestamp,
      votedBy: votedBy,
      votes: votes,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionAnswersStruct? updateQuestionAnswersStruct(
  QuestionAnswersStruct? questionAnswers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questionAnswers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionAnswersStructData(
  Map<String, dynamic> firestoreData,
  QuestionAnswersStruct? questionAnswers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questionAnswers == null) {
    return;
  }
  if (questionAnswers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && questionAnswers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionAnswersData =
      getQuestionAnswersFirestoreData(questionAnswers, forFieldValue);
  final nestedData =
      questionAnswersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = questionAnswers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionAnswersFirestoreData(
  QuestionAnswersStruct? questionAnswers, [
  bool forFieldValue = false,
]) {
  if (questionAnswers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questionAnswers.toMap());

  // Add any Firestore field values
  questionAnswers.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionAnswersListFirestoreData(
  List<QuestionAnswersStruct>? questionAnswerss,
) =>
    questionAnswerss
        ?.map((e) => getQuestionAnswersFirestoreData(e, true))
        .toList() ??
    [];
