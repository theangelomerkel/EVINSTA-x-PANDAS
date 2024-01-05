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
  set cardNumber(String value) {
    _cardNumber = value;
    prefs.setString('ff_cardNumber', value);
  }

  String _cardHolderName = '';
  String get cardHolderName => _cardHolderName;
  set cardHolderName(String value) {
    _cardHolderName = value;
    prefs.setString('ff_cardHolderName', value);
  }

  String _cardName = '';
  String get cardName => _cardName;
  set cardName(String value) {
    _cardName = value;
    prefs.setString('ff_cardName', value);
  }

  String _zipCode = '';
  String get zipCode => _zipCode;
  set zipCode(String value) {
    _zipCode = value;
    prefs.setString('ff_zipCode', value);
  }

  List<DocumentReference> _guestList = [];
  List<DocumentReference> get guestList => _guestList;
  set guestList(List<DocumentReference> value) {
    _guestList = value;
  }

  void addToGuestList(DocumentReference value) {
    _guestList.add(value);
  }

  void removeFromGuestList(DocumentReference value) {
    _guestList.remove(value);
  }

  void removeAtIndexFromGuestList(int index) {
    _guestList.removeAt(index);
  }

  void updateGuestListAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _guestList[index] = updateFn(_guestList[index]);
  }

  void insertAtIndexInGuestList(int index, DocumentReference value) {
    _guestList.insert(index, value);
  }

  bool _showAnswers = false;
  bool get showAnswers => _showAnswers;
  set showAnswers(bool value) {
    _showAnswers = value;
  }

  bool _writeAnswer = false;
  bool get writeAnswer => _writeAnswer;
  set writeAnswer(bool value) {
    _writeAnswer = value;
  }

  String _video = '';
  String get video => _video;
  set video(String value) {
    _video = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  List<DocumentReference> _listEvents = [];
  List<DocumentReference> get listEvents => _listEvents;
  set listEvents(List<DocumentReference> value) {
    _listEvents = value;
    prefs.setStringList('ff_listEvents', value.map((x) => x.path).toList());
  }

  void addToListEvents(DocumentReference value) {
    _listEvents.add(value);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }

  void removeFromListEvents(DocumentReference value) {
    _listEvents.remove(value);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }

  void removeAtIndexFromListEvents(int index) {
    _listEvents.removeAt(index);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }

  void updateListEventsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _listEvents[index] = updateFn(_listEvents[index]);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }

  void insertAtIndexInListEvents(int index, DocumentReference value) {
    _listEvents.insert(index, value);
    prefs.setStringList(
        'ff_listEvents', _listEvents.map((x) => x.path).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
