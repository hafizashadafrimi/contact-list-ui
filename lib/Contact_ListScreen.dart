import 'package:flutter/material.dart';

class ContactList {
  ContactList({required this.name, required this.phone});
  final String name;
  final String phone;
}

class Contact_listScreen extends StatelessWidget {
  const Contact_listScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ContactList> contacts = [
      ContactList(name: "Jawad", phone: "01877-777777"),
      ContactList(name: "Ferdous", phone: "01673-777777"),
      ContactList(name: "Hasan", phone: "01745-777777"),
      ContactList(name: "Hasan", phone: "01745-777777"),
      ContactList(name: "Hasan", phone: "01745-777777"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        centerTitle: true,
        elevation: 4,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              initialValue: 'Hasan',
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 8),
            TextFormField(
              initialValue: '01745-777777',
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),

                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    elevation: 2,
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.brown,
                        size: 35,
                      ),
                      title: Text(
                        contacts[index].name,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        contacts[index].phone,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.call,
                        color: Colors.blue,
                        size: 25,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
