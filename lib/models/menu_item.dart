class MenuItem {
  final String nama;
  final int jumlah;
  final int harga;

  MenuItem({required this.nama, required this.jumlah, required this.harga});
  factory MenuItem.fromMap(Map<String, dynamic> map) {
    return MenuItem(
      nama: map['itemName'],
      jumlah: map['quantity'],
      harga: map['price'],
    );
  }
}
