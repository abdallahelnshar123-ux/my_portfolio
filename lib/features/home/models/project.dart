class Project {
  final String name;
  final String description;
  final String image;
  final String? github;
  final String? googlePlay;
  final String? appStore;
  final String? pubDev;

  const Project({
    required this.name,
    required this.description,
    required this.image,
    this.github,
    this.appStore,
    this.googlePlay,
    this.pubDev,
  });
}
