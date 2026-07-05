class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String discription; // Kept your exact spelling for consistency

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
        discription: 'High-performance powerhouse featuring an advanced dedicated GPU and liquid cooling system. Built explicitly to handle extreme AAA gaming setups and seamless multi-threaded streaming frames.',
      ),
      Product(
        name: 'All-in-One iMac',
        price: '\$1,499',
        imageUrl: 'https://picsum.photos/id/9/200/200',
        discription: 'Stunningly ultra-thin minimalist computer footprint boasting a rich high-resolution display monitor. Perfectly optimized for professional photo workflows, creative video edits, and everyday productivity.',
      ),
      Product(
        name: 'Office Tower PC',
        price: '\$450',
        imageUrl: 'https://picsum.photos/id/20/200/200',
        discription: 'Energy-efficient and highly reliable desktop system tailored for corporate database management, spreadsheets, accounting tasks, and day-to-day web navigation workflows.',
      ),
    ],
    'LAPTOPS': [
      Product(
        name: 'HP Pavilion 15',
        price: '\$750',
        imageUrl: 'https://picsum.photos/id/1/200/200',
        discription: 'Premium elegant laptop design featuring a fast modern processor chip and responsive touchscreen. Excellent daily companion for engineering assignments, software programming, and media streaming.',
      ),
      Product(
        name: 'Dell Inspiron',
        price: '\$680',
        imageUrl: 'https://picsum.photos/id/2/200/200',
        discription: 'Durable construction paired with an expansive long-lasting internal battery module. The absolute go-to balance choice for dynamic university students juggling research sessions and casual recreation.',
      ),
      Product(
        name: 'Sony Vaio',
        price: '\$550',
        imageUrl: 'https://picsum.photos/id/3/200/200',
        discription: 'Classic lightweight, sleek design profile built around a crisp high-fidelity media display system. Exceptional portability choices for writing tasks and remote workspace presentations.',
      ),
      Product(
        name: 'Lenovo ThinkPad X1',
        price: '\$1,199',
        imageUrl: 'https://picsum.photos/id/4/200/200',
        discription: 'Legendary business-class durability featuring an industry-leading tactile keyboard layout. Built with carbon fiber reinforcement to survive tough field work and intense compilation sessions.',
      ),
      Product(
        name: 'ASUS ROG Zephyrus',
        price: '\$1,599',
        imageUrl: 'https://picsum.photos/id/5/200/200',
        discription: 'Ultra-slim high-end gaming device packed with a rapid refresh-rate panel. Delivers maximum processing frame rates without sacrificing thin structural mobility.',
      ),
    ],
    'HARD DRIVES': [
      Product(
        name: 'Seagate External 2TB',
        price: '\$79',
        imageUrl: 'https://picsum.photos/id/160/200/200',
        discription: 'Massive high-capacity portable backup storage unit. Plug-and-play architecture enables swift drag-and-drop actions to secure your video archives, project structures, and file histories safely.',
      ),
      Product(
        name: 'Samsung T7 SSD 1TB',
        price: '\$110',
        imageUrl: 'https://picsum.photos/id/180/200/200',
        discription: 'Pocket-sized Solid State Drive delivering blistering file transfer speeds. Features robust shock protection layouts to guard your essential files against drops while working on the go.',
      ),
      Product(
        name: 'WD Blue Internal 4TB',
        price: '\$95',
        imageUrl: 'https://picsum.photos/id/250/200/200',
        discription: 'Highly reliable internal mechanical hard storage layer built to expand desktop towers. Perfect for deep data archiving, continuous safety backups, and secondary drive arrangements.',
      ),
      Product(
        name: 'Crucial MX500 2TB SSD',
        price: '\$145',
        imageUrl: 'https://picsum.photos/id/240/200/200',
        discription: 'Supercharge your existing hardware boots with top-tier SATA read-write internal mechanics. Ideal upgrade choice for older hardware setups demanding immediate speed responses.',
      ),
      Product(
        name: 'SanDisk Professional 5TB',
        price: '\$180',
        imageUrl: 'https://picsum.photos/id/230/200/200',
        discription: 'Ultra-rugged armor enclosure built to endure severe shock, dust, and rain. Designed specifically for outdoor creators, traveling engineers, and unpredictable field conditions.',
      ),
    ],
    'FLASH MEMORIES': [
      Product(
        name: 'SanDisk Ultra 64GB',
        price: '\$15',
        imageUrl: 'https://picsum.photos/id/300/200/200',
        discription: 'Compact high-speed thumb drive layer engineered to shift documents, assignments, and presentations between distinct lab workstations effortlessly.',
      ),
      Product(
        name: 'Kingston DataTraveler',
        price: '\$22',
        imageUrl: 'https://picsum.photos/id/364/200/200',
        discription: 'Metal loop body frame layout optimized to hook safely onto standard keychains. Ensures secure data mobility for essential configuration files, installers, and project scripts.',
      ),
      Product(
        name: 'Samsung BAR Plus 128GB',
        price: '\$29',
        imageUrl: 'https://picsum.photos/id/433/200/200',
        discription: 'Waterproof, shockproof, and magnet-proof rugged memory casing. Offers exceptional write speeds alongside rugged industrial resilience against harsh outdoor elements.',
      ),
      Product(
        name: 'PNY Turbo 256GB USB 3.0',
        price: '\$45',
        imageUrl: 'https://picsum.photos/id/420/200/200',
        discription: 'Enormous internal sliding cap storage layout capable of stashing massive setup software collections, full Linux OS distros, and heavy code repos securely.',
      ),
      Product(
        name: 'Lexar JumpDrive 64GB',
        price: '\$18',
        imageUrl: 'https://picsum.photos/id/410/200/200',
        discription: 'Features a secure, integrated fingerprint scanner block. Delivers ironclad biological security barriers to guard highly classified lab projects or personal source files.',
      ),
      Product(
        name: 'Corsair Flash Survivor 32GB',
        price: '\$35',
        imageUrl: 'https://picsum.photos/id/400/200/200',
        discription: 'Aircraft-grade hard anodized aluminum waterproof housing. Completely sealed to protect your critical data against heavy impacts and deep underwater submersion.',
      ),
         Product(
        name: 'Draft',
        price: '\$0',
        imageUrl: '',
        discription: 'A simple draft product for testing.',
      ),


    ]
,

'Draft Product': [  ],
 
  };
}