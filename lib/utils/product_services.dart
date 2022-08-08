class Card {
  String? title;
  String? description;
  String? image;

  Card({this.title, this.description, this.image});
}

List<Card> cards = [
  Card(
      title: "Web & mobile Development",
      image:
          "https://images.unsplash.com/photo-1547658719-da2b51169166?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
      description:
          "Grow your business and engage with your clients on the internet. Let your product & services reach them on large and small screens"),
  Card(
      title: "Internet of things",
      image:
          "https://images.unsplash.com/photo-1562408590-e32931084e23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
      description:
          "Scale and monitor your business assets, using new internet technology that makes eases management of products, goods while ensuring security."),
  Card(
      title: "Project Management",
      image:
          "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
      description:
          "Providing assistance starting internet services for your business, while strategizing your next steps to help you grow."),
  Card(
      title: "Artificial Intelligence",
      image:
          "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
      description:
          "Automate, leverage and learn from your data. Explore your business numbers and progress in ways that save your time, energy and finances.")
];
