import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';
import 'package:stock_app/widgets/widget.dart';

class DataTables extends GetView<TableSideController> {
  const DataTables({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EditTable(
      child: Container(),
    );
  }
}
