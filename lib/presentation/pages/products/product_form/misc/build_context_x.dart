import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/catagory_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/lables_item_presentation.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/sub_product_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension FormImageX on BuildContext {
  KtList<ImageItemPrimitive> get formImages =>
      Provider.of<FormImages>(this, listen: false).value;
  set formImages(KtList<ImageItemPrimitive> value) =>
      Provider.of<FormImages>(this, listen: false).value = value;
}

extension FormCatagoryX on BuildContext {
  KtList<CatagoryItemPrimitive> get formCatagories =>
      Provider.of<FormCatagories>(this, listen: false).value;
  set formCatagories(KtList<CatagoryItemPrimitive> value) =>
      Provider.of<FormCatagories>(this, listen: false).value = value;
}

extension FormLabelX on BuildContext {
  List<String> get formLabels =>
      Provider.of<FormLabels>(this, listen: false).value;
  set formLabels(List<String> value) =>
      Provider.of<FormLabels>(this, listen: false).value = value;
}

extension FormSubProductX on BuildContext {
  List<SubProductPrimitive> get formSubProducts =>
      Provider.of<FormSubProducts>(this, listen: false).value;
  set formSubProducts(List<SubProductPrimitive> value) =>
      Provider.of<FormSubProducts>(this, listen: false).value = value;
}
