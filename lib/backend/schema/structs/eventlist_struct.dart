// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventlistStruct extends FFFirebaseStruct {
  EventlistStruct({
    String? eventimages,
    String? eventname,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eventimages = eventimages,
        _eventname = eventname,
        super(firestoreUtilData);

  // "eventimages" field.
  String? _eventimages;
  String get eventimages => _eventimages ?? '';
  set eventimages(String? val) => _eventimages = val;
  bool hasEventimages() => _eventimages != null;

  // "eventname" field.
  String? _eventname;
  String get eventname => _eventname ?? '';
  set eventname(String? val) => _eventname = val;
  bool hasEventname() => _eventname != null;

  static EventlistStruct fromMap(Map<String, dynamic> data) => EventlistStruct(
        eventimages: data['eventimages'] as String?,
        eventname: data['eventname'] as String?,
      );

  static EventlistStruct? maybeFromMap(dynamic data) => data is Map
      ? EventlistStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'eventimages': _eventimages,
        'eventname': _eventname,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'eventimages': serializeParam(
          _eventimages,
          ParamType.String,
        ),
        'eventname': serializeParam(
          _eventname,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventlistStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventlistStruct(
        eventimages: deserializeParam(
          data['eventimages'],
          ParamType.String,
          false,
        ),
        eventname: deserializeParam(
          data['eventname'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventlistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventlistStruct &&
        eventimages == other.eventimages &&
        eventname == other.eventname;
  }

  @override
  int get hashCode => const ListEquality().hash([eventimages, eventname]);
}

EventlistStruct createEventlistStruct({
  String? eventimages,
  String? eventname,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventlistStruct(
      eventimages: eventimages,
      eventname: eventname,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventlistStruct? updateEventlistStruct(
  EventlistStruct? eventlist, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eventlist
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventlistStructData(
  Map<String, dynamic> firestoreData,
  EventlistStruct? eventlist,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eventlist == null) {
    return;
  }
  if (eventlist.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eventlist.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventlistData = getEventlistFirestoreData(eventlist, forFieldValue);
  final nestedData = eventlistData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eventlist.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventlistFirestoreData(
  EventlistStruct? eventlist, [
  bool forFieldValue = false,
]) {
  if (eventlist == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eventlist.toMap());

  // Add any Firestore field values
  eventlist.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventlistListFirestoreData(
  List<EventlistStruct>? eventlists,
) =>
    eventlists?.map((e) => getEventlistFirestoreData(e, true)).toList() ?? [];
