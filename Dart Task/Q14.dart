class Movie {
  String title;
  String director;
  List<String> actors;
  Movie(this.title, this.director, this.actors);
  void addActor(String actor) {
    actors.add(actor);
  }
  void removeActor(String actor) {
    actors.remove(actor);
  }
  @override
  String toString() {
    String result = 'Title: $title\n';
    result += 'Director: $director\n';
    result += 'Actors:\n';
    actors.forEach((actor) {
      result += '- $actor\n';
    });
    return result;
  }
}