class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.plantName,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.temperature,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 22,
        category: 'small',
        plantName: 'Parrot',
        size: 'Small',
        rating: 4.5, //weight
        humidity: 34, //top speed
        temperature: '23 - 34', //lifespan
        imageURL: 'assets/images/plant-one.png',
        isFavorated: true,
        decription:
            'Parrots are found in tropical and subtropical regions, primarily in rainforests, savannas, and grasslands. Some species inhabit arid and coastal regions as well.'
            'Known for their vibrant plumage, parrots are highly intelligent birds with strong, curved beaks. .',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 11,
        category: 'small',
        plantName: 'pigeon',
        size: 'small',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageURL: 'assets/images/plant-two.png',
        isFavorated: false,
        decription:
            'Pigeons, also known as rock doves, are adaptable birds found in urban areas, farmlands, and cliffs.'
            'Pigeons have a compact body, small head, and distinctive cooing sounds. ',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 18,
        category: 'Large',
        plantName: 'Eagle',
        size: 'Large',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageURL: 'assets/images/plant-three.png',
        isFavorated: false,
        decription:
            'Eagles are majestic birds of prey known for their impressive size, powerful build, and keen eyesight.'
            'Eagles are found on every continent except Antarctica.',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 30,
        category: 'Small',
        plantName: 'American Robin',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageURL: 'assets/images/plant-nine.png',
        isFavorated: false,
        decription:
            'The American Robin (Turdus migratorius) is a well-known and widespread bird species native to North America.'
            'American Robins are highly adaptable and can be found in a variety of habitats.',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 24,
        category: 'large',
        plantName: 'Swan',
        size: 'Large',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageURL: 'assets/images/plant-four.png',
        isFavorated: true,
        decription:
            'Swans are graceful waterfowl known for their elegant appearance and gentle demeanor.'
            'Swans are characterized by their long necks, slender bills, and distinctive S-shaped neck posture..',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 24,
        category: 'Large',
        plantName: 'Ostrich',
        size: 'Medium',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageURL: 'assets/images/plant-five.png',
        isFavorated: false,
        decription:
            'The ostrich (Struthio camelus) is a large flightless bird native to Africa, '
            'known for its remarkable size, speed, and distinct appearance..',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 19,
        category: 'large',
        plantName: 'crane',
        size: 'large',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageURL: 'assets/images/plant-six.png',
        isFavorated: false,
        decription:
            'Cranes are large and elegant birds known for their long legs and necks.'
            'hese birds are often associated with wetland habitats.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 23,
        category: 'small',
        plantName: 'Owl',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageURL: 'assets/images/plant-seven.png',
        isFavorated: false,
        decription:
            'Owls are nocturnal birds of prey known for their distinctive appearance, '
            ' keen hunting skills, and silent flight.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 46,
        category: 'small',
        plantName: 'Song Sparrow',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/plant-eight.png',
        isFavorated: false,
        decription:
            'The Song Sparrow (Melospiza melodia) is a small passerine bird '
            'known for its melodious song and widespread distribution across North America. .',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> travelList = Plant.plantList;
    return travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants() {
    List<Plant> selectedPlants = Plant.plantList;
    return selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
