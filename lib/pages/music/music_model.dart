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
      author: "Relaxing Music",
      musicName: "Brain Healing",
      path: 'audio/brainhealing.mp3'),
  MusicModel(
      cover:
          "https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fG11c2ljfGVufDB8fDB8fHww",
      author: "Relaxing Music",
      musicName: "Focus Music",
      path: 'audio/focusmusic.mp3'),
  MusicModel(
      cover:
          "https://images.unsplash.com/photo-1421757350652-9f65a35effc7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fG11c2ljfGVufDB8fDB8fHww",
      author: "Yellow Brick",
      musicName: "Study Music",
      path: 'audio/studymusic.mp3'),
  MusicModel(
      cover:
          "https://images.unsplash.com/photo-1488376739361-ed24c9beb6d0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njh8fG11c2ljfGVufDB8fDB8fHww",
      author: "Deep Breath",
      musicName: "Meditation Music",
      path: 'audio/meditationmusic.mp3'),
];
