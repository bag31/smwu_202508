class Product {
  String name;
  String company;
  int count = 0;
  int price = 50000;

  Product({
    required this.name,
    required this.company,
    this.count = 0,
    this.price = 50000,
  });

  void sale() {
    count += 1;
  }

  // generate에서 toString을 선택해서 작성해야 print할 때 Instance라고 안 뜨고 전체 다 보인다.
  @override
  String toString() {
    return 'Product{name: $name, company: $company, count: $count, price: $price}';
  }

  // Product.name(this.name, this.company);
  // Product.all(this.name, this.company, this.count, this.price);
}
