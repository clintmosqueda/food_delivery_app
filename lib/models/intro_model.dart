class Intro {
  String imageUrl;
  String text;

  Intro({
    this.imageUrl,
    this.text,
  });
}

final List<Intro> intros = [
  Intro(
    imageUrl: 'images/food1.jpg',
    text: 'Choose your favorite dishes from the nearest restaurant or cafe',
  ),
  Intro(
    imageUrl: 'images/food2.jpg',
    text: 'Taste fresh delicious meals anytime and anywhere',
  ),
  Intro(
    imageUrl: 'images/food3.jpg',
    text: 'We also deliver food and drinks from the nearest supermarket',
  ),
];
