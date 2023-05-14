import 'dart:developer';

import 'package:adapter_pattern/adapter/json_adapter.dart';
import 'package:flutter/material.dart';

import 'adapter/xml_contact_adapter.dart';
import 'contact.dart';

class XMLLongListWithSeparator extends StatelessWidget {
  final List<Contact> listOfItems = JsonContactsAdapter().getContacts();
  XMLLongListWithSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: listOfItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              log('Clicked on item #$index'); // Print to console
            },
            title: Text(listOfItems[index].fullName),
            subtitle: Text(
                "${listOfItems[index].email}  ${listOfItems[index].phoneNumber}"),
            leading: Container(
              height: 50,
              width: 50,
              color: Colors.amber,
            ),
            trailing: const Icon(Icons.edit),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
