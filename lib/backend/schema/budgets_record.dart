import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'budgets_record.g.dart';

abstract class BudgetsRecord
    implements Built<BudgetsRecord, BudgetsRecordBuilder> {
  static Serializer<BudgetsRecord> get serializer => _$budgetsRecordSerializer;

  String? get budetName;

  DateTime? get budgetCreated;

  String? get budgetDescription;

  DocumentReference? get userBudgets;

  DateTime? get budgetStartDate;

  String? get budgetTime;

  String? get budgetAmount;

  int? get budgetAmountNumber;

  int? get budgetSpentNumber;

  String? get budgetSpent;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BudgetsRecordBuilder builder) => builder
    ..budetName = ''
    ..budgetDescription = ''
    ..budgetTime = ''
    ..budgetAmount = ''
    ..budgetAmountNumber = 0
    ..budgetSpentNumber = 0
    ..budgetSpent = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('budgets');

  static Stream<BudgetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BudgetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BudgetsRecord._();
  factory BudgetsRecord([void Function(BudgetsRecordBuilder) updates]) =
      _$BudgetsRecord;

  static BudgetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBudgetsRecordData({
  String? budetName,
  DateTime? budgetCreated,
  String? budgetDescription,
  DocumentReference? userBudgets,
  DateTime? budgetStartDate,
  String? budgetTime,
  String? budgetAmount,
  int? budgetAmountNumber,
  int? budgetSpentNumber,
  String? budgetSpent,
}) {
  final firestoreData = serializers.toFirestore(
    BudgetsRecord.serializer,
    BudgetsRecord(
      (b) => b
        ..budetName = budetName
        ..budgetCreated = budgetCreated
        ..budgetDescription = budgetDescription
        ..userBudgets = userBudgets
        ..budgetStartDate = budgetStartDate
        ..budgetTime = budgetTime
        ..budgetAmount = budgetAmount
        ..budgetAmountNumber = budgetAmountNumber
        ..budgetSpentNumber = budgetSpentNumber
        ..budgetSpent = budgetSpent,
    ),
  );

  return firestoreData;
}
