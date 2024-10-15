import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _mySchedule = prefs
              .getStringList('ff_mySchedule')
              ?.map((path) => path.ref)
              .toList() ??
          _mySchedule;
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

  List<DocumentReference> _mySchedule = [];
  List<DocumentReference> get mySchedule => _mySchedule;
  set mySchedule(List<DocumentReference> value) {
    _mySchedule = value;
    prefs.setStringList('ff_mySchedule', value.map((x) => x.path).toList());
  }

  void addToMySchedule(DocumentReference value) {
    mySchedule.add(value);
    prefs.setStringList(
        'ff_mySchedule', _mySchedule.map((x) => x.path).toList());
  }

  void removeFromMySchedule(DocumentReference value) {
    mySchedule.remove(value);
    prefs.setStringList(
        'ff_mySchedule', _mySchedule.map((x) => x.path).toList());
  }

  void removeAtIndexFromMySchedule(int index) {
    mySchedule.removeAt(index);
    prefs.setStringList(
        'ff_mySchedule', _mySchedule.map((x) => x.path).toList());
  }

  void updateMyScheduleAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    mySchedule[index] = updateFn(_mySchedule[index]);
    prefs.setStringList(
        'ff_mySchedule', _mySchedule.map((x) => x.path).toList());
  }

  void insertAtIndexInMySchedule(int index, DocumentReference value) {
    mySchedule.insert(index, value);
    prefs.setStringList(
        'ff_mySchedule', _mySchedule.map((x) => x.path).toList());
  }
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
