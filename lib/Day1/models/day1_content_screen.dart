class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent({required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: 'Quality Food',
    image: 'assets/images/food.png',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum ligula in quam placerat venenatis. Pellentesque porttitor, dui vel sagittis accumsan, magna risus imperdiet sem, vitae sagittis tortor augue et ante. Integer tempor elit non feugiat consectetur. Phasellus molestie suscipit quam in suscipit. Suspendisse nisi justo, fringilla a venenatis ut, finibus sed leo. Etiam efficitur lacus vel malesuada commodo. Aliquam interdum massa accumsan felis luctus efficitur.",
  ),
  OnboardingContent(
    title: 'Fast Delivery',
    image: 'assets/images/delivery.png',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum ligula in quam placerat venenatis. Pellentesque porttitor, dui vel sagittis accumsan, magna risus imperdiet sem, vitae sagittis tortor augue et ante. Integer tempor elit non feugiat consectetur. Phasellus molestie suscipit quam in suscipit. Suspendisse nisi justo, fringilla a venenatis ut, finibus sed leo. Etiam efficitur lacus vel malesuada commodo. Aliquam interdum massa accumsan felis luctus efficitur.",
  ),
  OnboardingContent(
    title: 'Reward Surprises',
    image: 'assets/images/reward.webp',
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam elementum ligula in quam placerat venenatis. Pellentesque porttitor, dui vel sagittis accumsan, magna risus imperdiet sem, vitae sagittis tortor augue et ante. Integer tempor elit non feugiat consectetur. Phasellus molestie suscipit quam in suscipit. Suspendisse nisi justo, fringilla a venenatis ut, finibus sed leo. Etiam efficitur lacus vel malesuada commodo. Aliquam interdum massa accumsan felis luctus efficitur.",
  ),

];
