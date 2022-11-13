import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  String? get transactionName;

  String? get transactionAmount;

  DateTime? get transactionTime;

  String? get transactionPlace;

  DocumentReference? get category;

  DocumentReference? get user;

  BuiltList<String>? get categoryName;

  String? get transactionReason;

  DocumentReference? get budgetAssociated;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..transactionName = ''
    ..transactionAmount = ''
    ..transactionPlace = ''
    ..categoryName = ListBuilder()
    ..transactionReason = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTransactionsRecordData({
  String? transactionName,
  String? transactionAmount,
  DateTime? transactionTime,
  String? transactionPlace,
  DocumentReference? category,
  DocumentReference? user,
  String? transactionReason,
  DocumentReference? budgetAssociated,
}) {
  final firestoreData = serializers.toFirestore(
    TransactionsRecord.serializer,
    TransactionsRecord(
      (t) => t
        ..transactionName = transactionName
        ..transactionAmount = transactionAmount
        ..transactionTime = transactionTime
        ..transactionPlace = transactionPlace
        ..category = category
        ..user = user
        ..categoryName = null
        ..transactionReason = transactionReason
        ..budgetAssociated = budgetAssociated,
    ),
  );

  return firestoreData;
}
