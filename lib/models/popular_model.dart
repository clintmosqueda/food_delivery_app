class Popular {
  String imageUrl;
  String title;
  String description;
  String price;
  String rating;

  Popular({
    this.imageUrl,
    this.title,
    this.description,
    this.price,
    this.rating,
  });
}

final List<Popular> populars = [
  Popular(
    imageUrl: 'images/food1.jpg',
    title: 'Roasted Beet Salad',
    description: 'Roasted beets with balsamic vinegar dressing.',
    price: 'Php 150',
    rating: '4.5',
  ),
  Popular(
    imageUrl: 'images/food2.jpg',
    title: 'Sicilian Spaghetti',
    description:
        'Anchovies and parmesan are the key to this garlic breadcrumb-tossed pasta.',
    price: 'Php 170',
    rating: '4',
  ),
  Popular(
    imageUrl: 'images/food3.jpg',
    title: 'Classic Waffles',
    description: 'A lovely, crispy waffle perfect for the morning.',
    price: 'Php 200',
    rating: '4.6',
  ),
  Popular(
    imageUrl: 'images/food1.jpg',
    title: 'Classic Waffles',
    description:
        'Succulent pork roast with fragrant garlic, rosemary and wine.',
    price: 'Php 250',
    rating: '4.3',
  ),
];
