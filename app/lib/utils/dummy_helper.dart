import '../app/data/models/product_model.dart';
import 'constants.dart';

class DummyHelper {
  const DummyHelper._();

  // Automatic image assignment based on product name keywords
  static String getAutomaticImage(String productName) {
    // Check if we have a local image for this clothing item
    if (clothingImages.containsKey(productName)) {
      return clothingImages[productName]!;
    }

    final name = productName.toLowerCase();

    // Hoodie detection
    if (name.contains('hoodie') ||
        name.contains('sweatshirt') ||
        name.contains('pullover')) {
      return 'assets/images/nike sportswear hoodie.avif';
    }

    // Jeans detection
    if (name.contains('jeans') ||
        name.contains('denim') ||
        name.contains('pants') ||
        name.contains('trousers')) {
      return 'assets/images/levis 501 original jeans.jpg';
    }

    // T-Shirt detection
    if (name.contains('t-shirt') ||
        name.contains('tee') ||
        name.contains('shirt') &&
            !name.contains('oxford') &&
            !name.contains('polo')) {
      return 'assets/images/h & m t-shirt.jpg';
    }

    // Blazer detection
    if (name.contains('blazer') ||
        name.contains('jacket') && !name.contains('sweater')) {
      return 'assets/images/zara basic blazar.jpg';
    }

    // Sweater detection
    if (name.contains('sweater') ||
        name.contains('cardigan') ||
        name.contains('knit')) {
      return 'assets/images/banana republic cashmere sweater.jpg';
    }

    // Polo shirt detection
    if (name.contains('polo')) {
      return 'assets/images/j.crew factory polo shirt.jpg';
    }

    // Oxford shirt detection
    if (name.contains('oxford') || name.contains('button-down')) {
      return 'assets/images/tommy hilifiger oxford shirt.jpg';
    }

    // Thermal shirt detection
    if (name.contains('thermal') || name.contains('heattech')) {
      return 'assets/images/uniqlo heat tech thermal shirt.jpg';
    }

    // Activewear detection
    if (name.contains('leggings') ||
        name.contains('shorts') ||
        name.contains('training') ||
        name.contains('dri-fit')) {
      if (name.contains('leggings')) {
        return 'assets/images/luluemon align leegings.jpg';
      } else if (name.contains('shorts')) {
        return 'assets/images/nike dri-fit training shorts.jpg';
      } else {
        return 'assets/images/luluemon align leegings.jpg';
      }
    }

    // Underwear detection
    if (name.contains('boxer') ||
        name.contains('briefs') ||
        name.contains('underwear')) {
      return 'assets/images/calvin klein boxer.jpg';
    }

    // Default fallback
    return 'assets/images/no_data.png';
  }

  // Clothing images mapping to local assets
  static const Map<String, String> clothingImages = {
    'Supreme Box Logo Hoodie': 'assets/images/supreme box logo hoodie.jpg',
    'Levi\'s 501 Original Jeans': 'assets/images/levis 501 original jeans.jpg',
    'H&M Divided Skinny Jeans':
        'assets/images/levis 501 original jeans.jpg', // Using jeans image as fallback
    'Gap Essential Chinos': 'assets/images/gap essential chinos.jpg',
    'H&M Conscious Collection T-Shirt': 'assets/images/h & m t-shirt.jpg',
    'Old Navy Graphic Tee': 'assets/images/old navy graphic tee.jpg',
    'J.Crew Factory Polo Shirt': 'assets/images/j.crew factory polo shirt.jpg',
    'Uniqlo HeatTech Thermal Shirt':
        'assets/images/uniqlo heat tech thermal shirt.jpg',
    'Tommy Hilfiger Oxford Shirt':
        'assets/images/tommy hilifiger oxford shirt.jpg',
    'Zara Basic Blazer': 'assets/images/zara basic blazar.jpg',
    'Banana Republic Cashmere Sweater':
        'assets/images/banana republic cashmere sweater.jpg',
    'Patagonia Better Sweater Jacket':
        'assets/images/patagonai better sweater jacket.jpg',
    'The North Face Denali Jacket':
        'assets/images/the north face denail jacket.jpg',
    'Lululemon Align Leggings': 'assets/images/luluemon align leegings.jpg',
    'Nike Dri-FIT Training Shorts':
        'assets/images/nike dri-fit training shorts.jpg',
    'Calvin Klein Underwear Boxer Briefs':
        'assets/images/calvin klein boxer.jpg',
  };

  // Mock product data organized by subcategory
  static final Map<String, List<Map<String, dynamic>>> subcategoryProducts = {
    'cars': [
      {
        'name': 'Remote Control Car',
        'price': 799.0,
        'rating': 4.5,
        'reviews': '245 reviews',
        'image': 'assets/images/remote control car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.2kg',
        'description':
            'High-speed RC car for kids and adults with rechargeable battery.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Diecast Mini Car Set',
        'price': 499.0,
        'rating': 4.2,
        'reviews': '173 reviews',
        'image': 'assets/images/Diecast Mini Car Set.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.3kg',
        'description':
            'Pack of 5 metal cars — perfect for kids and collectors.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Electric Toy Car',
        'price': 1299.0,
        'rating': 4.7,
        'reviews': '40 reviews',
        'image': 'assets/images/Electric Toy Car.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.5kg',
        'description': 'Battery-powered ride-on car with realistic features.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Plastic Car Model Kit',
        'price': 349.0,
        'rating': 4.3,
        'reviews': '306 reviews',
        'image': 'assets/images/Plastic Car Model Kit.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.8kg',
        'description': 'DIY assembly kit for building scale model cars.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Racing Car Track Set',
        'price': 1599.0,
        'rating': 4.6,
        'reviews': '487 reviews',
        'image': 'assets/images/Racing Car Track Set.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.2kg',
        'description': 'Complete racing track with loops and jumps.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Toy Car Garage',
        'price': 899.0,
        'rating': 4.4,
        'reviews': '428 reviews',
        'image': 'assets/images/Toy Car Garage.jpg',
        'size': 'Standard Size, Large',
        'weight': '1.8kg',
        'description': 'Multi-level garage for toy cars with ramps.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Speed Racer Car',
        'price': 649.0,
        'rating': 4.3,
        'reviews': '301 reviews',
        'image': 'assets/images/Speed Racer Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.9kg',
        'description': 'Aerodynamic toy car designed for speed.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Monster Truck Toy',
        'price': 1199.0,
        'rating': 4.8,
        'reviews': '238 reviews',
        'image': 'assets/images/Monster Truck Toy.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.2kg',
        'description': 'Off-road monster truck with big wheels.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Convertible Sports Car',
        'price': 749.0,
        'rating': 4.5,
        'reviews': '487 reviews',
        'image': 'assets/images/Convertible sports car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.0kg',
        'description': 'Stylish convertible toy car with removable top.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Formula 1 Racing Car',
        'price': 999.0,
        'rating': 4.7,
        'reviews': '469 reviews',
        'image': 'assets/images/Formula 1 Racing Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.7kg',
        'description': 'Detailed F1 car model with authentic design.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Police Car Toy',
        'price': 599.0,
        'rating': 4.2,
        'reviews': '322 reviews',
        'image': 'assets/images/Police Car Toy.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.1kg',
        'description': 'Realistic police car with lights and siren.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Fire Truck Car',
        'price': 1099.0,
        'rating': 4.6,
        'reviews': '419 reviews',
        'image': 'assets/images/Fire Truck Car.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.0kg',
        'description': 'Emergency fire truck with ladder and hose.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Ambulance Toy',
        'price': 799.0,
        'rating': 4.4,
        'reviews': '237 reviews',
        'image': 'assets/images/Ambulance Toy.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.5kg',
        'description': 'Medical ambulance with flashing lights.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Construction Vehicle Set',
        'price': 1399.0,
        'rating': 4.5,
        'reviews': '431 reviews',
        'image': 'assets/images/Construction  Vechicle Set.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.5kg',
        'description': 'Set of construction vehicles including bulldozer.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Luxury Sedan Model',
        'price': 899.0,
        'rating': 4.3,
        'reviews': '366 reviews',
        'image': 'assets/images/Luxury Sedan Model.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.8kg',
        'description': 'Detailed luxury car model with opening doors.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Hot Wheels Track Builder',
        'price': 1899.0,
        'rating': 4.8,
        'reviews': '156 reviews',
        'image': 'assets/images/Racing Car Track Set.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.2kg',
        'description': 'Expandable track system with multiple configurations.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'RC Drift Car',
        'price': 1099.0,
        'rating': 4.6,
        'reviews': '89 reviews',
        'image': 'assets/images/remote control car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.4kg',
        'description': 'Professional drift RC car with gyro stabilization.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Vintage Car Model',
        'price': 699.0,
        'rating': 4.4,
        'reviews': '234 reviews',
        'image': 'assets/images/Plastic Car Model Kit.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.6kg',
        'description': 'Detailed 1960s muscle car model kit.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Stunt Car Set',
        'price': 1599.0,
        'rating': 4.7,
        'reviews': '178 reviews',
        'image': 'assets/images/Diecast Mini Car Set.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.8kg',
        'description': 'Extreme stunt cars with launch ramps and obstacles.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Smart Car Toy',
        'price': 849.0,
        'rating': 4.5,
        'reviews': '267 reviews',
        'image': 'assets/images/Electric Toy Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.8kg',
        'description': 'App-controlled smart car with LED lights.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Rally Car Model',
        'price': 949.0,
        'rating': 4.6,
        'reviews': '145 reviews',
        'image': 'assets/images/Speed Racer Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.1kg',
        'description': 'Off-road rally car with detailed suspension.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Transformer Car',
        'price': 1299.0,
        'rating': 4.8,
        'reviews': '312 reviews',
        'image': 'assets/images/Monster Truck Toy.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.4kg',
        'description': 'Transforming robot car with multiple configurations.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Classic Car Collection',
        'price': 2199.0,
        'rating': 4.9,
        'reviews': '98 reviews',
        'image': 'assets/images/Luxury Sedan Model.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.8kg',
        'description': 'Set of 10 classic car models from different eras.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'RC Monster Truck',
        'price': 1799.0,
        'rating': 4.7,
        'reviews': '203 reviews',
        'image': 'assets/images/Monster Truck Toy.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.1kg',
        'description': 'Remote control monster truck with 4WD system.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Diecast Sports Car',
        'price': 399.0,
        'rating': 4.3,
        'reviews': '456 reviews',
        'image': 'assets/images/Convertible sports car.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.25kg',
        'description': 'Highly detailed sports car diecast model.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Car Carrier',
        'price': 2599.0,
        'rating': 4.7,
        'reviews': '86 reviews',
        'image': 'assets/images/Car Carrier.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.8kg',
        'description': 'Multi-level car transport truck.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Construction Vehicle Set',
        'price': 1399.0,
        'rating': 4.5,
        'reviews': '431 reviews',
        'image': 'assets/images/Construction  Vechicle Set.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.5kg',
        'description': 'Set of construction vehicles including bulldozer.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Toy Car Garage',
        'price': 899.0,
        'rating': 4.4,
        'reviews': '428 reviews',
        'image': 'assets/images/Toy Car Garage.jpg',
        'size': 'Standard Size, Large',
        'weight': '1.8kg',
        'description': 'Multi-level garage for toy cars with ramps.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Racing Car Track Set',
        'price': 1599.0,
        'rating': 4.6,
        'reviews': '487 reviews',
        'image': 'assets/images/Racing Car Track Set.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.2kg',
        'description': 'Complete racing track with loops and jumps.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Hot Wheels Track Builder',
        'price': 1899.0,
        'rating': 4.8,
        'reviews': '156 reviews',
        'image': 'assets/images/Racing Car Track Set.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.2kg',
        'description': 'Expandable track system with multiple configurations.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'RC Drift Car',
        'price': 1099.0,
        'rating': 4.6,
        'reviews': '89 reviews',
        'image': 'assets/images/remote control car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.4kg',
        'description': 'Professional drift RC car with gyro stabilization.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Smart Car Toy',
        'price': 849.0,
        'rating': 4.5,
        'reviews': '267 reviews',
        'image': 'assets/images/Electric Toy Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.8kg',
        'description': 'App-controlled smart car with LED lights.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Transformer Car',
        'price': 1299.0,
        'rating': 4.8,
        'reviews': '312 reviews',
        'image': 'assets/images/Monster Truck Toy.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.4kg',
        'description': 'Transforming robot car with multiple configurations.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Police Car Toy',
        'price': 599.0,
        'rating': 4.2,
        'reviews': '322 reviews',
        'image': 'assets/images/Police Car Toy.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.1kg',
        'description': 'Realistic police car with lights and siren.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Fire Truck Car',
        'price': 1099.0,
        'rating': 4.6,
        'reviews': '419 reviews',
        'image': 'assets/images/Fire Truck Car.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.0kg',
        'description': 'Emergency fire truck with ladder and hose.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Ambulance Toy',
        'price': 799.0,
        'rating': 4.4,
        'reviews': '237 reviews',
        'image': 'assets/images/Ambulance Toy.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.5kg',
        'description': 'Medical ambulance with flashing lights.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Convertible Sports Car',
        'price': 749.0,
        'rating': 4.5,
        'reviews': '487 reviews',
        'image': 'assets/images/Convertible sports car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.0kg',
        'description': 'Stylish convertible toy car with removable top.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Formula 1 Racing Car',
        'price': 999.0,
        'rating': 4.7,
        'reviews': '469 reviews',
        'image': 'assets/images/Formula 1 Racing Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.7kg',
        'description': 'Detailed F1 car model with authentic design.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Speed Racer Car',
        'price': 649.0,
        'rating': 4.3,
        'reviews': '301 reviews',
        'image': 'assets/images/Speed Racer Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.9kg',
        'description': 'Aerodynamic toy car designed for speed.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Rally Car Model',
        'price': 949.0,
        'rating': 4.6,
        'reviews': '145 reviews',
        'image': 'assets/images/Speed Racer Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.1kg',
        'description': 'Off-road rally car with detailed suspension.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Stunt Car Set',
        'price': 1599.0,
        'rating': 4.7,
        'reviews': '178 reviews',
        'image': 'assets/images/Diecast Mini Car Set.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.8kg',
        'description': 'Extreme stunt cars with launch ramps and obstacles.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
      {
        'name': 'Vintage Car Model',
        'price': 699.0,
        'rating': 4.4,
        'reviews': '234 reviews',
        'image': 'assets/images/Plastic Car Model Kit.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.6kg',
        'description': 'Detailed 1960s muscle car model kit.',
        'category': 'Vehicles',
        'subcategory': 'Cars'
      },
    ],
    'bikes': [
      {
        'name': 'Kids Balance Bike',
        'price': 2499.0,
        'rating': 4.4,
        'reviews': '151 reviews',
        'image': 'assets/images/Kids Balance Bike.jpg',
        'size': 'Standard Size, Small',
        'weight': '4.5kg',
        'description': 'No-pedal bike to help kids learn balance.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Tricycle with Basket',
        'price': 1899.0,
        'rating': 4.1,
        'reviews': '354 reviews',
        'image': 'assets/images/Tricycle with Basket.jpg',
        'size': 'Standard Size, Medium',
        'weight': '6.2kg',
        'description': 'Three-wheeled bike with storage basket.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Scooter with Lights',
        'price': 1299.0,
        'rating': 4.3,
        'reviews': '112 reviews',
        'image': 'assets/images/Scooter with Lights.jpg',
        'size': 'Standard Size, Medium',
        'weight': '3.8kg',
        'description': 'Foldable scooter with LED lights.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Mountain Bike',
        'price': 15999.0,
        'rating': 4.7,
        'reviews': '46 reviews',
        'image': 'assets/images/Mountain Bike.jpg',
        'size': 'Standard Size, Large',
        'weight': '14.5kg',
        'description': 'All-terrain mountain bike with suspension.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Road Bike',
        'price': 22999.0,
        'rating': 4.8,
        'reviews': '306 reviews',
        'image': 'assets/images/Road Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '9.2kg',
        'description': 'Lightweight carbon road bike for speed.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Electric Bike',
        'price': 45999.0,
        'rating': 4.9,
        'reviews': '364 reviews',
        'image': 'assets/images/Electric Bike.jpg',
        'size': 'Standard Size, Large',
        'weight': '22.0kg',
        'description': 'Electric assist bike with long battery life.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'BMX Bike',
        'price': 8999.0,
        'rating': 4.5,
        'reviews': '486 reviews',
        'image': 'assets/images/BMX Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '11.8kg',
        'description': 'Stunt BMX bike with pegs and tricks.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Hybrid Bike',
        'price': 18999.0,
        'rating': 4.6,
        'reviews': '121 reviews',
        'image': 'assets/images/Hybrid Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '12.5kg',
        'description': 'Versatile hybrid bike for city and trails.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Kids Training Wheels Bike',
        'price': 3499.0,
        'rating': 4.2,
        'reviews': '83 reviews',
        'image': 'assets/images/Kids Training Wheels Bike.jpg',
        'size': 'Standard Size, Small',
        'weight': '8.5kg',
        'description': 'Bike with training wheels for beginners.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Folding Bike',
        'price': 25999.0,
        'rating': 4.4,
        'reviews': '157 reviews',
        'image': 'assets/images/Folding Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '11.0kg',
        'description': 'Compact folding bike for urban commuting.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Cruiser Bike',
        'price': 12999.0,
        'rating': 4.3,
        'reviews': '206 reviews',
        'image': 'assets/images/Cruiser Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '13.2kg',
        'description': 'Comfortable cruiser bike with wide tires.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Tandem Bike',
        'price': 39999.0,
        'rating': 4.6,
        'reviews': '192 reviews',
        'image': 'assets/images/Tandem Bike.jpg',
        'size': 'Standard Size, Large',
        'weight': '28.0kg',
        'description': 'Two-person tandem bike for couples.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Fixed Gear Bike',
        'price': 17999.0,
        'rating': 4.5,
        'reviews': '230 reviews',
        'image': 'assets/images/Fixed Gear Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '10.5kg',
        'description': 'Single-speed fixed gear bike for urban riding.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Recumbent Bike',
        'price': 31999.0,
        'rating': 4.4,
        'reviews': '191 reviews',
        'image': 'assets/images/Recumbent Bike.jpg',
        'size': 'Standard Size, Large',
        'weight': '15.8kg',
        'description': 'Comfortable recumbent bike with back support.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Cargo Bike',
        'price': 49999.0,
        'rating': 4.7,
        'reviews': '321 reviews',
        'image': 'assets/images/Cargo Bike.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '35.0kg',
        'description': 'Heavy-duty cargo bike for transporting goods.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Touring Bike',
        'price': 27999.0,
        'rating': 4.6,
        'reviews': '339 reviews',
        'image': 'assets/images/Touring Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '12.8kg',
        'description': 'Long-distance touring bike with pannier racks.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Kids Mountain Bike',
        'price': 7999.0,
        'rating': 4.3,
        'reviews': '370 reviews',
        'image': 'assets/images/Kids Mountain Bike.jpg',
        'size': 'Standard Size, Small',
        'weight': '9.5kg',
        'description': 'Durable mountain bike designed for kids.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Exercise Bike',
        'price': 15999.0,
        'rating': 4.5,
        'reviews': '166 reviews',
        'image': 'assets/images/Exercise Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '18.5kg',
        'description': 'Stationary exercise bike for indoor fitness.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Gravel Bike',
        'price': 34999.0,
        'rating': 4.7,
        'reviews': '209 reviews',
        'image': 'assets/images/Gravel Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '10.8kg',
        'description': 'Versatile gravel bike for mixed terrain.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Time Trial Bike',
        'price': 59999.0,
        'rating': 4.8,
        'reviews': '395 reviews',
        'image': 'assets/images/Time Trial Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '8.5kg',
        'description': 'Aerodynamic time trial bike for racing.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'BMX Bike',
        'price': 8999.0,
        'rating': 4.5,
        'reviews': '486 reviews',
        'image': 'assets/images/BMX Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '11.8kg',
        'description': 'Stunt BMX bike with pegs and tricks.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Kids Balance Bike',
        'price': 2499.0,
        'rating': 4.4,
        'reviews': '151 reviews',
        'image': 'assets/images/Kids Balance Bike.jpg',
        'size': 'Standard Size, Small',
        'weight': '4.5kg',
        'description': 'No-pedal bike to help kids learn balance.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Kids Training Wheels Bike',
        'price': 3499.0,
        'rating': 4.2,
        'reviews': '83 reviews',
        'image': 'assets/images/Kids Training Wheels Bike.jpg',
        'size': 'Standard Size, Small',
        'weight': '8.5kg',
        'description': 'Bike with training wheels for beginners.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Kids Mountain Bike',
        'price': 7999.0,
        'rating': 4.3,
        'reviews': '370 reviews',
        'image': 'assets/images/Kids Mountain Bike.jpg',
        'size': 'Standard Size, Small',
        'weight': '9.5kg',
        'description': 'Durable mountain bike designed for kids.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Tricycle with Basket',
        'price': 1899.0,
        'rating': 4.1,
        'reviews': '354 reviews',
        'image': 'assets/images/Tricycle with Basket.jpg',
        'size': 'Standard Size, Medium',
        'weight': '6.2kg',
        'description': 'Three-wheeled bike with storage basket.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Scooter with Lights',
        'price': 1299.0,
        'rating': 4.3,
        'reviews': '112 reviews',
        'image': 'assets/images/Scooter with Lights.jpg',
        'size': 'Standard Size, Medium',
        'weight': '3.8kg',
        'description': 'Foldable scooter with LED lights.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Cruiser Bike',
        'price': 12999.0,
        'rating': 4.3,
        'reviews': '206 reviews',
        'image': 'assets/images/Cruiser Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '13.2kg',
        'description': 'Comfortable cruiser bike with wide tires.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Folding Bike',
        'price': 25999.0,
        'rating': 4.4,
        'reviews': '157 reviews',
        'image': 'assets/images/Folding Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '11.0kg',
        'description': 'Compact folding bike for urban commuting.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Tandem Bike',
        'price': 39999.0,
        'rating': 4.6,
        'reviews': '192 reviews',
        'image': 'assets/images/Tandem Bike.jpg',
        'size': 'Standard Size, Large',
        'weight': '28.0kg',
        'description': 'Two-person tandem bike for couples.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Fixed Gear Bike',
        'price': 17999.0,
        'rating': 4.5,
        'reviews': '230 reviews',
        'image': 'assets/images/Fixed Gear Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '10.5kg',
        'description': 'Single-speed fixed gear bike for urban riding.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Recumbent Bike',
        'price': 31999.0,
        'rating': 4.4,
        'reviews': '191 reviews',
        'image': 'assets/images/Recumbent Bike.jpg',
        'size': 'Standard Size, Large',
        'weight': '15.8kg',
        'description': 'Comfortable recumbent bike with back support.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Cargo Bike',
        'price': 49999.0,
        'rating': 4.7,
        'reviews': '321 reviews',
        'image': 'assets/images/Cargo Bike.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '35.0kg',
        'description': 'Heavy-duty cargo bike for transporting goods.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Touring Bike',
        'price': 27999.0,
        'rating': 4.6,
        'reviews': '339 reviews',
        'image': 'assets/images/Touring Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '12.8kg',
        'description': 'Long-distance touring bike with pannier racks.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Gravel Bike',
        'price': 34999.0,
        'rating': 4.7,
        'reviews': '209 reviews',
        'image': 'assets/images/Gravel Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '10.8kg',
        'description': 'Versatile gravel bike for mixed terrain.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
      {
        'name': 'Exercise Bike',
        'price': 15999.0,
        'rating': 4.5,
        'reviews': '166 reviews',
        'image': 'assets/images/Exercise Bike.jpg',
        'size': 'Standard Size, Medium',
        'weight': '18.5kg',
        'description': 'Stationary exercise bike for indoor fitness.',
        'category': 'Vehicles',
        'subcategory': 'Bikes'
      },
    ],
    'trucks': [
      {
        'name': 'Dump Truck Toy',
        'price': 899.0,
        'rating': 4.5,
        'reviews': '42 reviews',
        'image': 'assets/images/Dump Truck Toy.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.1kg',
        'description': 'Construction dump truck with tipping bed.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Fire Truck Model',
        'price': 1199.0,
        'rating': 4.6,
        'reviews': '342 reviews',
        'image': 'assets/images/Fire Truck Model.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.8kg',
        'description': 'Detailed fire truck with working ladder.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Monster Truck',
        'price': 1499.0,
        'rating': 4.7,
        'reviews': '385 reviews',
        'image': 'assets/images/Monster Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.2kg',
        'description': 'Massive monster truck with huge wheels.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Pickup Truck',
        'price': 1299.0,
        'rating': 4.4,
        'reviews': '326 reviews',
        'image': 'assets/images/Pickup Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.5kg',
        'description': 'Classic pickup truck with open bed.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Semi Truck',
        'price': 2499.0,
        'rating': 4.8,
        'reviews': '142 reviews',
        'image': 'assets/images/Semi Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.5kg',
        'description': 'Long-haul semi truck with trailer.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Garbage Truck',
        'price': 1699.0,
        'rating': 4.3,
        'reviews': '447 reviews',
        'image': 'assets/images/Garbage Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.8kg',
        'description': 'Municipal garbage truck with compactor.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Tow Truck',
        'price': 1899.0,
        'rating': 4.5,
        'reviews': '434 reviews',
        'image': 'assets/images/Tow Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.5kg',
        'description': 'Recovery tow truck with winch.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Concrete Mixer Truck',
        'price': 2199.0,
        'rating': 4.6,
        'reviews': '153 reviews',
        'image': 'assets/images/Concrete Mixer Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.2kg',
        'description': 'Construction concrete mixer truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Moving Truck',
        'price': 1999.0,
        'rating': 4.4,
        'reviews': '258 reviews',
        'image': 'assets/images/Moving Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.9kg',
        'description': 'Relocation moving truck with ramp.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Food Truck',
        'price': 1799.0,
        'rating': 4.5,
        'reviews': '326 reviews',
        'image': 'assets/images/Food Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.6kg',
        'description': 'Mobile food service truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Army Truck',
        'price': 1599.0,
        'rating': 4.7,
        'reviews': '228 reviews',
        'image': 'assets/images/Army Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.1kg',
        'description': 'Military-style army truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Delivery Truck',
        'price': 1399.0,
        'rating': 4.3,
        'reviews': '222 reviews',
        'image': 'assets/images/Delivery Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.9kg',
        'description': 'Package delivery truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Refrigerated Truck',
        'price': 2299.0,
        'rating': 4.6,
        'reviews': '307 reviews',
        'image': 'assets/images/Refrigerated Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.1kg',
        'description': 'Cold storage refrigerated truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Fuel Tanker',
        'price': 2399.0,
        'rating': 4.5,
        'reviews': '392 reviews',
        'image': 'assets/images/Fuel Tanker.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.3kg',
        'description': 'Fuel transport tanker truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Cement Truck',
        'price': 2099.0,
        'rating': 4.4,
        'reviews': '360 reviews',
        'image': 'assets/images/Cement Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.0kg',
        'description': 'Bulk cement transport truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Log Truck',
        'price': 1999.0,
        'rating': 4.5,
        'reviews': '434 reviews',
        'image': 'assets/images/Log Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.8kg',
        'description': 'Timber logging truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Water Tanker',
        'price': 1899.0,
        'rating': 4.3,
        'reviews': '440 reviews',
        'image': 'assets/images/Water Tanker.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.4kg',
        'description': 'Water transport tanker truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Car Carrier',
        'price': 2599.0,
        'rating': 4.7,
        'reviews': '86 reviews',
        'image': 'assets/images/Car Carrier.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.8kg',
        'description': 'Multi-level car transport truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Flatbed Truck',
        'price': 1799.0,
        'rating': 4.4,
        'reviews': '21 reviews',
        'image': 'assets/images/Flatbed Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.3kg',
        'description': 'Open flatbed transport truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Box Truck',
        'price': 1699.0,
        'rating': 4.5,
        'reviews': '318 reviews',
        'image': 'assets/images/Box Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.2kg',
        'description': 'Enclosed box delivery truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Dump Truck Toy',
        'price': 899.0,
        'rating': 4.5,
        'reviews': '42 reviews',
        'image': 'assets/images/Dump Truck Toy.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.1kg',
        'description': 'Construction dump truck with tipping bed.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Fire Truck Model',
        'price': 1199.0,
        'rating': 4.6,
        'reviews': '342 reviews',
        'image': 'assets/images/Fire Truck Model.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.8kg',
        'description': 'Detailed fire truck with working ladder.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Monster Truck',
        'price': 1499.0,
        'rating': 4.7,
        'reviews': '385 reviews',
        'image': 'assets/images/Monster Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.2kg',
        'description': 'Massive monster truck with huge wheels.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Pickup Truck',
        'price': 1299.0,
        'rating': 4.4,
        'reviews': '326 reviews',
        'image': 'assets/images/Pickup Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.5kg',
        'description': 'Classic pickup truck with open bed.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Semi Truck',
        'price': 2499.0,
        'rating': 4.8,
        'reviews': '142 reviews',
        'image': 'assets/images/Semi Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.5kg',
        'description': 'Long-haul semi truck with trailer.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Garbage Truck',
        'price': 1699.0,
        'rating': 4.3,
        'reviews': '447 reviews',
        'image': 'assets/images/Garbage Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.8kg',
        'description': 'Municipal garbage truck with compactor.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Tow Truck',
        'price': 1899.0,
        'rating': 4.5,
        'reviews': '434 reviews',
        'image': 'assets/images/Tow Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.5kg',
        'description': 'Recovery tow truck with winch.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Concrete Mixer Truck',
        'price': 2199.0,
        'rating': 4.6,
        'reviews': '153 reviews',
        'image': 'assets/images/Concrete Mixer Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.2kg',
        'description': 'Construction concrete mixer truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Moving Truck',
        'price': 1999.0,
        'rating': 4.4,
        'reviews': '258 reviews',
        'image': 'assets/images/Moving Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.9kg',
        'description': 'Relocation moving truck with ramp.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Food Truck',
        'price': 1799.0,
        'rating': 4.5,
        'reviews': '326 reviews',
        'image': 'assets/images/Food Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.6kg',
        'description': 'Mobile food service truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Army Truck',
        'price': 1599.0,
        'rating': 4.7,
        'reviews': '228 reviews',
        'image': 'assets/images/Army Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.1kg',
        'description': 'Military-style army truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Delivery Truck',
        'price': 1399.0,
        'rating': 4.3,
        'reviews': '222 reviews',
        'image': 'assets/images/Delivery Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.9kg',
        'description': 'Package delivery truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Refrigerated Truck',
        'price': 2299.0,
        'rating': 4.6,
        'reviews': '307 reviews',
        'image': 'assets/images/Refrigerated Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.1kg',
        'description': 'Cold storage refrigerated truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Fuel Tanker',
        'price': 2399.0,
        'rating': 4.5,
        'reviews': '392 reviews',
        'image': 'assets/images/Fuel Tanker.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.3kg',
        'description': 'Fuel transport tanker truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Cement Truck',
        'price': 2099.0,
        'rating': 4.4,
        'reviews': '360 reviews',
        'image': 'assets/images/Cement Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.0kg',
        'description': 'Bulk cement transport truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Log Truck',
        'price': 1999.0,
        'rating': 4.5,
        'reviews': '434 reviews',
        'image': 'assets/images/Log Truck.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.8kg',
        'description': 'Timber logging truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Water Tanker',
        'price': 1899.0,
        'rating': 4.3,
        'reviews': '440 reviews',
        'image': 'assets/images/Water Tanker.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.4kg',
        'description': 'Water transport tanker truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
      {
        'name': 'Flatbed Truck',
        'price': 1799.0,
        'rating': 4.4,
        'reviews': '21 reviews',
        'image': 'assets/images/Flatbed Truck.jpg',
        'size': 'Standard Size, Large',
        'weight': '3.3kg',
        'description': 'Open flatbed transport truck.',
        'category': 'Vehicles',
        'subcategory': 'Trucks'
      },
    ],
    'parts': [
      {
        'name': 'RC Car Battery Pack',
        'price': 299.0,
        'rating': 4.2,
        'reviews': '45 reviews',
        'image': 'assets/images/RC Car Battery Pack.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.2kg',
        'description': 'Rechargeable battery for remote control vehicles.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'Tire Set for RC Cars',
        'price': 199.0,
        'rating': 4.0,
        'reviews': '440 reviews',
        'image': 'assets/images/Tire Set for RC Cars.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.1kg',
        'description': 'Replacement tires with good traction.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Motor',
        'price': 399.0,
        'rating': 4.3,
        'reviews': '375 reviews',
        'image': 'assets/images/RC Car Motor.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.15kg',
        'description': 'High-speed brushless motor for RC vehicles.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car ESC',
        'price': 499.0,
        'rating': 4.4,
        'reviews': '370 reviews',
        'image': 'assets/images/RC Car ESC.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.1kg',
        'description': 'Electronic speed controller for RC cars.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Servo',
        'price': 249.0,
        'rating': 4.1,
        'reviews': '140 reviews',
        'image': 'assets/images/RC Car Servo.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.08kg',
        'description': 'Steering servo for RC vehicle control.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Transmitter',
        'price': 899.0,
        'rating': 4.6,
        'reviews': '422 reviews',
        'image': 'assets/images/RC Car Transmitter.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.3kg',
        'description': '2.4GHz radio transmitter for RC control.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Receiver',
        'price': 349.0,
        'rating': 4.2,
        'reviews': '175 reviews',
        'image': 'assets/images/RC Car Receiver.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.05kg',
        'description': 'Radio receiver for RC vehicle signals.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Gearbox',
        'price': 599.0,
        'rating': 4.4,
        'reviews': '403 reviews',
        'image': 'assets/images/RC Car Gearbox.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.25kg',
        'description': 'Metal gearbox with differential for RC cars.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Body Shell',
        'price': 449.0,
        'rating': 4.3,
        'reviews': '251 reviews',
        'image': 'assets/images/RC Car Body Shell.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.18kg',
        'description': 'Plastic body shell with decals.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car LED Lights',
        'price': 129.0,
        'rating': 4.1,
        'reviews': '340 reviews',
        'image': 'assets/images/RC Car LED Lights.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.02kg',
        'description': 'LED light kit for RC vehicle illumination.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Wheels',
        'price': 159.0,
        'rating': 4.2,
        'reviews': '418 reviews',
        'image': 'assets/images/RC Car Wheels.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.08kg',
        'description': 'Alloy wheels with foam tires.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Pinion Gear',
        'price': 89.0,
        'rating': 4.0,
        'reviews': '268 reviews',
        'image': 'assets/images/RC Car Pinion Gear.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.01kg',
        'description': 'Steel pinion gear for motor drive.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Spur Gear',
        'price': 119.0,
        'rating': 4.1,
        'reviews': '255 reviews',
        'image': 'assets/images/RC Car Spur Gear.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.02kg',
        'description': 'Plastic spur gear for transmission.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Ball Bearings',
        'price': 79.0,
        'rating': 4.3,
        'reviews': '378 reviews',
        'image': 'assets/images/RC Car Ball Bearings.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.005kg',
        'description': 'Set of ball bearings for smooth rotation.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Antenna',
        'price': 59.0,
        'rating': 4.0,
        'reviews': '139 reviews',
        'image': 'assets/images/RC Car Antenna.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.003kg',
        'description': 'Telescopic antenna for better signal.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Charger',
        'price': 399.0,
        'rating': 4.4,
        'reviews': '356 reviews',
        'image': 'assets/images/RC Car Charger.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.15kg',
        'description': 'Fast charger for RC vehicle batteries.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Tools Set',
        'price': 299.0,
        'rating': 4.2,
        'reviews': '339 reviews',
        'image': 'assets/images/RC Car Tools Set.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.4kg',
        'description': 'Complete tool set for RC car maintenance.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Diff Oil',
        'price': 149.0,
        'rating': 4.1,
        'reviews': '378 reviews',
        'image': 'assets/images/RC Car Diff Oil.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.1kg',
        'description': 'Silicone oil for differential lubrication.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Shock Absorbers',
        'price': 399.0,
        'rating': 4.3,
        'reviews': '267 reviews',
        'image': 'assets/images/RC Car Shock Absorbers.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.05kg',
        'description': 'Adjustable shock absorbers for smooth ride.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Chassis Kit',
        'price': 899.0,
        'rating': 4.5,
        'reviews': '189 reviews',
        'image': 'assets/images/RC Car Chassis Kit.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.8kg',
        'description': 'Complete chassis kit for custom builds.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Servo Horn',
        'price': 79.0,
        'rating': 4.0,
        'reviews': '145 reviews',
        'image': 'assets/images/RC Car Servo Horn.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.01kg',
        'description': 'Metal servo horn for precise steering.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Bearing Set',
        'price': 199.0,
        'rating': 4.2,
        'reviews': '312 reviews',
        'image': 'assets/images/RC Car Bearing Set.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.03kg',
        'description': 'Set of high-quality bearings for wheels.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Gear Set',
        'price': 299.0,
        'rating': 4.4,
        'reviews': '234 reviews',
        'image': 'assets/images/RC Car Gear Set.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.1kg',
        'description': 'Replacement gear set for transmission.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car LED Kit',
        'price': 149.0,
        'rating': 4.1,
        'reviews': '198 reviews',
        'image': 'assets/images/RC Car LED Kit.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.02kg',
        'description': 'RGB LED kit for custom lighting.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Suspension Arms',
        'price': 249.0,
        'rating': 4.3,
        'reviews': '156 reviews',
        'image': 'assets/images/RC Car Suspension Arms.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.08kg',
        'description': 'Durable suspension arms for off-road.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Receiver Box',
        'price': 349.0,
        'rating': 4.2,
        'reviews': '89 reviews',
        'image': 'assets/images/RC Car Receiver Box.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.04kg',
        'description': 'Protective box for receiver electronics.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Cooling Fan',
        'price': 179.0,
        'rating': 4.4,
        'reviews': '123 reviews',
        'image': 'assets/images/RC Car Cooling Fan.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.03kg',
        'description': 'High-speed cooling fan for motor.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Battery Pack',
        'price': 299.0,
        'rating': 4.2,
        'reviews': '45 reviews',
        'image': 'assets/images/RC Car Battery Pack.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.2kg',
        'description': 'Rechargeable battery for remote control vehicles.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'Tire Set for RC Cars',
        'price': 199.0,
        'rating': 4.0,
        'reviews': '440 reviews',
        'image': 'assets/images/Tire Set for RC Cars.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.1kg',
        'description': 'Replacement tires with good traction.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Motor',
        'price': 399.0,
        'rating': 4.3,
        'reviews': '375 reviews',
        'image': 'assets/images/RC Car Motor.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.15kg',
        'description': 'High-speed brushless motor for RC vehicles.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car ESC',
        'price': 499.0,
        'rating': 4.4,
        'reviews': '370 reviews',
        'image': 'assets/images/RC Car ESC.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.1kg',
        'description': 'Electronic speed controller for RC cars.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Servo',
        'price': 249.0,
        'rating': 4.1,
        'reviews': '140 reviews',
        'image': 'assets/images/RC Car Servo.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.08kg',
        'description': 'Steering servo for RC vehicle control.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Transmitter',
        'price': 899.0,
        'rating': 4.6,
        'reviews': '422 reviews',
        'image': 'assets/images/RC Car Transmitter.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.3kg',
        'description': '2.4GHz radio transmitter for RC control.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Receiver',
        'price': 349.0,
        'rating': 4.2,
        'reviews': '175 reviews',
        'image': 'assets/images/RC Car Receiver.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.05kg',
        'description': 'Radio receiver for RC vehicle signals.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Gearbox',
        'price': 599.0,
        'rating': 4.4,
        'reviews': '403 reviews',
        'image': 'assets/images/RC Car Gearbox.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.25kg',
        'description': 'Metal gearbox with differential for RC cars.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Body Shell',
        'price': 449.0,
        'rating': 4.3,
        'reviews': '251 reviews',
        'image': 'assets/images/RC Car Body Shell.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.18kg',
        'description': 'Plastic body shell with decals.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car LED Lights',
        'price': 129.0,
        'rating': 4.1,
        'reviews': '340 reviews',
        'image': 'assets/images/RC Car LED Lights.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.02kg',
        'description': 'LED light kit for RC vehicle illumination.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Wheels',
        'price': 159.0,
        'rating': 4.2,
        'reviews': '418 reviews',
        'image': 'assets/images/RC Car Wheels.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.08kg',
        'description': 'Alloy wheels with foam tires.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Pinion Gear',
        'price': 89.0,
        'rating': 4.0,
        'reviews': '268 reviews',
        'image': 'assets/images/RC Car Pinion Gear.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.01kg',
        'description': 'Steel pinion gear for motor drive.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Spur Gear',
        'price': 119.0,
        'rating': 4.1,
        'reviews': '255 reviews',
        'image': 'assets/images/RC Car Spur Gear.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.02kg',
        'description': 'Plastic spur gear for transmission.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Ball Bearings',
        'price': 79.0,
        'rating': 4.3,
        'reviews': '378 reviews',
        'image': 'assets/images/RC Car Ball Bearings.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.005kg',
        'description': 'Set of ball bearings for smooth rotation.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Antenna',
        'price': 59.0,
        'rating': 4.0,
        'reviews': '139 reviews',
        'image': 'assets/images/RC Car Antenna.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.003kg',
        'description': 'Telescopic antenna for better signal.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Charger',
        'price': 399.0,
        'rating': 4.4,
        'reviews': '356 reviews',
        'image': 'assets/images/RC Car Charger.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.15kg',
        'description': 'Fast charger for RC vehicle batteries.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Tools Set',
        'price': 299.0,
        'rating': 4.2,
        'reviews': '339 reviews',
        'image': 'assets/images/RC Car Tools Set.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.4kg',
        'description': 'Complete tool set for RC car maintenance.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Diff Oil',
        'price': 149.0,
        'rating': 4.1,
        'reviews': '378 reviews',
        'image': 'assets/images/RC Car Diff Oil.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.1kg',
        'description': 'Silicone oil for differential lubrication.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Shock Absorbers',
        'price': 399.0,
        'rating': 4.3,
        'reviews': '267 reviews',
        'image': 'assets/images/RC Car Shock Absorbers.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.05kg',
        'description': 'Adjustable shock absorbers for smooth ride.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Chassis Kit',
        'price': 899.0,
        'rating': 4.5,
        'reviews': '189 reviews',
        'image': 'assets/images/RC Car Chassis Kit.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.8kg',
        'description': 'Complete chassis kit for custom builds.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Servo Horn',
        'price': 79.0,
        'rating': 4.0,
        'reviews': '145 reviews',
        'image': 'assets/images/RC Car Servo Horn.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.01kg',
        'description': 'Metal servo horn for precise steering.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Bearing Set',
        'price': 199.0,
        'rating': 4.2,
        'reviews': '312 reviews',
        'image': 'assets/images/RC Car Bearing Set.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.03kg',
        'description': 'Set of high-quality bearings for wheels.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Gear Set',
        'price': 299.0,
        'rating': 4.4,
        'reviews': '234 reviews',
        'image': 'assets/images/RC Car Gear Set.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.1kg',
        'description': 'Replacement gear set for transmission.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car LED Kit',
        'price': 149.0,
        'rating': 4.1,
        'reviews': '198 reviews',
        'image': 'assets/images/RC Car LED Kit.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.02kg',
        'description': 'RGB LED kit for custom lighting.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Suspension Arms',
        'price': 249.0,
        'rating': 4.3,
        'reviews': '156 reviews',
        'image': 'assets/images/RC Car Suspension Arms.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.08kg',
        'description': 'Durable suspension arms for off-road.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
      {
        'name': 'RC Car Receiver Box',
        'price': 349.0,
        'rating': 4.2,
        'reviews': '89 reviews',
        'image': 'assets/images/RC Car Receiver Box.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.04kg',
        'description': 'Protective box for receiver electronics.',
        'category': 'Vehicles',
        'subcategory': 'Parts'
      },
    ],
    'clothing': [
      {
        'name': 'Supreme Box Logo Hoodie',
        'price': 12999.0,
        'rating': 4.7,
        'reviews': '160 reviews',
        'image': 'assets/images/supreme box logo hoodie.jpg',
        'description':
            'Iconic box logo hoodie in premium cotton with kangaroo pocket.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Levi\'s 501 Original Jeans',
        'price': 4999.0,
        'rating': 4.8,
        'reviews': '224 reviews',
        'image': 'assets/images/levis 501 original jeans.jpg',
        'description':
            'Timeless straight-leg jeans with button fly and classic five-pocket styling.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'H&M Divided Skinny Jeans',
        'price': 2299.0,
        'rating': 4.4,
        'reviews': '308 reviews',
        'image': 'assets/images/levis 501 original jeans.jpg',
        'description':
            'Skinny fit jeans in stretch denim with five-pocket styling.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Gap Essential Chinos',
        'price': 3499.0,
        'rating': 4.5,
        'reviews': '313 reviews',
        'image': 'assets/images/gap essential chinos.jpg',
        'description':
            'Classic chinos in stretch cotton with straight leg and front pockets.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'H&M Conscious Collection T-Shirt',
        'price': 1299.0,
        'rating': 4.3,
        'reviews': '277 reviews',
        'image': 'assets/images/h & m t-shirt.jpg',
        'description':
            'Sustainable cotton t-shirt with crew neck and short sleeves.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Old Navy Graphic Tee',
        'price': 899.0,
        'rating': 4.2,
        'reviews': '206 reviews',
        'image': 'assets/images/old navy graphic tee.jpg',
        'description': 'Cotton tee with fun graphic print and crew neck.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'J.Crew Factory Polo Shirt',
        'price': 2499.0,
        'rating': 4.4,
        'reviews': '172 reviews',
        'image': 'assets/images/j.crew factory polo shirt.jpg',
        'description':
            'Classic polo shirt in pima cotton with two-button placket.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Uniqlo HeatTech Thermal Shirt',
        'price': 1999.0,
        'rating': 4.4,
        'reviews': '401 reviews',
        'image': 'assets/images/uniqlo heat tech thermal shirt.jpg',
        'description':
            'Thermal long-sleeve shirt with moisture-wicking technology.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Tommy Hilfiger Oxford Shirt',
        'price': 3999.0,
        'rating': 4.3,
        'reviews': '18 reviews',
        'image': 'assets/images/tommy hilifiger oxford shirt.jpg',
        'description': 'Button-down oxford shirt with flag logo embroidery.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Zara Basic Blazer',
        'price': 7999.0,
        'rating': 4.6,
        'reviews': '168 reviews',
        'image': 'assets/images/zara basic blazar.jpg',
        'description':
            'Tailored blazer in wool blend with notch lapels and single-breasted closure.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Banana Republic Cashmere Sweater',
        'price': 12999.0,
        'rating': 4.9,
        'reviews': '293 reviews',
        'image': 'assets/images/banana republic cashmere sweater.jpg',
        'description':
            'Luxurious cashmere sweater with ribbed trim and long sleeves.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Patagonia Better Sweater Jacket',
        'price': 8999.0,
        'rating': 4.6,
        'reviews': '238 reviews',
        'image': 'assets/images/patagonai better sweater jacket.jpg',
        'description':
            'Recycled polyester sweater jacket with full-zip closure and handwarmer pockets.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'The North Face Denali Jacket',
        'price': 24999.0,
        'rating': 4.9,
        'reviews': '59 reviews',
        'image': 'assets/images/the north face denail jacket.jpg',
        'description':
            'Insulated jacket with waterproof fabric and removable hood.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Lululemon Align Leggings',
        'price': 6999.0,
        'rating': 4.7,
        'reviews': '32 reviews',
        'image': 'assets/images/luluemon align leegings.jpg',
        'description':
            'High-performance leggings with four-way stretch and moisture-wicking fabric.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Nike Dri-FIT Training Shorts',
        'price': 1999.0,
        'rating': 4.6,
        'reviews': '345 reviews',
        'image': 'assets/images/nike dri-fit training shorts.jpg',
        'description':
            'Moisture-wicking shorts with mesh lining and adjustable waist.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Calvin Klein Underwear Boxer Briefs',
        'price': 1599.0,
        'rating': 4.5,
        'reviews': '105 reviews',
        'image': 'assets/images/calvin klein boxer.jpg',
        'description':
            'Cotton boxer briefs with logo waistband and supportive fit.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
    ],
    'shoes': [
      {
        'name': 'Nike Air Max 270',
        'price': 12999.0,
        'rating': 4.8,
        'reviews': '98 reviews',
        'image': Constants.product1,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.8kg',
        'description':
            'Revolutionary Air Max sole with visible cushioning and sleek design.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
      {
        'name': 'Adidas Ultraboost 22',
        'price': 18999.0,
        'rating': 4.9,
        'reviews': '94 reviews',
        'image': Constants.product2,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.9kg',
        'description':
            'Energy-returning Boost midsole with Primeknit upper for ultimate comfort.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
      {
        'name': 'Converse Chuck Taylor All Star',
        'price': 4999.0,
        'rating': 4.6,
        'reviews': '342 reviews',
        'image': Constants.product3,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.7kg',
        'description':
            'Classic high-top sneakers with canvas upper and rubber sole.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
      {
        'name': 'Vans Old Skool',
        'price': 6999.0,
        'rating': 4.7,
        'reviews': '26 reviews',
        'image': Constants.product4,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.8kg',
        'description':
            'Iconic skate shoes with durable canvas upper and waffle sole.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
      {
        'name': 'Puma Suede Classic',
        'price': 8999.0,
        'rating': 4.5,
        'reviews': '236 reviews',
        'image': Constants.product5,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.75kg',
        'description':
            'Timeless suede sneakers with Formstrip and rubber outsole.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
      {
        'name': 'New Balance 574',
        'price': 10999.0,
        'rating': 4.6,
        'reviews': '319 reviews',
        'image': Constants.product1,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.85kg',
        'description':
            'Classic running shoes with ENCAP midsole and herringbone outsole.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
      {
        'name': 'Reebok Club C 85',
        'price': 7999.0,
        'rating': 4.4,
        'reviews': '344 reviews',
        'image': Constants.product2,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.7kg',
        'description':
            'Retro tennis-inspired sneakers with soft leather upper.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
      {
        'name': 'Under Armour Curry 8',
        'price': 14999.0,
        'rating': 4.7,
        'reviews': '253 reviews',
        'image': Constants.product3,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.9kg',
        'description':
            'Performance basketball shoes with responsive cushioning.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
      {
        'name': 'Crocs Classic Clog',
        'price': 3999.0,
        'rating': 4.3,
        'reviews': '168 reviews',
        'image': Constants.product4,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.5kg',
        'description': 'Comfortable foam clogs with iconic Croslite material.',
        'category': 'Fashion',
        'subcategory': 'Slippers'
      },
      {
        'name': 'UGG Tasman Slipper',
        'price': 8999.0,
        'rating': 4.5,
        'reviews': '381 reviews',
        'image': Constants.product5,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.6kg',
        'description':
            'Sheepskin slippers with molded EVA outsole for indoor comfort.',
        'category': 'Fashion',
        'subcategory': 'Slippers'
      },
      {
        'name': 'Adidas Adilette Slides',
        'price': 2999.0,
        'rating': 4.4,
        'reviews': '346 reviews',
        'image': Constants.product1,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.4kg',
        'description': 'Classic slide sandals with soft foam footbed.',
        'category': 'Fashion',
        'subcategory': 'Slippers'
      },
      {
        'name': 'Nike Benassi JDI',
        'price': 2499.0,
        'rating': 4.2,
        'reviews': '462 reviews',
        'image': Constants.product2,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.35kg',
        'description': 'Minimalist slide sandals with one-piece upper.',
        'category': 'Fashion',
        'subcategory': 'Slippers'
      },
      {
        'name': 'Birkenstock Arizona',
        'price': 11999.0,
        'rating': 4.6,
        'reviews': '280 reviews',
        'image': Constants.product3,
        'size':
            'Men: 40 (25.5cm), 41 (26cm), 42 (27cm), 43 (28cm), 44 (29cm), 45 (30cm) - Women: 35 (22.5cm), 36 (23.5cm), 37 (24.5cm), 38 (25.5cm), 39 (26.5cm), 40 (27.5cm)',
        'weight': '0.8kg',
        'description': 'Contoured cork footbed sandals with adjustable straps.',
        'category': 'Fashion',
        'subcategory': 'Slippers'
      },
      {
        'name': 'Skechers Go Walk',
        'price': 7999.0,
        'rating': 4.5,
        'reviews': '149 reviews',
        'image': Constants.product4,
        'size':
            'Men: 7 (25.5cm), 8 (26cm), 9 (27cm), 10 (28cm), 11 (29cm), 12 (30cm) - Women: 5 (22.5cm), 6 (23.5cm), 7 (24.5cm), 8 (25.5cm), 9 (26.5cm), 10 (27.5cm)',
        'weight': '0.75kg',
        'description': 'Lightweight walking shoes with Air-Cooled Memory Foam.',
        'category': 'Fashion',
        'subcategory': 'Shoes'
      },
    ],
    'accessories': [
      {
        'name': 'Apple Watch Series 8',
        'price': 41999.0,
        'rating': 4.8,
        'reviews': '299 reviews',
        'image': Constants.product1,
        'size': '45mm: 38 x 45 x 10.7mm',
        'weight': '0.05kg',
        'description':
            'Advanced health, fitness, and safety features with cellular connectivity.',
        'category': 'Fashion',
        'subcategory': 'Digital Gadgets'
      },
      {
        'name': 'Samsung Galaxy Watch 5',
        'price': 29999.0,
        'rating': 4.6,
        'reviews': '408 reviews',
        'image': Constants.product2,
        'size': '44mm: 43.3 x 44.4 x 9.8mm',
        'weight': '0.05kg',
        'description':
            'Premium smartwatch with health monitoring and Samsung ecosystem integration.',
        'category': 'Fashion',
        'subcategory': 'Digital Gadgets'
      },
      {
        'name': 'Sony WH-1000XM5 Headphones',
        'price': 34999.0,
        'rating': 4.9,
        'reviews': '419 reviews',
        'image': Constants.product3,
        'size': 'Standard Size, One Size: 250 x 190 x 70mm (folded)',
        'weight': '0.25kg',
        'description':
            'Industry-leading noise canceling wireless headphones with exceptional sound quality.',
        'category': 'Fashion',
        'subcategory': 'Digital Gadgets'
      },
      {
        'name': 'AirPods Pro (2nd generation)',
        'price': 24999.0,
        'rating': 4.7,
        'reviews': '408 reviews',
        'image': Constants.product4,
        'size': 'Standard Size, One Size: 30.9 x 21.8 x 24.0mm (charging case)',
        'weight': '0.05kg',
        'description':
            'Active noise cancellation and transparency mode with spatial audio.',
        'category': 'Fashion',
        'subcategory': 'Digital Gadgets'
      },
      {
        'name': 'Ray-Ban Aviator Sunglasses',
        'price': 12999.0,
        'rating': 4.5,
        'reviews': '293 reviews',
        'image': Constants.product5,
        'size': '140mm temple',
        'weight': '0.05kg',
        'description':
            'Classic aviator sunglasses with UV protection and polarized lenses.',
        'category': 'Fashion',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Gucci Marmont Matelassé Wallet',
        'price': 29999.0,
        'rating': 4.6,
        'reviews': '452 reviews',
        'image': Constants.product1,
        'size': 'Standard Size, One Size: 11.5 x 9.5 x 2.5cm',
        'weight': '0.15kg',
        'description':
            'Quilted leather wallet with GG logo and multiple card slots.',
        'category': 'Fashion',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Hermès Kelly Darcey Scarf',
        'price': 89999.0,
        'rating': 4.8,
        'reviews': '48 reviews',
        'image': Constants.product2,
        'size': 'Standard Size, One Size: 90 x 90cm',
        'weight': '0.1kg',
        'description':
            'Silk scarf with iconic Hermès patterns and signature H stamp.',
        'category': 'Fashion',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Cartier Tank Française Watch',
        'price': 199999.0,
        'rating': 4.9,
        'reviews': '183 reviews',
        'image': Constants.product3,
        'size': 'Standard Size, One Size: 25 x 33mm case',
        'weight': '0.08kg',
        'description':
            'Iconic rectangular watch with Roman numerals and quartz movement.',
        'category': 'Fashion',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Louis Vuitton Neverfull MM',
        'price': 149999.0,
        'rating': 4.7,
        'reviews': '163 reviews',
        'image': Constants.product4,
        'size': 'Standard Size, One Size: 31 x 28 x 17cm',
        'weight': '1.2kg',
        'description':
            'Monogram canvas tote bag with leather handles and iconic LV logo.',
        'category': 'Fashion',
        'subcategory': 'Bags'
      },
      {
        'name': 'Chanel Classic Flap Bag',
        'price': 799999.0,
        'rating': 4.8,
        'reviews': '46 reviews',
        'image': Constants.product5,
        'size': 'Standard Size, One Size: 25 x 18 x 9cm',
        'weight': '0.8kg',
        'description':
            'Quilted lambskin handbag with chain strap and interlocking CC closure.',
        'category': 'Fashion',
        'subcategory': 'Bags'
      },
      {
        'name': 'Prada Nylon Backpack',
        'price': 49999.0,
        'rating': 4.5,
        'reviews': '485 reviews',
        'image': Constants.product1,
        'size': 'Standard Size, One Size: 28 x 20 x 12cm',
        'weight': '0.6kg',
        'description':
            'Nylon backpack with triangle logo and adjustable straps.',
        'category': 'Fashion',
        'subcategory': 'Bags'
      },
      {
        'name': 'Fendi Baguette Bag',
        'price': 299999.0,
        'rating': 4.6,
        'reviews': '144 reviews',
        'image': Constants.product2,
        'size': 'Standard Size, One Size: 22 x 15 x 6cm',
        'weight': '0.5kg',
        'description':
            'Iconic FF logo baguette with leather trim and chain strap.',
        'category': 'Fashion',
        'subcategory': 'Bags'
      },
      {
        'name': 'Rolex Submariner Date',
        'price': 999999.0,
        'rating': 4.9,
        'reviews': '277 reviews',
        'image': Constants.product3,
        'size': 'Standard Size, One Size: 40mm case diameter',
        'weight': '0.15kg',
        'description':
            'Legendary diver\'s watch with Cerachrom bezel and automatic movement.',
        'category': 'Fashion',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Tiffany & Co. Elsa Peretti Necklace',
        'price': 49999.0,
        'rating': 4.7,
        'reviews': '389 reviews',
        'image': Constants.product4,
        'size': 'Standard Size, One Size: 16-18 inch chain',
        'weight': '0.02kg',
        'description':
            'Sterling silver open-heart pendant necklace with 18k gold accents.',
        'category': 'Fashion',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Burberry Trench Coat',
        'price': 199999.0,
        'rating': 4.8,
        'reviews': '155 reviews',
        'image': Constants.product5,
        'size': 'Standard Size,  XL: 42-43',
        'weight': '1.5kg',
        'description':
            'Classic trench coat in gabardine fabric with signature check lining.',
        'category': 'Fashion',
        'subcategory': 'Clothing'
      },
    ],
    'bags': [
      {
        'name': 'Leather Handbag',
        'price': 3499.0,
        'rating': 4.7,
        'reviews': '258 reviews',
        'image': Constants.product5,
        'size': 'Standard Size, Medium',
        'weight': '1.2kg',
        'description': 'Elegant leather handbag with multiple compartments.',
        'category': 'Fashion',
        'subcategory': 'Bags'
      },
      {
        'name': 'Backpack',
        'price': 1599.0,
        'rating': 4.4,
        'reviews': '328 reviews',
        'image': Constants.product1,
        'size': 'Standard Size, Large',
        'weight': '0.9kg',
        'description': 'Durable backpack for school or travel.',
        'category': 'Fashion',
        'subcategory': 'Bags'
      },
    ],
    'babies_clothing': [
      {
        'name': 'Baby Onesie Set',
        'price': 899.0,
        'rating': 4.6,
        'reviews': '358 reviews',
        'image': 'assets/images/baby onesie set.jpg',
        'size': 'Standard Size, 0-3 months',
        'weight': '0.3kg',
        'description': 'Soft cotton onesies for newborns.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Kids Pajama Set',
        'price': 699.0,
        'rating': 4.4,
        'reviews': '41 reviews',
        'image': 'assets/images/kids pajama set.jpg',
        'size': 'Standard Size, 2-4 years',
        'weight': '0.4kg',
        'description': 'Comfortable pajamas with fun prints.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Romper',
        'price': 599.0,
        'rating': 4.5,
        'reviews': '102 reviews',
        'image': 'assets/images/baby romper.jpg',
        'size': 'Standard Size, 6-12 months',
        'weight': '0.25kg',
        'description': 'Adorable romper with snaps for easy changing.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Toddler Dress',
        'price': 799.0,
        'rating': 4.3,
        'reviews': '494 reviews',
        'image': 'assets/images/toddler dress.jpg',
        'size': 'Standard Size, 1-2 years',
        'weight': '0.35kg',
        'description': 'Cute floral dress for little girls.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Hat and Booties Set',
        'price': 499.0,
        'rating': 4.7,
        'reviews': '43 reviews',
        'image': 'assets/images/baby hat and booties set.jpg',
        'size': 'Standard Size, 0-6 months',
        'weight': '0.15kg',
        'description': 'Soft knit hat and booties for newborns.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Kids T-Shirt',
        'price': 399.0,
        'rating': 4.2,
        'reviews': '225 reviews',
        'image': 'assets/images/kids t-shirt.jpg',
        'size': 'Standard Size, 3-4 years',
        'weight': '0.2kg',
        'description': 'Cotton t-shirt with fun cartoon prints.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Leggings',
        'price': 549.0,
        'rating': 4.4,
        'reviews': '392 reviews',
        'image': 'assets/images/baby leggings.jpg',
        'size': 'Standard Size, 12-18 months',
        'weight': '0.3kg',
        'description': 'Stretchy leggings for active babies.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Toddler Shorts',
        'price': 649.0,
        'rating': 4.5,
        'reviews': '151 reviews',
        'image': 'assets/images/toddler shorts.jpg',
        'size': 'Standard Size, 2-3 years',
        'weight': '0.25kg',
        'description': 'Comfortable cotton shorts for summer.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Sweater',
        'price': 899.0,
        'rating': 4.6,
        'reviews': '130 reviews',
        'image': 'assets/images/baby sweater.jpg',
        'size': 'Standard Size, 6-12 months',
        'weight': '0.4kg',
        'description': 'Warm wool sweater for winter.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Kids Hoodie',
        'price': 999.0,
        'rating': 4.7,
        'reviews': '109 reviews',
        'image': 'assets/images/kids hoodie.jpg',
        'size': 'Standard Size, 4-5 years',
        'weight': '0.5kg',
        'description': 'Cozy hoodie with kangaroo pocket.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Socks Pack',
        'price': 299.0,
        'rating': 4.3,
        'reviews': '277 reviews',
        'image': 'assets/images/baby socks pack.jpg',
        'size': 'Standard Size, 0-12 months',
        'weight': '0.1kg',
        'description': 'Pack of 5 soft cotton socks.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Toddler Jacket',
        'price': 1299.0,
        'rating': 4.8,
        'reviews': '294 reviews',
        'image': 'assets/images/toddler jacket.jpg',
        'size': 'Standard Size, 3-4 years',
        'weight': '0.6kg',
        'description': 'Waterproof jacket for outdoor play.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Bib Set',
        'price': 399.0,
        'rating': 4.4,
        'reviews': '231 reviews',
        'image': 'assets/images/baby bib set.jpg',
        'size': 'Standard Size, One Size',
        'weight': '0.2kg',
        'description': 'Set of 3 waterproof bibs.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Kids Overalls',
        'price': 1099.0,
        'rating': 4.5,
        'reviews': '348 reviews',
        'image': 'assets/images/kids overalls.jpg',
        'size': 'Standard Size, 1-2 years',
        'weight': '0.55kg',
        'description': 'Durable overalls for messy play.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Sleepsuit',
        'price': 749.0,
        'rating': 4.6,
        'reviews': '402 reviews',
        'image': 'assets/images/baby sleepsuit.jpg',
        'size': 'Standard Size, 3-6 months',
        'weight': '0.35kg',
        'description': 'Snug sleepsuit for safe sleep.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Toddler Skirt',
        'price': 599.0,
        'rating': 4.4,
        'reviews': '256 reviews',
        'image': 'assets/images/toddler skirt.jpg',
        'size': 'Standard Size, 2-3 years',
        'weight': '0.3kg',
        'description': 'Pleated skirt with elastic waist.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Cardigan',
        'price': 849.0,
        'rating': 4.5,
        'reviews': '184 reviews',
        'image': 'assets/images/baby cardigan.jpg',
        'size': 'Standard Size, 12-24 months',
        'weight': '0.4kg',
        'description': 'Button-up cardigan for layering.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Kids Polo Shirt',
        'price': 699.0,
        'rating': 4.3,
        'reviews': '98 reviews',
        'image': 'assets/images/kids polo shirt.jpg',
        'size': 'Standard Size, 4-5 years',
        'weight': '0.25kg',
        'description': 'Classic polo shirt for casual wear.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Baby Mittens',
        'price': 249.0,
        'rating': 4.2,
        'reviews': '221 reviews',
        'image': 'assets/images/baby mittens.jpg',
        'size': 'Standard Size, 0-3 months',
        'weight': '0.05kg',
        'description': 'Soft mittens to prevent scratching.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
      {
        'name': 'Toddler Jeans',
        'price': 1199.0,
        'rating': 4.7,
        'reviews': '142 reviews',
        'image': 'assets/images/toddler jeans.jpg',
        'size': 'Standard Size, 3-4 years',
        'weight': '0.5kg',
        'description': 'Stretch denim jeans for comfort.',
        'category': 'Babies',
        'subcategory': 'Clothing'
      },
    ],
    'toys': [
      {
        'name': 'Ambulance Toy',
        'price': 1499.0,
        'rating': 4.8,
        'reviews': '122 reviews',
        'image': 'assets/images/Ambulance Toy.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.9kg',
        'description': 'Interactive ambulance toy with lights and sounds.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Remote Control Car',
        'price': 799.0,
        'rating': 4.5,
        'reviews': '245 reviews',
        'image': 'assets/images/Remote Control Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.2kg',
        'description':
            'High-speed RC car for kids and adults with rechargeable battery.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Police Car Toy',
        'price': 2499.0,
        'rating': 4.4,
        'reviews': '151 reviews',
        'image': 'assets/images/Police Car Toy.jpg',
        'size': 'Standard Size, Small',
        'weight': '4.5kg',
        'description': 'Realistic police car toy with lights.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Monster Truck Toy',
        'price': 899.0,
        'rating': 4.5,
        'reviews': '42 reviews',
        'image': 'assets/images/Monster Truck Toy.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.1kg',
        'description': 'Massive monster truck toy with big wheels.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Electric Toy Car',
        'price': 299.0,
        'rating': 4.2,
        'reviews': '45 reviews',
        'image': 'assets/images/Electric Toy Car.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.2kg',
        'description': 'Battery-powered electric toy car.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Teddy Bear',
        'price': 599.0,
        'rating': 4.6,
        'reviews': '89 reviews',
        'image': 'assets/images/Teddy Bear.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.5kg',
        'description': 'Soft cuddly teddy bear for comfort and play.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Lego Building Set',
        'price': 1299.0,
        'rating': 4.8,
        'reviews': '156 reviews',
        'image': 'assets/images/Lego Building Set.jpg',
        'size': 'Standard Size, Large',
        'weight': '1.2kg',
        'description': 'Creative building blocks for imaginative play.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Puzzle Game',
        'price': 399.0,
        'rating': 4.4,
        'reviews': '78 reviews',
        'image': 'assets/images/Puzzle Game.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.3kg',
        'description': 'Challenging jigsaw puzzle for brain development.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Action Figure',
        'price': 799.0,
        'rating': 4.5,
        'reviews': '112 reviews',
        'image': 'assets/images/Action Figure.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.2kg',
        'description': 'Posable superhero action figure with accessories.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Doll House',
        'price': 2499.0,
        'rating': 4.7,
        'reviews': '67 reviews',
        'image': 'assets/images/Doll House.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.5kg',
        'description': 'Detailed doll house with furniture and dolls.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Building Blocks',
        'price': 699.0,
        'rating': 4.6,
        'reviews': '134 reviews',
        'image': 'assets/images/Building Blocks.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.8kg',
        'description': 'Colorful blocks for stacking and construction.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Plush Toy Rabbit',
        'price': 499.0,
        'rating': 4.5,
        'reviews': '98 reviews',
        'image': 'assets/images/Plush Toy Rabbit.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.4kg',
        'description': 'Soft plush rabbit with floppy ears.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Board Game',
        'price': 899.0,
        'rating': 4.4,
        'reviews': '145 reviews',
        'image': 'assets/images/Board Game.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.6kg',
        'description': 'Family board game for strategic fun.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Remote Control Helicopter',
        'price': 1599.0,
        'rating': 4.7,
        'reviews': '89 reviews',
        'image': 'assets/images/Remote Control Helicopter.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.7kg',
        'description': 'RC helicopter with easy controls for flying.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Toy Train Set',
        'price': 1999.0,
        'rating': 4.8,
        'reviews': '123 reviews',
        'image': 'assets/images/Toy Train Set.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.0kg',
        'description': 'Electric train set with tracks and accessories.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Plastic Car Model Kit',
        'price': 349.0,
        'rating': 4.3,
        'reviews': '306 reviews',
        'image': 'assets/images/Plastic Car Model Kit.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.8kg',
        'description': 'DIY assembly kit for building scale model cars.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Racing Car Track Set',
        'price': 1599.0,
        'rating': 4.6,
        'reviews': '487 reviews',
        'image': 'assets/images/Racing Car Track Set.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.2kg',
        'description': 'Complete racing track with loops and jumps.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Toy Car Garage',
        'price': 899.0,
        'rating': 4.4,
        'reviews': '428 reviews',
        'image': 'assets/images/Toy Car Garage.jpg',
        'size': 'Standard Size, Large',
        'weight': '1.8kg',
        'description': 'Multi-level garage for toy cars with ramps.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Convertible Sports Car',
        'price': 749.0,
        'rating': 4.5,
        'reviews': '487 reviews',
        'image': 'assets/images/Convertible sports car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.0kg',
        'description': 'Stylish convertible toy car with removable top.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Formula 1 Racing Car',
        'price': 999.0,
        'rating': 4.7,
        'reviews': '469 reviews',
        'image': 'assets/images/Formula 1 Racing Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.7kg',
        'description': 'Detailed F1 car model with authentic design.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Speed Racer Car',
        'price': 649.0,
        'rating': 4.3,
        'reviews': '301 reviews',
        'image': 'assets/images/Speed Racer Car.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.9kg',
        'description': 'Aerodynamic toy car designed for speed.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Stunt Car Set',
        'price': 1599.0,
        'rating': 4.7,
        'reviews': '178 reviews',
        'image': 'assets/images/Stunt Car Set.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.8kg',
        'description': 'Extreme stunt cars with launch ramps and obstacles.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Diecast Mini Car Set',
        'price': 499.0,
        'rating': 4.2,
        'reviews': '173 reviews',
        'image': 'assets/images/Diecast Mini Car Set.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.3kg',
        'description':
            'Pack of 5 metal cars — perfect for kids and collectors.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Luxury Sedan Model',
        'price': 899.0,
        'rating': 4.3,
        'reviews': '366 reviews',
        'image': 'assets/images/Luxury Sedan Model.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.8kg',
        'description': 'Detailed luxury car model with opening doors.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Car Carrier',
        'price': 2599.0,
        'rating': 4.7,
        'reviews': '86 reviews',
        'image': 'assets/images/Car Carrier.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '4.8kg',
        'description': 'Multi-level car transport truck toy.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
      {
        'name': 'Construction Vehicle Set',
        'price': 1399.0,
        'rating': 4.5,
        'reviews': '431 reviews',
        'image': 'assets/images/Construction  Vechicle Set.jpg',
        'size': 'Standard Size, Extra Large',
        'weight': '3.5kg',
        'description': 'Set of construction vehicles including bulldozer.',
        'category': 'Babies',
        'subcategory': 'Toys'
      },
    ],
    'babies_furniture': [
      {
        'id': 'baby_crib_1',
        'name': 'Baby Crib',
        'price': 8999.0,
        'rating': 4.7,
        'reviews': '455 reviews',
        'image': 'assets/images/Baby Crib.jpg',
        'size': 'Standard Size, 120x60x90 cm',
        'weight': '25kg',
        'description': 'Safe and sturdy baby crib with mattress.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'high_chair_2',
        'name': 'High Chair',
        'price': 3499.0,
        'rating': 4.4,
        'reviews': '115 reviews',
        'image': 'assets/images/High Chair.jpg',
        'size': 'Standard Size, 60x50x85 cm',
        'weight': '8kg',
        'description': 'Adjustable high chair for feeding babies.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'changing_table_3',
        'name': 'Changing Table',
        'price': 5999.0,
        'rating': 4.5,
        'reviews': '374 reviews',
        'image': 'assets/images/Changing Table.jpg',
        'size': 'Standard Size, 90x50x95 cm',
        'weight': '18kg',
        'description': 'Wooden changing table with storage.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_wardrobe_4',
        'name': 'Baby Wardrobe',
        'price': 7999.0,
        'rating': 4.6,
        'reviews': '27 reviews',
        'image': 'assets/images/Baby Wardrobe.jpg',
        'size': 'Standard Size, 80x50x180 cm',
        'weight': '35kg',
        'description': 'Compact wardrobe for baby clothes.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'rocking_chair_5',
        'name': 'Rocking Chair',
        'price': 6999.0,
        'rating': 4.8,
        'reviews': '209 reviews',
        'image': 'assets/images/Rocking Chair.jpg',
        'size': 'Standard Size, 70x80x100 cm',
        'weight': '22kg',
        'description': 'Comfortable rocking chair for nursing.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_dresser_6',
        'name': 'Baby Dresser',
        'price': 4999.0,
        'rating': 4.3,
        'reviews': '49 reviews',
        'image': 'assets/images/Baby Dresser.jpg',
        'size': 'Standard Size, 100x50x85 cm',
        'weight': '28kg',
        'description': '6-drawer dresser for baby essentials.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'toddler_bed_7',
        'name': 'Toddler Bed',
        'price': 11999.0,
        'rating': 4.7,
        'reviews': '113 reviews',
        'image': 'assets/images/Toddler Bed.jpg',
        'size': 'Standard Size, 140x70x60 cm',
        'weight': '30kg',
        'description': 'Safe toddler bed with guard rails.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_swing_8',
        'name': 'Baby Swing',
        'price': 4499.0,
        'rating': 4.4,
        'reviews': '481 reviews',
        'image': 'assets/images/Baby Swing.jpg',
        'size': 'Standard Size, 80x60x70 cm',
        'weight': '12kg',
        'description': 'Electric baby swing with music.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'playpen_9',
        'name': 'Playpen',
        'price': 3999.0,
        'rating': 4.5,
        'reviews': '30 reviews',
        'image': 'assets/images/Playpen.jpg',
        'size': 'Standard Size, 120x120x70 cm',
        'weight': '15kg',
        'description': 'Foldable playpen for safe play area.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_bath_tub_10',
        'name': 'Baby Bath Tub',
        'price': 1999.0,
        'rating': 4.2,
        'reviews': '400 reviews',
        'image': 'assets/images/Baby Bath Tub.jpg',
        'size': 'Standard Size, 75x45x25 cm',
        'weight': '3kg',
        'description': 'Plastic baby bath tub with support.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'nursing_ottoman_11',
        'name': 'Nursing Ottoman',
        'price': 5499.0,
        'rating': 4.6,
        'reviews': '457 reviews',
        'image': 'assets/images/Nursing Ottoman.jpg',
        'size': 'Standard Size, 60x45x40 cm',
        'weight': '10kg',
        'description': 'Footrest ottoman for nursing mothers.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_walker_12',
        'name': 'Baby Walker',
        'price': 2999.0,
        'rating': 4.3,
        'reviews': '284 reviews',
        'image': 'assets/images/Baby Walker.jpg',
        'size': 'Standard Size, 70x70x50 cm',
        'weight': '5kg',
        'description': 'Activity walker with toys and sounds.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'diaper_station_13',
        'name': 'Diaper Station',
        'price': 6499.0,
        'rating': 4.5,
        'reviews': '336 reviews',
        'image': 'assets/images/Diaper Station.jpg',
        'size': 'Standard Size, 80x50x90 cm',
        'weight': '20kg',
        'description': 'Organized diaper changing station.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_bouncer_14',
        'name': 'Baby Bouncer',
        'price': 3499.0,
        'rating': 4.4,
        'reviews': '369 reviews',
        'image': 'assets/images/Baby Bouncer.jpg',
        'size': 'Standard Size, 70x40x60 cm',
        'weight': '4kg',
        'description': 'Vibrating baby bouncer seat.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'toy_storage_15',
        'name': 'Toy Storage',
        'price': 2499.0,
        'rating': 4.6,
        'reviews': '147 reviews',
        'image': 'assets/images/Toy Storage.jpg',
        'size': 'Standard Size, 60x40x80 cm',
        'weight': '8kg',
        'description': 'Colorful toy storage organizer.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_glider_16',
        'name': 'Baby Glider',
        'price': 8999.0,
        'rating': 4.8,
        'reviews': '421 reviews',
        'image': 'assets/images/Baby Glider.jpg',
        'size': 'Standard Size, 75x85x100 cm',
        'weight': '25kg',
        'description': 'Smooth gliding rocking chair.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'step_stool_17',
        'name': 'Step Stool',
        'price': 1499.0,
        'rating': 4.2,
        'reviews': '379 reviews',
        'image': 'assets/images/Step Stool.jpg',
        'size': 'Standard Size, 30x40x20 cm',
        'weight': '2kg',
        'description': 'Safe step stool for toddlers.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_monitor_stand_18',
        'name': 'Baby Monitor Stand',
        'price': 1999.0,
        'rating': 4.3,
        'reviews': '47 reviews',
        'image': 'assets/images/Baby Monitor Stand.jpg',
        'size': 'Standard Size, 20x20x50 cm',
        'weight': '3kg',
        'description': 'Adjustable stand for baby monitor.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'clothing_rack_19',
        'name': 'Clothing Rack',
        'price': 3999.0,
        'rating': 4.4,
        'reviews': '397 reviews',
        'image': 'assets/images/Clothing Rack.jpg',
        'size': 'Standard Size, 100x50x150 cm',
        'weight': '12kg',
        'description': 'Rotating clothing rack for baby clothes.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
      {
        'id': 'baby_bookcase_20',
        'name': 'Baby Bookcase',
        'price': 2999.0,
        'rating': 4.5,
        'reviews': '17 reviews',
        'image': 'assets/images/Baby Bookcase.jpg',
        'size': 'Standard Size, 80x30x100 cm',
        'weight': '15kg',
        'description': 'Low bookcase for toddler books.',
        'category': 'Babies',
        'subcategory': 'Furniture'
      },
    ],
    'diapers': [
      {
        'name': 'Baby Diapers Pack',
        'price': 799.0,
        'rating': 4.3,
        'reviews': '275 reviews',
        'image': 'assets/images/Baby Diapers Pack.jpg',
        'size': 'Standard Size, Medium',
        'weight': '2.5kg',
        'description': 'Pack of 100 soft and absorbent diapers.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Wet Wipes',
        'price': 149.0,
        'rating': 4.1,
        'reviews': '219 reviews',
        'image': 'assets/images/Wet Wipes.jpg',
        'size': 'Standard Size, 80 wipes',
        'weight': '0.3kg',
        'description': 'Gentle wet wipes for baby care.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Diaper Rash Cream',
        'price': 399.0,
        'rating': 4.5,
        'reviews': '321 reviews',
        'image': 'assets/images/Diaper Rash Cream.jpg',
        'size': 'Standard Size, 100g',
        'weight': '0.15kg',
        'description': 'Soothing cream for diaper rash prevention.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Disposable Diapers',
        'price': 649.0,
        'rating': 4.4,
        'reviews': '175 reviews',
        'image': 'assets/images/Disposable Diapers.jpg',
        'size': 'Standard Size, Large',
        'weight': '2.0kg',
        'description': 'Pack of 80 premium disposable diapers.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Cloth Diapers',
        'price': 899.0,
        'rating': 4.6,
        'reviews': '67 reviews',
        'image': 'assets/images/Cloth Diapers.jpg',
        'size': 'Standard Size, Pack of 12',
        'weight': '1.5kg',
        'description': 'Reusable cloth diapers with covers.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Baby Wipes Refill',
        'price': 199.0,
        'rating': 4.3,
        'reviews': '370 reviews',
        'image': 'assets/images/Baby Wipes Refill.jpg',
        'size': 'Standard Size, 120 wipes',
        'weight': '0.4kg',
        'description': 'Unscented baby wipes refill pack.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Diaper Bag',
        'price': 1499.0,
        'rating': 4.7,
        'reviews': '224 reviews',
        'image': 'assets/images/Diaper Bag.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.8kg',
        'description': 'Insulated diaper bag with compartments.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Changing Pad',
        'price': 599.0,
        'rating': 4.4,
        'reviews': '298 reviews',
        'image': 'assets/images/Changing Pad.jpg',
        'size': 'Standard Size, 60x40 cm',
        'weight': '0.5kg',
        'description': 'Portable changing pad with waterproof cover.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Diaper Disposal Bags',
        'price': 299.0,
        'rating': 4.1,
        'reviews': '181 reviews',
        'image': 'assets/images/Diaper Disposal Bags.jpg',
        'size': 'Standard Size, Pack of 200',
        'weight': '0.3kg',
        'description': 'Odor-proof diaper disposal bags.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Baby Lotion',
        'price': 349.0,
        'rating': 4.5,
        'reviews': '414 reviews',
        'image': 'assets/images/Baby Lotion.jpg',
        'size': 'Standard Size, 250ml',
        'weight': '0.3kg',
        'description': 'Gentle moisturizing lotion for babies.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Swim Diapers',
        'price': 499.0,
        'rating': 4.3,
        'reviews': '412 reviews',
        'image': 'assets/images/Swim Diapers.jpg',
        'size': 'Standard Size, Small',
        'weight': '0.8kg',
        'description': 'Pack of 20 reusable swim diapers.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Diaper Cream',
        'price': 449.0,
        'rating': 4.6,
        'reviews': '82 reviews',
        'image': 'assets/images/Diaper Cream.jpg',
        'size': 'Standard Size, 150g',
        'weight': '0.2kg',
        'description': 'Zinc oxide diaper cream for protection.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Baby Shampoo',
        'price': 299.0,
        'rating': 4.4,
        'reviews': '308 reviews',
        'image': 'assets/images/Baby Shampoo.jpg',
        'size': 'Standard Size, 300ml',
        'weight': '0.35kg',
        'description': 'Tear-free baby shampoo and body wash.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Diaper Rash Ointment',
        'price': 399.0,
        'rating': 4.7,
        'reviews': '176 reviews',
        'image': 'assets/images/Diaper Rash Ointment.jpg',
        'size': 'Standard Size, 120g',
        'weight': '0.18kg',
        'description': 'Healing ointment for severe diaper rash.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Baby Oil',
        'price': 249.0,
        'rating': 4.2,
        'reviews': '479 reviews',
        'image': 'assets/images/Baby Oil.jpg',
        'size': 'Standard Size, 200ml',
        'weight': '0.25kg',
        'description': 'Mineral oil for gentle baby massage.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Training Pants',
        'price': 599.0,
        'rating': 4.4,
        'reviews': '394 reviews',
        'image': 'assets/images/Training Pants.jpg',
        'size': 'Standard Size, Medium',
        'weight': '1.8kg',
        'description': 'Pull-up training pants for potty training.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Diaper Stacker',
        'price': 199.0,
        'rating': 4.1,
        'reviews': '159 reviews',
        'image': 'assets/images/Diaper Stacker.jpg',
        'size': 'Standard Size, One Size',
        'weight': '0.1kg',
        'description': 'Organizer for diaper storage.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
      {
        'name': 'Baby Wash',
        'price': 349.0,
        'rating': 4.5,
        'reviews': '92 reviews',
        'image': 'assets/images/Baby Wash.jpg',
        'size': 'Standard Size, 400ml',
        'weight': '0.45kg',
        'description': 'Mild baby wash for daily cleansing.',
        'category': 'Babies',
        'subcategory': 'Diapers'
      },
    ],
    'football': [
      {
        'name': 'Nike Mercurial Superfly 9 Elite',
        'price': 24999.0,
        'rating': 4.9,
        'reviews': '245 reviews',
        'image': 'assets/images/Nike Mercurial Superfly 9 Elite.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.22kg',
        'quantity': 15,
        'description':
            'Elite football boots with Flyknit technology for speed.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Adidas Predator Edge.3 FG',
        'price': 19999.0,
        'rating': 4.8,
        'reviews': '312 reviews',
        'image': 'assets/images/Adidas Predator Edge.3 FG.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.25kg',
        'quantity': 22,
        'description': 'Control-oriented boots with Power Control zones.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Nike Phantom GX Elite',
        'price': 22999.0,
        'rating': 4.8,
        'reviews': '267 reviews',
        'image': 'assets/images/Nike Phantom GX Elite.jpg',
        'size': 'Standard Size,  11',
        'weight': '0.24kg',
        'quantity': 19,
        'description': 'Precision boots with Gripknit texture.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Adidas Copa Sense.3 FG',
        'price': 15999.0,
        'rating': 4.6,
        'reviews': '334 reviews',
        'image': 'assets/images/Adidas Copa Sense.3 FG.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.26kg',
        'quantity': 31,
        'description': 'Classic leather boots for pure touch.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Nike Air Zoom Mercurial',
        'price': 18999.0,
        'rating': 4.7,
        'reviews': '223 reviews',
        'image': 'assets/images/Nike Air Zoom Mercurial.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.21kg',
        'quantity': 25,
        'description': 'Speed boots with Zoom Air technology.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Puma King Ultimate FG',
        'price': 21999.0,
        'rating': 4.8,
        'reviews': '198 reviews',
        'image': 'assets/images/Puma King Ultimate FG.jpg',
        'size': 'Standard Size,  11',
        'weight': '0.25kg',
        'quantity': 17,
        'description': 'Premium boots with KING branding.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Adidas X Crazyfast.3 LL',
        'price': 16999.0,
        'rating': 4.5,
        'reviews': '267 reviews',
        'image': 'assets/images/Adidas X Crazyfast.3 LL.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.23kg',
        'quantity': 29,
        'description': 'Speed boots with Energy Return technology.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Nike Tiempo Legend 9 Elite',
        'price': 23999.0,
        'rating': 4.9,
        'reviews': '156 reviews',
        'image': 'assets/images/Nike Tiempo Legend 9 Elite.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.24kg',
        'quantity': 21,
        'description': 'Legendary leather boots for Messi.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Adidas Predator Accuracy.3 LL',
        'price': 20999.0,
        'rating': 4.7,
        'reviews': '223 reviews',
        'image': 'assets/images/Adidas Predator Accuracy.3 LL.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.26kg',
        'quantity': 18,
        'description': 'Control boots with Demonscale texture.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Nike Mercurial Vapor 15 Elite',
        'price': 25999.0,
        'rating': 4.9,
        'reviews': '189 reviews',
        'image': 'assets/images/Nike Mercurial Vapor 15 Elite.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.20kg',
        'quantity': 14,
        'description': 'Ultra-light speed boots for elite players.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Nike Phantom Luna 2 Elite',
        'price': 21999.0,
        'rating': 4.8,
        'reviews': '198 reviews',
        'image': 'assets/images/Nike Phantom Luna 2 Elite.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.23kg',
        'quantity': 20,
        'description': 'Creative boots with Gripknit texture.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Puma One 1 FG',
        'price': 18999.0,
        'rating': 4.5,
        'reviews': 312,
        'image': 'assets/images/Puma One 1 FG.jpg',
        'size': 'Standard Size,  11',
        'weight': '0.22kg',
        'quantity': 27,
        'description': 'One-to-one connection with the ball.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Puma King Platinum 21 FG',
        'price': 24999.0,
        'rating': 4.9,
        'reviews': '156 reviews',
        'image': 'assets/images/Puma King Platinum 21 FG.jpg',
        'size': 'Standard Size,  10',
        'weight': '0.26kg',
        'quantity': 16,
        'description': 'Premium goalkeeper boots with cushioning.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
      {
        'name': 'Adidas Nemeziz 19.3 FG',
        'price': 16999.0,
        'rating': 4.4,
        'reviews': '334 reviews',
        'image': 'assets/images/Adidas Nemeziz 19.3 FG.jpg',
        'size': 'Standard Size,  11',
        'weight': '0.23kg',
        'quantity': 30,
        'description': 'Agile boots with Nemeziz technology.',
        'category': 'Sports',
        'subcategory': 'Football'
      },
    ],
    'tennis': [
      {
        'name': 'Tennis Racket',
        'price': 2999.0,
        'rating': 4.7,
        'reviews': '478 reviews',
        'image': 'assets/images/Tennis Racket.jpg',
        'size': 'Standard Size, 27"',
        'weight': '0.3kg',
        'description': 'Lightweight tennis racket for beginners.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Balls Pack',
        'price': 399.0,
        'rating': 4.2,
        'reviews': '474 reviews',
        'image': 'assets/images/Tennis Balls Pack.jpg',
        'size': 'Standard Size, Pack of 3',
        'weight': '0.2kg',
        'description': 'Durable tennis balls for practice.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Professional Tennis Racket',
        'price': 8999.0,
        'rating': 4.9,
        'reviews': '312 reviews',
        'image': 'assets/images/Professional Tennis Racket.jpg',
        'size': 'Standard Size, 27.5"',
        'weight': '0.32kg',
        'description': 'Advanced tennis racket with graphite construction.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis String Set',
        'price': 1299.0,
        'rating': 4.5,
        'reviews': '189 reviews',
        'image': 'assets/images/Tennis String Set.jpg',
        'size': 'Standard Size, One Size',
        'weight': '0.05kg',
        'description': 'High-quality synthetic gut strings.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Grip Tape',
        'price': 299.0,
        'rating': 4.3,
        'reviews': '267 reviews',
        'image': 'assets/images/Tennis Grip Tape.jpg',
        'size': 'Standard Size, Pack of 3',
        'weight': '0.02kg',
        'description': 'Anti-slip grip tape for better control.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Elbow Brace',
        'price': 799.0,
        'rating': 4.4,
        'reviews': '145 reviews',
        'image': 'assets/images/Tennis Elbow Brace.jpg',
        'size': 'Standard Size, One Size',
        'weight': '0.08kg',
        'description': 'Supportive brace for tennis elbow prevention.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Net',
        'price': 3499.0,
        'rating': 4.6,
        'reviews': '98 reviews',
        'image': 'assets/images/Tennis Net.jpg',
        'size': 'Standard Size, 120 ft',
        'weight': '2.5kg',
        'description': 'Professional tennis net with adjustable height.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Shoe Bag',
        'price': 599.0,
        'rating': 4.2,
        'reviews': '234 reviews',
        'image': 'assets/images/Tennis Shoe Bag.jpg',
        'size': 'Standard Size, Medium',
        'weight': '0.15kg',
        'description': 'Ventilated bag for tennis shoes.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Ball Hopper',
        'price': 1499.0,
        'rating': 4.5,
        'reviews': '176 reviews',
        'image': 'assets/images/Tennis Ball Hopper.jpg',
        'size': 'Standard Size, 120 balls',
        'weight': '1.2kg',
        'description': 'Ball hopper for efficient ball feeding.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Wristband',
        'price': 199.0,
        'rating': 4.1,
        'reviews': '389 reviews',
        'image': 'assets/images/Tennis Wristband.jpg',
        'size': 'Standard Size, One Size',
        'weight': '0.03kg',
        'description': 'Absorbent wristband for sweat management.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Racquet Bag',
        'price': 2499.0,
        'rating': 4.7,
        'reviews': '156 reviews',
        'image': 'assets/images/Tennis Racquet Bag.jpg',
        'size': 'Standard Size, 6 racquets',
        'weight': '1.8kg',
        'description': 'Padded bag for multiple tennis racquets.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Training Cone Set',
        'price': 899.0,
        'rating': 4.3,
        'reviews': '298 reviews',
        'image': 'assets/images/Tennis Training Cone Set.jpg',
        'size': 'Standard Size, Pack of 20',
        'weight': '0.8kg',
        'description': 'Agility cones for tennis footwork training.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Overgrip',
        'price': 349.0,
        'rating': 4.4,
        'reviews': '412 reviews',
        'image': 'assets/images/Tennis Overgrip.jpg',
        'size': 'Standard Size, Pack of 3',
        'weight': '0.04kg',
        'description': 'Replacement overgrip for tennis rackets.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Court Line Tape',
        'price': 1299.0,
        'rating': 4.2,
        'reviews': '87 reviews',
        'image': 'assets/images/Tennis Court Line Tape.jpg',
        'size': 'Standard Size, 100m roll',
        'weight': '1.5kg',
        'description': 'Durable tape for marking tennis court lines.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Vibration Dampener',
        'price': 149.0,
        'rating': 4.0,
        'reviews': '356 reviews',
        'image': 'assets/images/Tennis Vibration Dampener.jpg',
        'size': 'Standard Size, One Size',
        'weight': '0.01kg',
        'description': 'Shock absorber for tennis racket strings.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
      {
        'name': 'Tennis Scoreboard',
        'price': 4999.0,
        'rating': 4.6,
        'reviews': '134 reviews',
        'image': 'assets/images/Tennis Scoreboard.jpg',
        'size': 'Standard Size, Portable',
        'weight': '3.2kg',
        'description': 'Digital scoreboard for tennis matches.',
        'category': 'Sports',
        'subcategory': 'Tennis'
      },
    ],
    'cricket': [
      {
        'id': 1,
        'name': 'Cricket Bat',
        'price': 2999.0,
        'rating': 4.7,
        'reviews': '43 reviews',
        'image': 'assets/images/Cricket Bat.jpg',
        'size': 'Standard Size, Full Size',
        'weight': '1.2kg',
        'description': 'Professional cricket bat made from premium willow.',
        'category': 'Sports',
        'subcategory': 'Cricket'
      },
      {
        'id': 2,
        'name': 'Cricket Ball',
        'price': 599.0,
        'rating': 4.5,
        'reviews': '221 reviews',
        'image': 'assets/images/Cricket Ball.jpg',
        'size': 'Standard Size, Standard',
        'weight': '0.16kg',
        'description': 'Leather cricket ball for training and matches.',
        'category': 'Sports',
        'subcategory': 'Cricket'
      },
      {
        'id': 3,
        'name': 'Cricket Wickets',
        'price': 1499.0,
        'rating': 4.3,
        'reviews': '304 reviews',
        'image': 'assets/images/Cricket Wickets.jpg',
        'size': 'Standard Size, Standard',
        'weight': '0.8kg',
        'description': 'Set of three wooden cricket wickets with bails.',
        'category': 'Sports',
        'subcategory': 'Cricket'
      },
      {
        'id': 4,
        'name': 'Cricket Gloves',
        'price': 1999.0,
        'rating': 4.6,
        'reviews': '256 reviews',
        'image': 'assets/images/Cricket Gloves.jpg',
        'size': 'Standard Size, Adult',
        'weight': '0.4kg',
        'description': 'Protective batting gloves with reinforced palms.',
        'category': 'Sports',
        'subcategory': 'Cricket'
      },
      {
        'id': 5,
        'name': 'Cricket Helmet',
        'price': 3499.0,
        'rating': 4.8,
        'reviews': '396 reviews',
        'image': 'assets/images/Cricket Helmet.jpg',
        'size': 'Standard Size, Adult',
        'weight': '0.6kg',
        'description': 'Safety helmet with faceguard for cricketers.',
        'category': 'Sports',
        'subcategory': 'Cricket'
      },
    ],
    'living_room': [
      {
        'name': 'Sofa Set',
        'price': 45999.0,
        'rating': 4.8,
        'reviews': '313 reviews',
        'image': 'assets/images/Sofa Set.jpg',
        'size': 'Standard Size',
        'description': 'Comfortable fabric sofa set for living room.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Coffee Table',
        'price': 8999.0,
        'rating': 4.5,
        'reviews': '236 reviews',
        'image': 'assets/images/Coffee Table.jpg',
        'size': 'Standard Size',
        'description': 'Modern glass top coffee table.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'TV Stand',
        'price': 15999.0,
        'rating': 4.6,
        'reviews': '189 reviews',
        'image': 'assets/images/TV Stand.jpg',
        'size': 'Standard Size',
        'description': 'Modern TV stand with storage compartments.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Bookshelf',
        'price': 12999.0,
        'rating': 4.4,
        'reviews': '267 reviews',
        'image': 'assets/images/Bookshelf.jpg',
        'size': 'Standard Size', 
        'description': '5-tier wooden bookshelf for storage.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Armchair',
        'price': 18999.0,
        'rating': 4.7,
        'reviews': '145 reviews',
        'image': 'assets/images/Armchair.jpg',
        'size': 'Standard Size',
        'description': 'Comfortable fabric armchair with ottoman.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Side Table',
        'price': 5999.0,
        'rating': 4.3,
        'reviews': '198 reviews',
        'image': 'assets/images/Side Table.jpg',
        'size': 'Standard Size',
        'description': 'Round wooden side table with drawer.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Entertainment Unit',
        'price': 24999.0,
        'rating': 4.5,
        'reviews': '156 reviews',
        'image': 'assets/images/Entertainment Unit.jpg',
        'size': 'Standard Size', 
        'description': 'Large entertainment center with cabinets.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Floor Lamp',
        'price': 7999.0,
        'rating': 4.4,
        'reviews': '223 reviews',
        'image': 'assets/images/Floor Lamp.jpg',
        'size': 'Standard Size', 
        'description': 'Modern floor lamp with adjustable height.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Wall Shelf',
        'price': 3499.0,
        'rating': 4.2,
        'reviews': '312 reviews',
        'image': 'assets/images/Wall Shelf.jpg',
        'size': 'Standard Size', 
        'description': 'Floating wall shelf for display.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Ottoman',
        'price': 8999.0,
        'rating': 4.6,
        'reviews': '187 reviews',
        'image': 'assets/images/Ottoman.jpg',
        'size': 'Standard Size', 
        'description': 'Storage ottoman with removable top.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Console Table',
        'price': 11999.0,
        'rating': 4.5,
        'reviews': '134 reviews',
        'image': 'assets/images/Console Table.jpg',
        'size': 'Standard Size',
        'description': 'Narrow console table for hallway.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Area Rug',
        'price': 15999.0,
        'rating': 4.7,
        'reviews': '98 reviews',
        'image': 'assets/images/Area Rug.jpg',
        'size': 'Standard Size,  Width: 150cm',
        'description': 'Soft wool area rug for living room.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Media Console',
        'price': 21999.0,
        'rating': 4.4,
        'reviews': '267 reviews',
        'image': 'assets/images/Media Console.jpg',
        'size': 'Standard Size', 
        'description': 'Media console with cable management.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Plant Stand',
        'price': 4499.0,
        'rating': 4.2,
        'reviews': '189 reviews',
        'image': 'assets/images/Plant Stand.jpg',
        'size': 'Standard Size', 
        'description': 'Tiered plant stand for indoor plants.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Sectional Sofa',
        'price': 69999.0,
        'rating': 4.9,
        'reviews': '76 reviews',
        'image': 'assets/images/Sectional Sofa.jpg',
        'size': 'Standard Size', 
        'description': 'Large L-shaped sectional sofa.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Curio Cabinet',
        'price': 29999.0,
        'rating': 4.6,
        'reviews': '145 reviews',
        'image': 'assets/images/Curio Cabinet.jpg',
        'size': 'Standard Size',
        'description': 'Glass-front curio cabinet for collectibles.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Recliner Chair',
        'price': 25999.0,
        'rating': 4.8,
        'reviews': '223 reviews',
        'image': 'assets/images/Recliner Chair.jpg',
        'size': 'Standard Size', 
        'description': 'Power recliner with massage function.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Bar Cart',
        'price': 12999.0,
        'rating': 4.4,
        'reviews': '198 reviews',
        'image': 'assets/images/Bar Cart.jpg',
        'size': 'Standard Size', 
        'description': 'Rolling bar cart with storage shelves.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
      {
        'name': 'Chaise Lounge',
        'price': 34999.0,
        'rating': 4.7,
        'reviews': '134 reviews',
        'image': 'assets/images/Chaise Lounge.jpg',
        'size': 'Standard Size', 
        'description': 'Comfortable chaise lounge for relaxation.',
        'category': 'Furniture',
        'subcategory': 'Living Room'
      },
    ],
    'bedroom': [
      {
        'name': 'King Size Bed',
        'price': 35999.0,
        'rating': 4.7,
        'reviews': '249 reviews',
        'image': 'assets/images/King Size Bed.jpg',
        'size': 'Standard Size', 
        'description': 'Solid wood king size bed with storage.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Wardrobe',
        'price': 24999.0,
        'rating': 4.4,
        'reviews': '99 reviews',
        'image': 'assets/images/Wardrobe.jpg',
        'size': 'Standard Size',
        'description': 'Spacious wardrobe with sliding doors.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Nightstand',
        'price': 7999.0,
        'rating': 4.5,
        'reviews': '187 reviews',
        'image': 'assets/images/Nightstand.jpg',
        'size': 'Standard Size,  Height: 60cm',
        'description': 'Wooden nightstand with drawer and shelf.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Dresser',
        'price': 19999.0,
        'rating': 4.6,
        'reviews': '134 reviews',
        'image': 'assets/images/Dresser.jpg',
        'size': 'Standard Size,  Height: 90cm',
        'description': '8-drawer dresser with mirror.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Queen Size Bed',
        'price': 29999.0,
        'rating': 4.5,
        'reviews': '223 reviews',
        'image': 'assets/images/Queen Size Bed.jpg',
        'size': 'Standard Size,  Height: 91cm',
        'description': 'Upholstered queen bed with headboard.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Bedside Lamp',
        'price': 3999.0,
        'rating': 4.3,
        'reviews': '298 reviews',
        'image': 'assets/images/Bedside Lamp.jpg',
        'size': 'Standard Size,  Height: 45cm',
        'description': 'Modern bedside lamp with touch control.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Full Size Bed',
        'price': 24999.0,
        'rating': 4.4,
        'reviews': '189 reviews',
        'image': 'assets/images/Full Size Bed.jpg',
        'size': 'Standard Size,  Height: 91cm',
        'description': 'Platform full size bed frame.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Vanity Table',
        'price': 15999.0,
        'rating': 4.7,
        'reviews': '156 reviews',
        'image': 'assets/images/Vanity Table.jpg',
        'size': 'Standard Size,  Height: 75cm',
        'description': 'Makeup vanity with mirror and stool.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Twin Size Bed',
        'price': 19999.0,
        'rating': 4.3,
        'reviews': '267 reviews',
        'image': 'assets/images/Twin Size Bed.jpg',
        'size': 'Standard Size,  Height: 91cm',
        'description': 'Wooden twin bed with storage drawers.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Armoire',
        'price': 34999.0,
        'rating': 4.6,
        'reviews': '98 reviews',
        'image': 'assets/images/Armoire.jpg',
        'size': 'Standard Size, Height: 190cm',
        'description': 'Antique-style armoire with hanging space.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Bedroom Bench',
        'price': 11999.0,
        'rating': 4.4,
        'reviews': '145 reviews',
        'image': 'assets/images/Bedroom Bench.jpg',
        'size': 'Standard Size,  Height: 50cm',
        'description': 'Upholstered bench for bedroom seating.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Platform Bed',
        'price': 27999.0,
        'rating': 4.5,
        'reviews': '223 reviews',
        'image': 'assets/images/Platform Bed.jpg',
        'size': 'Standard Size,  Height: 30c',
        'description': 'Modern platform bed with storage.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Chest of Drawers',
        'price': 22999.0,
        'rating': 4.6,
        'reviews': '187 reviews',
        'image': 'assets/images/Chest of Drawers.jpg',
        'size': 'Standard Size,  Height: 120cm',
        'description': '5-drawer chest for clothing storage.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Canopy Bed',
        'price': 45999.0,
        'rating': 4.8,
        'reviews': '134 reviews',
        'image': 'assets/images/Canopy Bed.jpg',
        'size': 'Standard Size,  Height: 210cm',
        'description': 'Romantic canopy bed with curtains.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Bedroom Mirror',
        'price': 8999.0,
        'rating': 4.3,
        'reviews': '298 reviews',
        'image': 'assets/images/Bedroom Mirror.jpg',
        'size': 'Standard Size, Height: 120cm',
        'description': 'Full-length mirror with wooden frame.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Storage Ottoman',
        'price': 13999.0,
        'rating': 4.5,
        'reviews': '189 reviews',
        'image': 'assets/images/Storage Ottoman.jpg',
        'size': 'Standard Size,  Height: 45cm',
        'description': 'Upholstered ottoman with storage space.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Headboard',
        'price': 17999.0,
        'rating': 4.4,
        'reviews': '156 reviews',
        'image': 'assets/images/Headboard.jpg',
        'size': 'Standard Size,  Height: 120cm',
        'description': 'Upholstered headboard for bed.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Bedroom Rug',
        'price': 12999.0,
        'rating': 4.6,
        'reviews': '223 reviews',
        'image': 'assets/images/Bedroom Rug.jpg',
        'size': 'Standard Size,  Width: 150cm',
        'description': 'Soft shag rug for bedroom floor.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Corner Wardrobe',
        'price': 39999.0,
        'rating': 4.7,
        'reviews': '98 reviews',
        'image': 'assets/images/Corner Wardrobe.jpg',
        'size': 'Standard Size,  Height: 210cm',
        'description': 'L-shaped corner wardrobe with mirrors.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
      {
        'name': 'Bedroom Chair',
        'price': 14999.0,
        'rating': 4.5,
        'reviews': '187 reviews',
        'image': 'assets/images/Bedroom Chair.jpg',
        'size': 'Standard Size,  Height: 85cm',
        'description': 'Comfortable armchair for bedroom.',
        'category': 'Furniture',
        'subcategory': 'Bedroom'
      },
    ],
    'kitchen': [
      {
        'name': 'Dining Table Set',
        'price': 29999.0,
        'rating': 4.6,
        'reviews': '356 reviews',
        'image': 'assets/images/Dining Table Set.jpg',
        'size': 'Standard Size, Height: 75cm',
        'description': 'Wooden dining table with 6 chairs.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Kitchen Cabinet',
        'price': 18999.0,
        'rating': 4.3,
        'reviews': '196 reviews',
        'image': 'assets/images/Kitchen Cabinet.jpg',
        'size': 'Standard Size,  Height: 200cm',
        'description': 'Modern kitchen cabinet with storage.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Bar Stools Set',
        'price': 14999.0,
        'rating': 4.4,
        'reviews': '223 reviews',
        'image': 'assets/images/Bar Stools Set.jpg',
        'size': 'Standard Size,  Height: 75cm each',
        'description': 'Set of 4 modern bar stools.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Kitchen Island',
        'price': 39999.0,
        'rating': 4.7,
        'reviews': '145 reviews',
        'image': 'assets/images/Kitchen Island.jpg',
        'size': 'Standard Size, Height: 90cm',
        'description': 'Large kitchen island with storage.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Breakfast Nook',
        'price': 25999.0,
        'rating': 4.5,
        'reviews': '187 reviews',
        'image': 'assets/images/Breakfast Nook.jpg',
        'size': 'Standard Size,  Height: 80cm',
        'description': 'Corner breakfast nook with bench.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Pantry Cabinet',
        'price': 22999.0,
        'rating': 4.6,
        'reviews': '134 reviews',
        'image': 'assets/images/Pantry Cabinet.jpg',
        'size': 'Standard Size,  Height: 200cm',
        'description': 'Tall pantry cabinet with shelves.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Kitchen Cart',
        'price': 12999.0,
        'rating': 4.3,
        'reviews': '298 reviews',
        'image': 'assets/images/Kitchen Cart.jpg',
        'size': 'Standard Size,  Height: 90cm',
        'description': 'Mobile kitchen cart with wheels.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Wine Rack',
        'price': 7999.0,
        'rating': 4.4,
        'reviews': '189 reviews',
        'image': 'assets/images/Wine Rack.jpg',
        'size': 'Standard Size,  Height: 120cm',
        'description': 'Wooden wine rack for 24 bottles.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Counter Stools',
        'price': 17999.0,
        'rating': 4.5,
        'reviews': '156 reviews',
        'image': 'assets/images/Counter Stools.jpg',
        'size': 'Standard Size,  Height: 65cm each',
        'description': 'Set of 3 counter height stools.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Farmhouse Table',
        'price': 32999.0,
        'rating': 4.6,
        'reviews': '223 reviews',
        'image': 'assets/images/Farmhouse Table.jpg',
        'size': 'Standard Size,  Height: 78cm',
        'description': 'Rustic farmhouse dining table.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'China Cabinet',
        'price': 28999.0,
        'rating': 4.5,
        'reviews': '187 reviews',
        'image': 'assets/images/China Cabinet.jpg',
        'size': 'Standard Size,  Height: 190cm',
        'description': 'Display cabinet for china and glassware.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Kitchen Bench',
        'price': 19999.0,
        'rating': 4.4,
        'reviews': '134 reviews',
        'image': 'assets/images/Kitchen Bench.jpg',
        'size': 'Standard Size,  Height: 45cm',
        'description': 'Storage bench for kitchen seating.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Bakers Rack',
        'price': 24999.0,
        'rating': 4.6,
        'reviews': '198 reviews',
        'image': 'assets/images/Bakers Rack.jpg',
        'size': 'Standard Size,  Height: 180cm',
        'description': 'Iron baker\'s rack with shelves.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Round Dining Table',
        'price': 27999.0,
        'rating': 4.5,
        'reviews': '156 reviews',
        'image': 'assets/images/Round Dining Table.jpg',
        'size': 'Standard Size,  Height: 75cm',
        'description': 'Round pedestal dining table.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Corner Cabinet',
        'price': 31999.0,
        'rating': 4.7,
        'reviews': '98 reviews',
        'image': 'assets/images/Corner Cabinet.jpg',
        'size': 'Standard Size,  Height: 200cm',
        'description': 'L-shaped corner kitchen cabinet.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Drop Leaf Table',
        'price': 22999.0,
        'rating': 4.4,
        'reviews': '223 reviews',
        'image': 'assets/images/Drop Leaf Table.jpg',
        'size': 'Standard Size,  Height: 75cm',
        'description': 'Space-saving drop leaf dining table.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Kitchen Hutch',
        'price': 37999.0,
        'rating': 4.6,
        'reviews': '145 reviews',
        'image': 'assets/images/Kitchen Hutch.jpg',
        'size': 'Standard Size,  Height: 210cm',
        'description': 'Two-piece kitchen hutch with display.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
      {
        'name': 'Banquette Seating',
        'price': 45999.0,
        'rating': 4.8,
        'reviews': '87 reviews',
        'image': 'assets/images/Banquette Seating.jpg',
        'size': 'Standard Size,  Height: 85cm',
        'description': 'Built-in banquette with storage.',
        'category': 'Furniture',
        'subcategory': 'Kitchen'
      },
    ],
    'office': [
      {
        'name': 'Office Chair',
        'price': 8999.0,
        'rating': 4.4,
        'reviews': '204 reviews',
        'image': 'assets/images/Office Chair.jpg',
        'size': 'Standard Size,  Height: 110cm',
        'description': 'Comfortable office chair with lumbar support.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Executive Desk',
        'price': 45999.0,
        'rating': 4.8,
        'reviews': '145 reviews',
        'image': 'assets/images/Executive Desk.jpg',
        'size': 'Standard Size,  Height: 75cm',
        'description': 'Large executive desk with cable management.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'File Cabinet',
        'price': 12999.0,
        'rating': 4.3,
        'reviews': '223 reviews',
        'image': 'assets/images/File Cabinet.jpg',
        'size': 'Standard Size,  Height: 130cm',
        'description': '4-drawer file cabinet with lock.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Bookshelf',
        'price': 18999.0,
        'rating': 4.6,
        'reviews': '187 reviews',
        'image': 'assets/images/Bookshelf.jpg',
        'size': 'Standard Size,  Height: 180cm',
        'description': '5-shelf bookshelf for office organization.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Conference Table',
        'price': 79999.0,
        'rating': 4.7,
        'reviews': '98 reviews',
        'image': 'assets/images/Conference Table.jpg',
        'size': 'Standard Size,  Height: 75cm',
        'description': 'Large conference table for meetings.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Computer Desk',
        'price': 22999.0,
        'rating': 4.5,
        'reviews': '134 reviews',
        'image': 'assets/images/Computer Desk.jpg',
        'size': 'Standard Size,  Height: 75cm',
        'description': 'L-shaped computer desk with storage.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Task Chair',
        'price': 14999.0,
        'rating': 4.4,
        'reviews': '298 reviews',
        'image': 'assets/images/Task Chair.jpg',
        'size': 'Standard Size,  Height: 105cm',
        'description': 'Adjustable task chair with armrests.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Credenza',
        'price': 34999.0,
        'rating': 4.6,
        'reviews': '156 reviews',
        'image': 'assets/images/Credenza.jpg',
        'size': 'Standard Size,  Height: 75cm',
        'description': 'Office credenza with drawers and cabinets.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Standing Desk',
        'price': 39999.0,
        'rating': 4.7,
        'reviews': '189 reviews',
        'image': 'assets/images/Standing Desk.jpg',
        'size': 'Standard Size,  Height: 75-120cm',
        'description': 'Height-adjustable standing desk.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Office Sofa',
        'price': 59999.0,
        'rating': 4.5,
        'reviews': '98 reviews',
        'image': 'assets/images/Office Sofa.jpg',
        'size': 'Standard Size,  Height: 80cm',
        'description': '3-seater office sofa for waiting areas.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Printer Stand',
        'price': 7999.0,
        'rating': 4.3,
        'reviews': '223 reviews',
        'image': 'assets/images/Printer Stand.jpg',
        'size': 'Standard Size,  Height: 75cm',
        'description': 'Rolling printer stand with storage.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Reception Desk',
        'price': 89999.0,
        'rating': 4.8,
        'reviews': '67 reviews',
        'image': 'assets/images/Reception Desk.jpg',
        'size': 'Standard Size,  Height: 110cm',
        'description': 'Curved reception desk with storage.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Whiteboard Cabinet',
        'price': 29999.0,
        'rating': 4.4,
        'reviews': '145 reviews',
        'image': 'assets/images/Whiteboard Cabinet.jpg',
        'size': 'Standard Size,  Height: 180cm',
        'description': 'Mobile whiteboard with storage cabinet.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Ergonomic Chair',
        'price': 24999.0,
        'rating': 4.6,
        'reviews': '198 reviews',
        'image': 'assets/images/Ergonomic Chair.jpg',
        'size': 'Standard Size,  Height: 115cm',
        'description': 'High-back ergonomic office chair.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Cubicle Panel',
        'price': 15999.0,
        'rating': 4.2,
        'reviews': '87 reviews',
        'image': 'assets/images/Cubicle Panel.jpg',
        'size': 'Standard Size,  Height: 150cm',
        'description': 'Fabric-covered cubicle partition panel.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Mailroom Cart',
        'price': 11999.0,
        'rating': 4.3,
        'reviews': '134 reviews',
        'image': 'assets/images/Mailroom Cart.jpg',
        'size': 'Standard Size,  Height: 100cm',
        'description': 'Rolling mailroom cart with bins.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
      {
        'name': 'Filing Cabinet',
        'price': 17999.0,
        'rating': 4.5,
        'reviews': '156 reviews',
        'image': 'assets/images/Filing Cabinet.jpg',
        'size': 'Standard Size,  Height: 160cm',
        'description': '5-drawer legal size filing cabinet.',
        'category': 'Furniture',
        'subcategory': 'Office'
      },
    ],
    'phones': [
      {
        'name': 'Google Pixel 8 Pro',
        'price': 99999.0,
        'rating': 4.7,
        'reviews': '634 reviews',
        'image': 'assets/images/Google Pixel 8 Pro.jpg',
        'size': 'Standard Size,  162.6 x 76.5 x 8.8mm',
        'quantity': 42,
        'description': 'Pure Android experience with exceptional camera AI.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'OnePlus 12',
        'price': 69999.0,
        'rating': 4.6,
        'reviews': '523 reviews',
        'image': 'assets/images/OnePlus 12.jpg',
        'size': 'Standard Size,  164.3 x 75.8 x 9.15mm',
        'quantity': 28,
        'description': 'Fast charging flagship with Hasselblad camera.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'iPhone 15',
        'price': 79999.0,
        'rating': 4.7,
        'reviews': '1,156 reviews',
        'image': 'assets/images/iPhone 15.jpg',
        'size': 'Standard Size,  147.6 x 71.6 x 7.8mm',
        'weight': '171g',
        'quantity': 67,
        'description': 'Standard iPhone 15 with Dynamic Island.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Samsung Galaxy S24+',
        'price': 89999.0,
        'rating': 4.6,
        'reviews': '723 reviews',
        'image': 'assets/images/Samsung Galaxy S24+.jpg',
        'size': 'Standard Size,  158.5 x 75.9 x 7.7mm',
        'weight': '196g',
        'quantity': 39,
        'description': 'Large screen Galaxy with S Pen support.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Google Pixel 8',
        'price': 69999.0,
        'rating': 4.5,
        'reviews': '498 reviews',
        'image': 'assets/images/Google Pixel 8.jpg',
        'size': 'Standard Size,  150.5 x 70.8 x 8.9mm',
        'weight': '187g',
        'quantity': 55,
        'description': 'Compact Pixel with 7 years of updates.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'OnePlus 12R',
        'price': 44999.0,
        'rating': 4.4,
        'reviews': '387 reviews',
        'image': 'assets/images/OnePlus 12R.jpg',
        'size': 'Standard Size,  164.3 x 75.8 x 9.15mm',
        'weight': '207g',
        'quantity': 63,
        'description': 'Gaming-focused phone with 150W charging.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Nothing Phone (2a)',
        'price': 29999.0,
        'rating': 4.3,
        'reviews': '298 reviews',
        'image': 'assets/images/Nothing Phone (2a).jpg',
        'size': 'Standard Size,  161.7 x 76.3 x 8.6mm',
        'weight': '190g',
        'quantity': 74,
        'description': 'Transparent design with Glyph interface.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'ASUS ROG Phone 8',
        'price': 119999.0,
        'rating': 4.8,
        'reviews': '156 reviews',
        'image': 'assets/images/ASUS ROG Phone 8.jpg',
        'size': 'Standard Size,  173 x 77 x 10.3mm',
        'weight': '225g',
        'quantity': 18,
        'description': 'Gaming phone with AirTriggers and 165Hz display.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Sony Xperia 1 V',
        'price': 129999.0,
        'rating': 4.6,
        'reviews': '89 reviews',
        'image': 'assets/images/Sony Xperia 1 V.jpg',
        'size': 'Standard Size,  165 x 71 x 8.3mm',
        'weight': '193g',
        'quantity': 22,
        'description': 'Professional camera phone with 4K 120fps video.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Motorola Edge 40 Pro',
        'price': 49999.0,
        'rating': 4.4,
        'reviews': '334 reviews',
        'image': 'assets/images/Motorola Edge 40 Pro.jpg',
        'size': 'Standard Size,  161.2 x 74.0 x 8.6mm',
        'weight': '198g',
        'quantity': 41,
        'description': 'Curved display with 125W charging.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Realme GT 5',
        'price': 39999.0,
        'rating': 4.3,
        'reviews': '445 reviews',
        'image': 'assets/images/Realme GT 5.jpg',
        'size': 'Standard Size,  163.8 x 75.3 x 8.9mm',
        'weight': '205g',
        'quantity': 58,
        'description': 'Iceberg cooling system with 240W charging.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'OPPO Find X7 Ultra',
        'price': 79999.0,
        'rating': 4.6,
        'reviews': '198 reviews',
        'image': 'assets/images/OPPO Find X7 Ultra.jpg',
        'size': 'Standard Size,  164.3 x 75.5 x 9.5mm',
        'weight': '220g',
        'quantity': 33,
        'description': 'Hasselblad camera with 1/1.3" main sensor.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Honor Magic 5 Pro',
        'price': 69999.0,
        'rating': 4.4,
        'reviews': '312 reviews',
        'image': 'assets/images/Honor Magic 5 Pro.jpg',
        'size': 'Standard Size,  162.9 x 76.3 x 8.8mm',
        'weight': '209g',
        'quantity': 36,
        'description': 'Satellite communication with AI camera.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Nokia X30',
        'price': 34999.0,
        'rating': 4.2,
        'reviews': '456 reviews',
        'image': 'assets/images/Nokia X30.jpg',
        'size': 'Standard Size,  158.9 x 73.4 x 7.8mm',
        'weight': '185g',
        'quantity': 47,
        'description': '5 years updates with IP68 rating.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Tecno Phantom V Fold',
        'price': 89999.0,
        'rating': 4.3,
        'reviews': '178 reviews',
        'image': 'assets/images/Tecno Phantom V Fold.jpg',
        'size': 'Standard Size,  155.7 x 73.2 x 14.3mm folded',
        'weight': '236g',
        'quantity': 15,
        'description': 'Affordable foldable phone with dual screens.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
      {
        'name': 'Infinix Zero 30',
        'price': 24999.0,
        'rating': 4.1,
        'reviews': '523 reviews',
        'image': 'assets/images/Infinix Zero 30.jpg',
        'size': 'Standard Size,  168.4 x 77.5 x 8.9mm',
        'weight': '202g',
        'quantity': 69,
        'description': '68W charging with 108MP camera.',
        'category': 'Electronics',
        'subcategory': 'Phones'
      },
    ],
    'laptops': [
      {
        'name': 'Dell XPS 13 Plus',
        'price': 189999.0,
        'rating': 4.7,
        'reviews': '456 reviews',
        'image': 'assets/images/Dell XPS 13 Plus.jpg',
        'size': 'Standard Size,  295.3 x 199.0 x 15.3mm',
        'weight': '1.24kg',
        'quantity': 15,
        'description': 'Ultra-portable laptop with InfinityEdge display.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'ASUS ROG Strix G15',
        'price': 149999.0,
        'rating': 4.8,
        'reviews': '678 reviews',
        'image': 'assets/images/ASUS ROG Strix G15.jpg',
        'size': 'Standard Size,  354 x 259 x 26.6mm',
        'weight': '2.3kg',
        'quantity': 12,
        'description': 'Gaming laptop with RTX 4070 and AMD Ryzen 9.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'HP Spectre x360 14',
        'price': 139999.0,
        'rating': 4.5,
        'reviews': '567 reviews',
        'image': 'assets/images/HP Spectre x360 14.jpg',
        'size': 'Standard Size,  297.9 x 220.9 x 16.9mm',
        'weight': '1.37kg',
        'quantity': 22,
        'description': '2-in-1 convertible with Intel Evo platform.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'Razer Blade 16',
        'price': 299999.0,
        'rating': 4.9,
        'reviews': '123 reviews',
        'image': 'assets/images/Razer Blade 16.jpg',
        'size': 'Standard Size,  355 x 260 x 13.8mm',
        'weight': '2.4kg',
        'quantity': 5,
        'description': 'Premium gaming laptop with RTX 4090.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'Acer Predator Helios 16',
        'price': 169999.0,
        'rating': 4.7,
        'reviews': '432 reviews',
        'image': 'assets/images/Acer Predator Helios 16.jpg',
        'size': 'Standard Size,  362.3 x 262.4 x 28.9mm',
        'weight': '2.6kg',
        'quantity': 9,
        'description': 'Gaming beast with RTX 4070 and i9 processor.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'Apple MacBook Air M2',
        'price': 119999.0,
        'rating': 4.6,
        'reviews': '891 reviews',
        'image': 'assets/images/Apple MacBook Air M2.jpg',
        'size': 'Standard Size,  304.1 x 215.0 x 11.3mm',
        'weight': '1.24kg',
        'quantity': 32,
        'description': 'Fanless design with all-day battery life.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'MSI Creator Z16',
        'price': 229999.0,
        'rating': 4.8,
        'reviews': '187 reviews',
        'image': 'assets/images/MSI Creator Z16.jpg',
        'size': 'Standard Size,  359 x 256 x 19mm',
        'weight': '2.2kg',
        'quantity': 7,
        'description': 'Creator laptop with RTX 4060 and 16GB RAM.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'LG Gram 17',
        'price': 159999.0,
        'rating': 4.5,
        'reviews': '298 reviews',
        'image': 'assets/images/LG Gram 17.jpg',
        'size': 'Standard Size,  380.4 x 260.3 x 17.8mm',
        'weight': '1.35kg',
        'quantity': 14,
        'description': '17" ultraportable with incredible battery life.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'Alienware m16',
        'price': 249999.0,
        'rating': 4.7,
        'reviews': '345 reviews',
        'image': 'assets/images/Alienware m16.jpg',
        'size': 'Standard Size,  356.2 x 272.5 x 19.2mm',
        'weight': '2.8kg',
        'quantity': 6,
        'description': 'Alienware gaming laptop with RTX 4070.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'Framework Laptop 13',
        'price': 89999.0,
        'rating': 4.4,
        'reviews': '567 reviews',
        'image': 'assets/images/Framework Laptop 13.jpg',
        'size': 'Standard Size,  299 x 229 x 16mm',
        'weight': '1.3kg',
        'quantity': 19,
        'description': 'Modular laptop you can upgrade and repair.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'Huawei MateBook X Pro',
        'price': 149999.0,
        'rating': 4.6,
        'reviews': '423 reviews',
        'image': 'assets/images/Huawei MateBook X Pro.jpg',
        'size': 'Standard Size,  314 x 227 x 15.5mm',
        'weight': '1.38kg',
        'quantity': 11,
        'description': 'Huawei ultrabook with 90Hz OLED display.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
      {
        'name': 'Vaio Z',
        'price': 279999.0,
        'rating': 4.8,
        'reviews': '156 reviews',
        'image': 'assets/images/Vaio Z.jpg',
        'size': 'Standard Size,  315.6 x 218.8 x 15.5mm',
        'weight': '1.08kg',
        'quantity': 4,
        'description': 'Sony Vaio premium ultrabook with OLED display.',
        'category': 'Electronics',
        'subcategory': 'Laptops'
      },
    ],
    'electronics_accessories': [
      {
        'name': 'Sony WF-1000XM5',
        'price': 29999.0,
        'rating': 4.8,
        'reviews': '2,345 reviews',
        'image': 'assets/images/Sony WF-1000XM5.jpg',
        'size': 'Standard Size,  24.9 x 20.8 x 17.9mm (charging case)',
        'weight': '5.9g each',
        'quantity': 25,
        'description': 'Industry-leading noise canceling with 30hr battery.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Samsung Galaxy Buds2 Pro',
        'price': 19999.0,
        'rating': 4.5,
        'reviews': '1,890 reviews',
        'image': 'assets/images/Samsung Galaxy Buds2 Pro.jpg',
        'size': 'Standard Size,  20.5 x 19.2 x 18.7mm (charging case)',
        'weight': '5.5g each',
        'quantity': 35,
        'description': '24-bit Hi-Fi audio with active noise canceling.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Anker Soundcore Liberty 4',
        'price': 12999.0,
        'rating': 4.4,
        'reviews': '3,456 reviews',
        'image': 'assets/images/Anker Soundcore Liberty 4.jpg',
        'size': 'Standard Size,  30.0 x 25.0 x 20.0mm (charging case)',
        'weight': '5.8g each',
        'quantity': 55,
        'description': 'BassUp technology with 9hr battery per bud.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Jabra Elite 8 Active',
        'price': 17999.0,
        'rating': 4.6,
        'reviews': '1,234 reviews',
        'image': 'assets/images/Jabra Elite 8 Active.jpg',
        'size': 'Standard Size,  29.7 x 21.5 x 20.8mm (charging case)',
        'weight': '5.0g each',
        'quantity': 28,
        'description': 'IP68 waterproof with adjustable ear fins.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Bose QuietComfort Earbuds II',
        'price': 22999.0,
        'rating': 4.5,
        'reviews': '2,789 reviews',
        'image': 'assets/images/Bose QuietComfort Earbuds II.jpg',
        'size': 'Standard Size,  32.5 x 26.1 x 24.8mm (charging case)',
        'weight': '6.2g each',
        'quantity': 22,
        'description': 'World-class noise cancellation with 24hr battery.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'OnePlus Buds Pro 2',
        'price': 14999.0,
        'rating': 4.4,
        'reviews': '2,345 reviews',
        'image': 'assets/images/OnePlus Buds Pro 2.jpg',
        'size': 'Standard Size,  25.0 x 20.0 x 18.0mm (charging case)',
        'weight': '4.9g each',
        'quantity': 42,
        'description': '43dB ANC with Dolby Atmos spatial audio.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Apple MagSafe Charger',
        'price': 3999.0,
        'rating': 4.7,
        'reviews': '4,321 reviews',
        'image': 'assets/images/Apple MagSafe Charger.jpg',
        'size': 'Standard Size,  97.1 x 97.1 x 11.5mm',
        'weight': '100g',
        'quantity': 67,
        'description': '15W wireless charger with MagSafe technology.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Anker PowerCore 20K',
        'price': 4999.0,
        'rating': 4.5,
        'reviews': '5,678 reviews',
        'image': 'assets/images/Anker PowerCore 20K.jpg',
        'size': 'Standard Size,  150 x 60 x 22mm',
        'weight': '340g',
        'quantity': 89,
        'description': '20000mAh power bank with 22.5W fast charging.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Samsung 45W Super Fast Charger',
        'price': 2999.0,
        'rating': 4.4,
        'reviews': '3,456 reviews',
        'image': 'assets/images/Samsung 45W Super Fast Charger.jpg',
        'size': 'Standard Size,  50 x 50 x 28mm',
        'weight': '72g',
        'quantity': 78,
        'description': '45W USB-C charger with PPS and AFC.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Razer DeathAdder V3 Pro',
        'price': 12999.0,
        'rating': 4.7,
        'reviews': '2,890 reviews',
        'image': 'assets/images/Razer DeathAdder V3 Pro.jpg',
        'size': 'Standard Size,  128 x 68 x 44mm',
        'weight': '63g',
        'quantity': 19,
        'description': 'Wireless gaming mouse with 90hr battery.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Keychron K8 Wireless',
        'price': 14999.0,
        'rating': 4.5,
        'reviews': '1,567 reviews',
        'image': 'assets/images/Keychron K8 Wireless.jpg',
        'size': 'Standard Size,  355 x 124 x 30mm',
        'weight': '800g',
        'quantity': 16,
        'description':
            '75% layout mechanical keyboard with hot-swappable switches.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Elgato Stream Deck MK.2',
        'price': 7999.0,
        'rating': 4.6,
        'reviews': '3,456 reviews',
        'image': 'assets/images/Elgato Stream Deck MK.2.jpg',
        'size': 'Standard Size,  118 x 84 x 18mm',
        'weight': '155g',
        'quantity': 27,
        'description': '15 LCD keys for instant access to actions.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'Blue Yeti USB Microphone',
        'price': 12999.0,
        'rating': 4.7,
        'reviews': '4,567 reviews',
        'image': 'assets/images/Blue Yeti USB Microphone.jpg',
        'size': 'Standard Size,  120 x 120 x 295mm',
        'weight': '550g',
        'quantity': 14,
        'description': 'Professional USB condenser microphone.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
      {
        'name': 'WD My Passport 5TB',
        'price': 14999.0,
        'rating': 4.4,
        'reviews': '2,890 reviews',
        'image': 'assets/images/WD My Passport 5TB.jpg',
        'size': 'Standard Size,  110 x 81.5 x 21.5mm',
        'weight': '250g',
        'quantity': 31,
        'description': '5TB portable external hard drive with USB 3.0.',
        'category': 'Electronics',
        'subcategory': 'Accessories'
      },
    ],
  };

  static List<ProductModel> getCars() {
    return subcategoryProducts['cars']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 100 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getBikes() {
    return subcategoryProducts['bikes']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 200 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getTrucks() {
    return subcategoryProducts['trucks']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 300 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getParts() {
    return subcategoryProducts['parts']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 400 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getBabiesClothing() {
    return subcategoryProducts['babies_clothing']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 500 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getToys() {
    return subcategoryProducts['toys']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 600 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getBabiesFurniture() {
    return subcategoryProducts['babies_furniture']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 700 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getDiapers() {
    return subcategoryProducts['diapers']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 800 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getFootball() {
    return subcategoryProducts['football']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 1000 + entry.key; // Stable ID based on index
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getTennis() {
    return subcategoryProducts['tennis']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 2000 + entry.key; // Stable ID based on index
      return ProductModel.fromMap(map);
    }).toList();
  }


  static List<ProductModel> getCricket() {
    return subcategoryProducts['cricket']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 1300 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getLivingRoom() {
    return subcategoryProducts['living_room']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 4000 + entry.key; // Stable ID based on index for living room
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getBedroom() {
    return subcategoryProducts['bedroom']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 5000 + entry.key; // Stable ID based on index for bedroom
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getKitchen() {
    return subcategoryProducts['kitchen']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 6000 + entry.key; // Stable ID based on index for kitchen
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getOffice() {
    return subcategoryProducts['office']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 7000 + entry.key; // Stable ID based on index for office
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getPhones() {
    return subcategoryProducts['phones']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 900 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> getLaptops() {
    return subcategoryProducts['laptops']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 1000 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }


  static List<ProductModel> getElectronicsAccessories() {
    return subcategoryProducts['electronics_accessories']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 1200 + entry.key;
      return ProductModel.fromMap(map);
    }).toList();
  }

  static List<ProductModel> get products {
    int id = 1;
    List<ProductModel> allProducts = [];
    subcategoryProducts.forEach((key, value) {
      for (var map in value) {
        var updatedMap = {...map};
        allProducts.add(ProductModel.fromMap(
            {...updatedMap, 'id': id++, 'isFavorite': false}));
      }
    });
    return allProducts;
  }

  // Generate unique IDs for products
  static int _nextId = 1;
  static List<ProductModel> getBasketball() {
    return subcategoryProducts['basketball']!.asMap().entries.map((entry) {
      var map = Map<String, dynamic>.from(entry.value);
      map['id'] = 8000 + entry.key; // Stable ID based on index for basketball
      return ProductModel.fromMap(map);
    }).toList();
  }

  static int get nextId => _nextId++;
}
