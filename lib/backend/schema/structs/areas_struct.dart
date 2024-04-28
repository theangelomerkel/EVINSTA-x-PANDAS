// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreasStruct extends FFFirebaseStruct {
  AreasStruct({
    String? id,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static AreasStruct fromMap(Map<String, dynamic> data) => AreasStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
      );

  static AreasStruct? maybeFromMap(dynamic data) =>
      data is Map ? AreasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static AreasStruct fromSerializableMap(Map<String, dynamic> data) =>
      AreasStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AreasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AreasStruct && id == other.id && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name]);
}

AreasStruct createAreasStruct({
  String? id,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AreasStruct(
      id: id,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AreasStruct? updateAreasStruct(
  AreasStruct? areas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    areas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAreasStructData(
  Map<String, dynamic> firestoreData,
  AreasStruct? areas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (areas == null) {
    return;
  }
  if (areas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && areas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final areasData = getAreasFirestoreData(areas, forFieldValue);
  final nestedData = areasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = areas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAreasFirestoreData(
  AreasStruct? areas, [
  bool forFieldValue = false,
]) {
  if (areas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(areas.toMap());

  // Add any Firestore field values
  areas.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAreasListFirestoreData(
  List<AreasStruct>? areass,
) =>
    areass?.map((e) => getAreasFirestoreData(e, true)).toList() ?? [];
