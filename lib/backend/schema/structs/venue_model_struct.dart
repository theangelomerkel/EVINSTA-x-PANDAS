// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VenueModelStruct extends FFFirebaseStruct {
  VenueModelStruct({
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

  static VenueModelStruct fromMap(Map<String, dynamic> data) =>
      VenueModelStruct(
        id: castToType<int>(data['ID']),
      );

  static VenueModelStruct? maybeFromMap(dynamic data) => data is Map
      ? VenueModelStruct.fromMap(data.cast<String, dynamic>())
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

  static VenueModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      VenueModelStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VenueModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VenueModelStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

VenueModelStruct createVenueModelStruct({
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VenueModelStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VenueModelStruct? updateVenueModelStruct(
  VenueModelStruct? venueModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    venueModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVenueModelStructData(
  Map<String, dynamic> firestoreData,
  VenueModelStruct? venueModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (venueModel == null) {
    return;
  }
  if (venueModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && venueModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final venueModelData = getVenueModelFirestoreData(venueModel, forFieldValue);
  final nestedData = venueModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = venueModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVenueModelFirestoreData(
  VenueModelStruct? venueModel, [
  bool forFieldValue = false,
]) {
  if (venueModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(venueModel.toMap());

  // Add any Firestore field values
  venueModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVenueModelListFirestoreData(
  List<VenueModelStruct>? venueModels,
) =>
    venueModels?.map((e) => getVenueModelFirestoreData(e, true)).toList() ?? [];
