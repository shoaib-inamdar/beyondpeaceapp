class MusicModel {
  final String musicName;
  final String author;
  final String cover;
  final String path;

  MusicModel(
      {required this.cover,
      required this.author,
      required this.musicName,
      required this.path});
}

List<MusicModel> musics = [
  MusicModel(
      cover:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fG11c2ljfGVufDB8fDB8fHww",
      author: "Konsta",
      musicName: "O'zbekistonlik",
      path: 'audio/song1.mp3'),
  MusicModel(
      cover:
          "https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fG11c2ljfGVufDB8fDB8fHww",
      author: "Konsta & Timur Alixanov",
      musicName: "Odamlar nima deydi?",
      path: 'audio/song2.mp3'),
  MusicModel(
      cover:
          "https://images.unsplash.com/photo-1421757350652-9f65a35effc7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fG11c2ljfGVufDB8fDB8fHww",
      author: "Jon Caryl ",
      musicName: "Alone",
      path: 'audio/song3.mp3'),
  MusicModel(
      cover:
          "https://images.unsplash.com/photo-1488376739361-ed24c9beb6d0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njh8fG11c2ljfGVufDB8fDB8fHww",
      author: "Konsta && Shokir ",
      musicName: "Poyga",
      path: 'audio/song4.mp3'),
];
