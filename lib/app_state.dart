import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _onMySchedule = prefs
              .getStringList('ff_onMySchedule')
              ?.map((x) => x == 'true')
              .toList() ??
          _onMySchedule;
    });
    _safeInit(() {
      _connectList = prefs.getStringList('ff_connectList') ?? _connectList;
    });
    _safeInit(() {
      _rewardCollected =
          prefs.getStringList('ff_rewardCollected') ?? _rewardCollected;
    });
    _safeInit(() {
      _mySchedule = prefs.getStringList('ff_mySchedule') ?? _mySchedule;
    });
    _safeInit(() {
      _dismissNotice =
          prefs.getStringList('ff_dismissNotice') ?? _dismissNotice;
    });
    _safeInit(() {
      _lastShakeTime = prefs.containsKey('ff_lastShakeTime')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_lastShakeTime')!)
          : _lastShakeTime;
    });
    _safeInit(() {
      _pointsPerHour = prefs.getInt('ff_pointsPerHour') ?? _pointsPerHour;
    });
    _safeInit(() {
      _maxPointsPerHour =
          prefs.getInt('ff_maxPointsPerHour') ?? _maxPointsPerHour;
    });
    _safeInit(() {
      _canEarnPoints = prefs.getBool('ff_canEarnPoints') ?? _canEarnPoints;
    });
    _safeInit(() {
      _isPastOrOnDate = prefs.getBool('ff_isPastOrOnDate') ?? _isPastOrOnDate;
    });
    _safeInit(() {
      _votedQA = prefs.getStringList('ff_votedQA') ?? _votedQA;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<bool> _onMySchedule = [];
  List<bool> get onMySchedule => _onMySchedule;
  set onMySchedule(List<bool> value) {
    _onMySchedule = value;
    prefs.setStringList(
        'ff_onMySchedule', value.map((x) => x.toString()).toList());
  }

  void addToOnMySchedule(bool value) {
    onMySchedule.add(value);
    prefs.setStringList(
        'ff_onMySchedule', _onMySchedule.map((x) => x.toString()).toList());
  }

  void removeFromOnMySchedule(bool value) {
    onMySchedule.remove(value);
    prefs.setStringList(
        'ff_onMySchedule', _onMySchedule.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromOnMySchedule(int index) {
    onMySchedule.removeAt(index);
    prefs.setStringList(
        'ff_onMySchedule', _onMySchedule.map((x) => x.toString()).toList());
  }

  void updateOnMyScheduleAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    onMySchedule[index] = updateFn(_onMySchedule[index]);
    prefs.setStringList(
        'ff_onMySchedule', _onMySchedule.map((x) => x.toString()).toList());
  }

  void insertAtIndexInOnMySchedule(int index, bool value) {
    onMySchedule.insert(index, value);
    prefs.setStringList(
        'ff_onMySchedule', _onMySchedule.map((x) => x.toString()).toList());
  }

  List<String> _connectList = [];
  List<String> get connectList => _connectList;
  set connectList(List<String> value) {
    _connectList = value;
    prefs.setStringList('ff_connectList', value);
  }

  void addToConnectList(String value) {
    connectList.add(value);
    prefs.setStringList('ff_connectList', _connectList);
  }

  void removeFromConnectList(String value) {
    connectList.remove(value);
    prefs.setStringList('ff_connectList', _connectList);
  }

  void removeAtIndexFromConnectList(int index) {
    connectList.removeAt(index);
    prefs.setStringList('ff_connectList', _connectList);
  }

  void updateConnectListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    connectList[index] = updateFn(_connectList[index]);
    prefs.setStringList('ff_connectList', _connectList);
  }

  void insertAtIndexInConnectList(int index, String value) {
    connectList.insert(index, value);
    prefs.setStringList('ff_connectList', _connectList);
  }

  List<String> _rewardCollected = [];
  List<String> get rewardCollected => _rewardCollected;
  set rewardCollected(List<String> value) {
    _rewardCollected = value;
    prefs.setStringList('ff_rewardCollected', value);
  }

  void addToRewardCollected(String value) {
    rewardCollected.add(value);
    prefs.setStringList('ff_rewardCollected', _rewardCollected);
  }

  void removeFromRewardCollected(String value) {
    rewardCollected.remove(value);
    prefs.setStringList('ff_rewardCollected', _rewardCollected);
  }

  void removeAtIndexFromRewardCollected(int index) {
    rewardCollected.removeAt(index);
    prefs.setStringList('ff_rewardCollected', _rewardCollected);
  }

  void updateRewardCollectedAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    rewardCollected[index] = updateFn(_rewardCollected[index]);
    prefs.setStringList('ff_rewardCollected', _rewardCollected);
  }

  void insertAtIndexInRewardCollected(int index, String value) {
    rewardCollected.insert(index, value);
    prefs.setStringList('ff_rewardCollected', _rewardCollected);
  }

  List<String> _mySchedule = [];
  List<String> get mySchedule => _mySchedule;
  set mySchedule(List<String> value) {
    _mySchedule = value;
    prefs.setStringList('ff_mySchedule', value);
  }

  void addToMySchedule(String value) {
    mySchedule.add(value);
    prefs.setStringList('ff_mySchedule', _mySchedule);
  }

  void removeFromMySchedule(String value) {
    mySchedule.remove(value);
    prefs.setStringList('ff_mySchedule', _mySchedule);
  }

  void removeAtIndexFromMySchedule(int index) {
    mySchedule.removeAt(index);
    prefs.setStringList('ff_mySchedule', _mySchedule);
  }

  void updateMyScheduleAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    mySchedule[index] = updateFn(_mySchedule[index]);
    prefs.setStringList('ff_mySchedule', _mySchedule);
  }

  void insertAtIndexInMySchedule(int index, String value) {
    mySchedule.insert(index, value);
    prefs.setStringList('ff_mySchedule', _mySchedule);
  }

  List<String> _dismissNotice = [];
  List<String> get dismissNotice => _dismissNotice;
  set dismissNotice(List<String> value) {
    _dismissNotice = value;
    prefs.setStringList('ff_dismissNotice', value);
  }

  void addToDismissNotice(String value) {
    dismissNotice.add(value);
    prefs.setStringList('ff_dismissNotice', _dismissNotice);
  }

  void removeFromDismissNotice(String value) {
    dismissNotice.remove(value);
    prefs.setStringList('ff_dismissNotice', _dismissNotice);
  }

  void removeAtIndexFromDismissNotice(int index) {
    dismissNotice.removeAt(index);
    prefs.setStringList('ff_dismissNotice', _dismissNotice);
  }

  void updateDismissNoticeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    dismissNotice[index] = updateFn(_dismissNotice[index]);
    prefs.setStringList('ff_dismissNotice', _dismissNotice);
  }

  void insertAtIndexInDismissNotice(int index, String value) {
    dismissNotice.insert(index, value);
    prefs.setStringList('ff_dismissNotice', _dismissNotice);
  }

  DateTime? _lastShakeTime;
  DateTime? get lastShakeTime => _lastShakeTime;
  set lastShakeTime(DateTime? value) {
    _lastShakeTime = value;
    value != null
        ? prefs.setInt('ff_lastShakeTime', value.millisecondsSinceEpoch)
        : prefs.remove('ff_lastShakeTime');
  }

  int _pointsPerHour = 0;
  int get pointsPerHour => _pointsPerHour;
  set pointsPerHour(int value) {
    _pointsPerHour = value;
    prefs.setInt('ff_pointsPerHour', value);
  }

  int _maxPointsPerHour = 0;
  int get maxPointsPerHour => _maxPointsPerHour;
  set maxPointsPerHour(int value) {
    _maxPointsPerHour = value;
    prefs.setInt('ff_maxPointsPerHour', value);
  }

  bool _canEarnPoints = false;
  bool get canEarnPoints => _canEarnPoints;
  set canEarnPoints(bool value) {
    _canEarnPoints = value;
    prefs.setBool('ff_canEarnPoints', value);
  }

  bool _isPastOrOnDate = false;
  bool get isPastOrOnDate => _isPastOrOnDate;
  set isPastOrOnDate(bool value) {
    _isPastOrOnDate = value;
    prefs.setBool('ff_isPastOrOnDate', value);
  }

  List<String> _votedQA = [];
  List<String> get votedQA => _votedQA;
  set votedQA(List<String> value) {
    _votedQA = value;
    prefs.setStringList('ff_votedQA', value);
  }

  void addToVotedQA(String value) {
    votedQA.add(value);
    prefs.setStringList('ff_votedQA', _votedQA);
  }

  void removeFromVotedQA(String value) {
    votedQA.remove(value);
    prefs.setStringList('ff_votedQA', _votedQA);
  }

  void removeAtIndexFromVotedQA(int index) {
    votedQA.removeAt(index);
    prefs.setStringList('ff_votedQA', _votedQA);
  }

  void updateVotedQAAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    votedQA[index] = updateFn(_votedQA[index]);
    prefs.setStringList('ff_votedQA', _votedQA);
  }

  void insertAtIndexInVotedQA(int index, String value) {
    votedQA.insert(index, value);
    prefs.setStringList('ff_votedQA', _votedQA);
  }

  bool _isConnected = false;
  bool get isConnected => _isConnected;
  set isConnected(bool value) {
    _isConnected = value;
  }

  final _speakersHomeManager = StreamRequestManager<List<SpeakerRecord>>();
  Stream<List<SpeakerRecord>> speakersHome({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<SpeakerRecord>> Function() requestFn,
  }) =>
      _speakersHomeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSpeakersHomeCache() => _speakersHomeManager.clear();
  void clearSpeakersHomeCacheKey(String? uniqueKey) =>
      _speakersHomeManager.clearRequest(uniqueKey);

  final _sponsorsManager = StreamRequestManager<List<SponsorRecord>>();
  Stream<List<SponsorRecord>> sponsors({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<SponsorRecord>> Function() requestFn,
  }) =>
      _sponsorsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSponsorsCache() => _sponsorsManager.clear();
  void clearSponsorsCacheKey(String? uniqueKey) =>
      _sponsorsManager.clearRequest(uniqueKey);

  final _questionandansManager =
      StreamRequestManager<List<QuestionAnswersRecord>>();
  Stream<List<QuestionAnswersRecord>> questionandans({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<QuestionAnswersRecord>> Function() requestFn,
  }) =>
      _questionandansManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQuestionandansCache() => _questionandansManager.clear();
  void clearQuestionandansCacheKey(String? uniqueKey) =>
      _questionandansManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
