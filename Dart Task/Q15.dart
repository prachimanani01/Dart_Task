class Playlist {
  final List<String> _songs = [];
  final List<String> _artists = [];

  void addSong(String song, String artist) {
    if (!_songs.contains(song)) {
      _songs.add(song);
      _artists.add(artist);
    } else {
      print('$song is already in the playlist');
    }
  }
  void removeSong(String song) {
    if (_songs.contains(song)) {
      _songs.remove(song);
      _artists.remove(_artists.last);
    } else {
      print('$song is not in the playlist');
    }
  }
  void play() {
    for (int i = 0; i < _songs.length; i++) {
      print('Now playing: ${_songs[i]} by ${_artists[i]}');
    }
  }
  void shuffle() {
    var random = new Random();
    for (int i = _songs.length - 1; i > 0; i--) {
      int j = random.nextInt(i + 1);
      var temp = _songs[i];
      _songs[i] = _songs[j];
      _songs[j] = temp;

      temp = _artists[i];
      _artists[i] = _artists[j];
      _artists[j] = temp;
    }
  }
  @override
  String toString() {
    String result = 'Playlist:\n';
    _songs.forEach((song) {
      result += '- $song\n';
    });
    return result;
  }
}
void main() {
  Playlist playlist1 = Playlist();
  playlist1.addSong('Bohemian Rhapsody', 'Queen');
  playlist1.addSong('Stairway to Heaven', 'Led Zeppelin');
  playlist1.addSong('Hotel California', 'Eagles');
  print(playlist1);
  playlist1.play();
  playlist1.shuffle();
  print(playlist1);
  playlist1.removeSong('Bohemian Rhapsody');
  print(playlist1);
}