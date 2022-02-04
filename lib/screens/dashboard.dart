import 'package:bytebanknew/screens/contacts_lista.dart';
import 'package:bytebanknew/screens/transactions_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const _dashboard = 'Dashboard';
  static const _images = 'images/bytebank_logo.png';
  static const _transfer = 'Transfer';
  static const _transactionFeed = 'Transaction Feed';

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
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _FeatureItem(
                  _transfer,
                  Icons.monetization_on,
                  onClick: () => _showContactList(context),
                ),
                _FeatureItem(
                  _transactionFeed,
                  Icons.description,
                  onClick: () => _showTransactionFeed(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showContactList(BuildContext context) {
    Navigator.of(context).push((MaterialPageRoute(
      builder: (context) => const ContactsList(),
    )));
  }

  _showTransactionFeed(BuildContext context) {
    Navigator.of(context).push((MaterialPageRoute(
      builder: (context) => TransactionsList(),
    )));
  }
}

class _FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;

  const _FeatureItem(
    this.name,
    this.icon, {
    required this.onClick,
  })  : assert(icon != null),
        assert(onClick != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () => onClick(),
          child: SizedBox(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  Text(
                    name,
                    style: const TextStyle(color: Colors.white, fontSize: 16.0),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
