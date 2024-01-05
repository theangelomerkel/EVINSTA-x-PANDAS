import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "propertyRef" field.
  DocumentReference? _propertyRef;
  DocumentReference? get propertyRef => _propertyRef;
  bool hasPropertyRef() => _propertyRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "ratingDescription" field.
  String? _ratingDescription;
  String get ratingDescription => _ratingDescription ?? '';
  bool hasRatingDescription() => _ratingDescription != null;

  // "ratingCreated" field.
  DateTime? _ratingCreated;
  DateTime? get ratingCreated => _ratingCreated;
  bool hasRatingCreated() => _ratingCreated != null;

  // "liked_users" field.
  List<DocumentReference>? _likedUsers;
  List<DocumentReference> get likedUsers => _likedUsers ?? const [];
  bool hasLikedUsers() => _likedUsers != null;

  // "imgs" field.
  List<String>? _imgs;
  List<String> get imgs => _imgs ?? const [];
  bool hasImgs() => _imgs != null;

  // "video" field.
  List<String>? _video;
  List<String> get video => _video ?? const [];
  bool hasVideo() => _video != null;

  void _initializeFields() {
    _propertyRef = snapshotData['propertyRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _rating = castToType<double>(snapshotData['rating']);
    _ratingDescription = snapshotData['ratingDescription'] as String?;
    _ratingCreated = snapshotData['ratingCreated'] as DateTime?;
    _likedUsers = getDataList(snapshotData['liked_users']);
    _imgs = getDataList(snapshotData['imgs']);
    _video = getDataList(snapshotData['video']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  DocumentReference? propertyRef,
  DocumentReference? userRef,
  double? rating,
  String? ratingDescription,
  DateTime? ratingCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'propertyRef': propertyRef,
      'userRef': userRef,
      'rating': rating,
      'ratingDescription': ratingDescription,
      'ratingCreated': ratingCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.propertyRef == e2?.propertyRef &&
        e1?.userRef == e2?.userRef &&
        e1?.rating == e2?.rating &&
        e1?.ratingDescription == e2?.ratingDescription &&
        e1?.ratingCreated == e2?.ratingCreated &&
        listEquality.equals(e1?.likedUsers, e2?.likedUsers) &&
        listEquality.equals(e1?.imgs, e2?.imgs) &&
        listEquality.equals(e1?.video, e2?.video);
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.propertyRef,
        e?.userRef,
        e?.rating,
        e?.ratingDescription,
        e?.ratingCreated,
        e?.likedUsers,
        e?.imgs,
        e?.video
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
