class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String discription;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.discription,
  });
}

class CatalogData {
  static const Map<String, List<Product>> categoryCatalog = {
    'COMPUTERS': [
      Product(
        name: 'Gaming Desktop PC',
        price: '\$1,200',
        imageUrl: 'https://picsum.photos/id/60/200/200',
        discription: 'A little discripon about a product',
      ),
      Product(
        name: 'All-in-One iMac',
        price: '\$1,499',
        imageUrl: 'https://picsum.photos/id/9/200/200',
        discription: 'A little discripon about a product',
      ),
      Product(
        name: 'Office Tower PC',
        price: '\$450',
        imageUrl: 'https://picsum.photos/id/20/200/200',
        discription: 'A little discripon about a product',
      ),
    ],
    'LAPTOPS': [
      Product(
        name: 'HP Pavilion 15',
        price: '\$750',
        imageUrl: 'https://picsum.photos/id/1/200/200',
        discription: 'A little discripon about a product',
      ),
      Product(
        name: 'Dell Inspiron',
        price: '\$680',
        imageUrl: 'https://picsum.photos/id/2/200/200',
        discription: 'A little discripon about a product',
      ),
      Product(
        name: 'Sony Vaio',
        price: '\$550',
        imageUrl: 'https://picsum.photos/id/3/200/200',
        discription: 'A little discripon about a product',
      ),
    ],
    'HARD DRIVES': [
      Product(
        name: 'Seagate External 2TB',
        price: '\$79',
        imageUrl: 'https://picsum.photos/id/160/200/200',
        discription: 'A little discripon about a product',
      ),
      Product(
        name: 'Samsung T7 SSD 1TB',
        price: '\$110',
        imageUrl: 'https://picsum.photos/id/180/200/200',
        discription: 'A little discripon about a product',
      ),
      Product(
        name: 'WD Blue Internal 4TB',
        price: '\$95',
        imageUrl: 'https://picsum.photos/id/250/200/200',
        discription: 'A little discripon about a product',
      ),
    ],
    'FLASH MEMORIES': [
      Product(
        name: 'SanDisk Ultra 64GB',
        price: '\$15',
        imageUrl: 'https://picsum.photos/id/300/200/200',
        discription: 'A little discripon about a product',
      ),
      Product(
        name: 'Kingston DataTraveler',
        price: '\$22',
        imageUrl: 'https://picsum.photos/id/364/200/200',
        discription: 'A little discripon about a product',
      ),
      Product(
        name: 'Samsung BAR Plus 128GB',
        price: '\$29',
        imageUrl: 'https://picsum.photos/id/433/200/200',
        discription: 'A little discripon about a product',
      ),
    ],
  };
}
