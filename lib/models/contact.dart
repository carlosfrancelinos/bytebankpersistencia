class Contact {
  final int id;
  final String name;
  final int accountNumber;


  Contact(this.id, this.name, this.accountNumber);

  // Convert a Contact into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'name' : name,
      'accountNumber' : accountNumber,
    };
  }

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, accountNumber: $accountNumber}';
  }
}
