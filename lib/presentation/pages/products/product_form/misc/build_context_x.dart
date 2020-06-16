import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension FormImageX on BuildContext {
  KtList<ImageItemPrimitive> get formImages =>
      Provider.of<FormImages>(this, listen: false).value;
  set formImages(KtList<ImageItemPrimitive> value) =>
      Provider.of<FormImages>(this, listen: false).value = value;
}