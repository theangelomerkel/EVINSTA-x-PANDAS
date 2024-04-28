import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
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
      _cardNumber = prefs.getString('ff_cardNumber') ?? _cardNumber;
    });
    _safeInit(() {
      _cardHolderName = prefs.getString('ff_cardHolderName') ?? _cardHolderName;
    });
    _safeInit(() {
      _cardName = prefs.getString('ff_cardName') ?? _cardName;
    });
    _safeInit(() {
      _zipCode = prefs.getString('ff_zipCode') ?? _zipCode;
    });
    _safeInit(() {
      _listEvents = prefs
              .getStringList('ff_listEvents')
              ?.map((path) => path.ref)
              .toList() ??
          _listEvents;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _cardNumber = '';
  String get cardNumber => _cardNumber;
  set cardNumber(String _value) {
    _cardNumber = _value;
    prefs.setString('ff_cardNumber', _value);
  }

  String _cardHolderName = '';
  String get cardHolderName => _cardHolderName;
  set cardHolderName(String _value) {
    _cardHolderName = _value;
    prefs.setString('ff_cardHolderName', _value);
  }

  String _cardName = '';
  String get cardName => _cardName;
  set cardName(String _value) {
    _cardName = _value;
    prefs.setString('ff_cardName', _value);
  }

  String _zipCode = '';
  String get zipCode => _zipCode;
  set zipCode(String _value) {
    _zipCode = _value;
    prefs.setString('ff_zipCode', _value);
  }

  List<DocumentReference> _guestList = [];
  List<DocumentReference> get guestList => _guestList;
  set guestList(List<DocumentReference> _value) {
    _guestList = _value;
  }

  void addToGuestList(DocumentReference _value) {
    _guestList.add(_value);
  }

  void removeFromGuestList(DocumentReference _value) {
    _guestList.remove(_value);
  }

  void removeAtIndexFromGuestList(int _index) {
    _guestList.removeAt(_index);
  }

  void updateGuestListAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _guestList[_index] = updateFn(_guestList[_index]);
  }

  void insertAtIndexInGuestList(int _index, DocumentReference _value) {
    _guestList.insert(_index, _value);
  }

  bool _showAnswers = false;
  bool get showAnswers => _showAnswers;
  set showAnswers(bool _value) {
    _showAnswers = _value;
  }

  bool _writeAnswer = false;
  bool get writeAnswer => _writeAnswer;
  set writeAnswer(bool _value) {
    _writeAnswer = _value;
  }

  String _video = '';
  String get video => _video;
  set video(String _value) {
    _video = _value;
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
  }

  List<DocumentReference> _listEvents = [];
  List<DocumentReference> get listEvents => _listEvents;
  set listEvents(List<DocumentReference> _value) {
    _listEvents = _value;
    prefs.setStringList('ff_listEvents', _value.map((x) => x.path).toList());
  }

  void addToListEvents(DocumentReference _value) {
    _listEvents.add(_value);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }

  void removeFromListEvents(DocumentReference _value) {
    _listEvents.remove(_value);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }

  void removeAtIndexFromListEvents(int _index) {
    _listEvents.removeAt(_index);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }

  void updateListEventsAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _listEvents[_index] = updateFn(_listEvents[_index]);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }

  void insertAtIndexInListEvents(int _index, DocumentReference _value) {
    _listEvents.insert(_index, _value);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
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
