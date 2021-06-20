import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/controllers/controller.dart';

class TableSide extends GetView<TableSideController> {
  const TableSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 8,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.infinity,
          color: Colors.black.withOpacity(.3),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        color: Colors.white,
        iconSize: 25.0,
        onPressed: () => print('back'),
      ),
      elevation: 0.0,
      backgroundColor: Colors.black.withOpacity(.6),
      actions: [
        GetBuilder(
          builder: (TableSideController _) => !controller.isShowSearch
              ? IconButton(
                  onPressed: () => controller.setSearch(),
                  icon: const Icon(Icons.search),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0.0,
                    10.0,
                    10.0,
                    10.0,
                  ),
                  child: SizedBox(
                    width: 200.0,
                    child: TextField(
                      controller: controller.searchController,
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
                ),
        )
      ],
    );
  }
}
