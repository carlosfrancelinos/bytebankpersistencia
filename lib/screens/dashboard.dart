import 'package:bytebanknew/screens/contacts_lista.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const _dashboard = 'Dashboard';
  static const _images = 'images/bytebank_logo.png';
  static const _contacts = 'Contacts';

  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_dashboard),
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(_images),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme
                  .of(context)
                  .primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      (MaterialPageRoute(
                        builder: (context) => const ContactsList(),
                      ))
                  );
                },
                child: SizedBox(
                    height: 100,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.people,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        Text(
                          _contacts,
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        )
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}