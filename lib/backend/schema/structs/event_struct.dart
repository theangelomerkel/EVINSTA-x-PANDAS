// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventStruct extends FFFirebaseStruct {
  EventStruct({
    int? id,
    String? title,
    int? attending,
    DateTime? date,
    String? contentUrl,
    String? flyerFront,
    bool? newEventform,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _title = title,
        _attending = attending,
        _date = date,
        _contentUrl = contentUrl,
        _flyerFront = flyerFront,
        _newEventform = newEventform,
        super(firestoreUtilData);

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "attending" field.
  int? _attending;
  int get attending => _attending ?? 0;
  set attending(int? val) => _attending = val;
  void incrementAttending(int amount) => _attending = attending + amount;
  bool hasAttending() => _attending != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "contentUrl" field.
  String? _contentUrl;
  String get contentUrl => _contentUrl ?? '';
  set contentUrl(String? val) => _contentUrl = val;
  bool hasContentUrl() => _contentUrl != null;

  // "flyerFront" field.
  String? _flyerFront;
  String get flyerFront => _flyerFront ?? '';
  set flyerFront(String? val) => _flyerFront = val;
  bool hasFlyerFront() => _flyerFront != null;

  // "newEventform" field.
  bool? _newEventform;
  bool get newEventform => _newEventform ?? false;
  set newEventform(bool? val) => _newEventform = val;
  bool hasNewEventform() => _newEventform != null;

  static EventStruct fromMap(Map<String, dynamic> data) => EventStruct(
        id: castToType<int>(data['ID']),
        title: data['title'] as String?,
        attending: castToType<int>(data['attending']),
        date: data['Date'] as DateTime?,
        contentUrl: data['contentUrl'] as String?,
        flyerFront: data['flyerFront'] as String?,
        newEventform: data['newEventform'] as bool?,
      );

  static EventStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'title': _title,
        'attending': _attending,
        'Date': _date,
        'contentUrl': _contentUrl,
        'flyerFront': _flyerFront,
        'newEventform': _newEventform,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'attending': serializeParam(
          _attending,
          ParamType.int,
        ),
        'Date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'contentUrl': serializeParam(
          _contentUrl,
          ParamType.String,
        ),
        'flyerFront': serializeParam(
          _flyerFront,
          ParamType.String,
        ),
        'newEventform': serializeParam(
          _newEventform,
          ParamType.bool,
        ),
      }.withoutNulls;

  static EventStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        attending: deserializeParam(
          data['attending'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['Date'],
          ParamType.DateTime,
          false,
        ),
        contentUrl: deserializeParam(
          data['contentUrl'],
          ParamType.String,
          false,
        ),
        flyerFront: deserializeParam(
          data['flyerFront'],
          ParamType.String,
          false,
        ),
        newEventform: deserializeParam(
          data['newEventform'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'EventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventStruct &&
        id == other.id &&
        title == other.title &&
        attending == other.attending &&
        date == other.date &&
        contentUrl == other.contentUrl &&
        flyerFront == other.flyerFront &&
        newEventform == other.newEventform;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, title, attending, date, contentUrl, flyerFront, newEventform]);
}

EventStruct createEventStruct({
  int? id,
  String? title,
  int? attending,
  DateTime? date,
  String? contentUrl,
  String? flyerFront,
  bool? newEventform,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventStruct(
      id: id,
      title: title,
      attending: attending,
      date: date,
      contentUrl: contentUrl,
      flyerFront: flyerFront,
      newEventform: newEventform,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventStruct? updateEventStruct(
  EventStruct? event, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    event
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventStructData(
  Map<String, dynamic> firestoreData,
  EventStruct? event,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (event == null) {
    return;
  }
  if (event.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && event.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventData = getEventFirestoreData(event, forFieldValue);
  final nestedData = eventData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = event.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventFirestoreData(
  EventStruct? event, [
  bool forFieldValue = false,
]) {
  if (event == null) {
    return {};
  }
  final firestoreData = mapToFirestore(event.toMap());

  // Add any Firestore field values
  event.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventListFirestoreData(
  List<EventStruct>? events,
) =>
    events?.map((e) => getEventFirestoreData(e, true)).toList() ?? [];
