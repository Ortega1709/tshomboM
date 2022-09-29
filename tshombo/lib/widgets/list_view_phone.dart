import 'package:flutter/material.dart';
import 'package:tshombo/models/data_phone.dart';

class ListViewPhone extends StatefulWidget {

  final List<DataPhone> listPhone;
  const ListViewPhone({super.key, required this.listPhone});

  @override
  State<ListViewPhone> createState() => _ListViewPhoneState();
}

class _ListViewPhoneState extends State<ListViewPhone> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


