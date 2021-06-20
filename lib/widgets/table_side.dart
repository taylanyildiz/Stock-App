import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';
import 'package:stock_app/widgets/widget.dart';

class TableSide extends GetView<TableSideController> {
  const TableSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 8,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          width: double.infinity,
          color: Colors.black.withOpacity(.3),
          child: Stack(
            children: [
              const DataTables(),
              _buidAddHeaderTable(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.black.withOpacity(.6),
      leading: IconButton(
        mouseCursor: MouseCursor.uncontrolled,
        icon: const Icon(Icons.arrow_back_ios),
        color: Colors.white,
        iconSize: 25.0,
        onPressed: () => print('back'),
      ),
      actions: [
        GetBuilder(
          builder: (TableSideController _) => !controller.isShowSearch
              ? _buildSearchButton()
              : _buildSearchComponents(),
        )
      ],
    );
  }

  Widget _buildSearchComponents() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
      child: SizedBox(
        width: 200.0,
        child: TextField(
          controller: controller.searchController,
          onChanged: controller.onChangeSearch,
          onSubmitted: controller.onSubmittedSearch,
          textInputAction: TextInputAction.search,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(top: 5.0),
            prefixIcon: Icon(
              Icons.search,
              size: 14.0,
            ),
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchButton() {
    return IconButton(
      mouseCursor: MouseCursor.uncontrolled,
      onPressed: () => controller.setSearch(),
      icon: const Icon(Icons.search),
    );
  }

  Widget _buidAddHeaderTable() {
    return Positioned(
      bottom: 10.0,
      right: 10.0,
      child: Row(
        children: [
          PrimaryButton(
            onPressed: () => print(''),
            title: 'Add',
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
          const SizedBox(width: 5.0),
          PrimaryButton(
            onPressed: () => print(''),
            title: 'Romove',
            backgroundColor: Colors.white,
            textColor: Colors.black,
          )
        ],
      ),
    );
  }
}
