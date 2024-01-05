// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PickModelStruct extends FFFirebaseStruct {
  PickModelStruct({
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        super(firestoreUtilData);

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static PickModelStruct fromMap(Map<String, dynamic> data) => PickModelStruct(
        id: castToType<int>(data['ID']),
      );

  static PickModelStruct? maybeFromMap(dynamic data) => data is Map
      ? PickModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static PickModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      PickModelStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PickModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PickModelStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

PickModelStruct createPickModelStruct({
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PickModelStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PickModelStruct? updatePickModelStruct(
  PickModelStruct? pickModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pickModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPickModelStructData(
  Map<String, dynamic> firestoreData,
  PickModelStruct? pickModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pickModel == null) {
    return;
  }
  if (pickModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pickModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pickModelData = getPickModelFirestoreData(pickModel, forFieldValue);
  final nestedData = pickModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pickModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPickModelFirestoreData(
  PickModelStruct? pickModel, [
  bool forFieldValue = false,
]) {
  if (pickModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pickModel.toMap());

  // Add any Firestore field values
  pickModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPickModelListFirestoreData(
  List<PickModelStruct>? pickModels,
) =>
    pickModels?.map((e) => getPickModelFirestoreData(e, true)).toList() ?? [];
