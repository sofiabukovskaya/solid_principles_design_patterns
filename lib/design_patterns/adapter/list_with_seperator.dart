import 'package:flutter/material.dart';

import 'contact.dart';

class XMLLongListWithSeparator extends StatelessWidget {
  final List<Contact> listOfItems = XmlContactsAdapter().getContacts();
  XMLLongListWithSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: listOfItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              debugPrint('Clicked on item #$index');
            },
            title: Text(listOfItems[index].fullName),
            subtitle: Text(
                '${listOfItems[index].email} ${listOfItems[index].phoneNumber}'),
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
