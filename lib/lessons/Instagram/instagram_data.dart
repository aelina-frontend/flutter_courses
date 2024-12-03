class InstagramData {
  final String avatarImage;
  bool isStories;
  final String nickName;
  final String image;
  bool isLike;
  bool isBook;
  final String text;
  final String comment;
  final String storiesImage;

  InstagramData(
      {required this.avatarImage,
      this.isStories = false,
      required this.nickName,
      required this.image,
      this.isLike = false,
      this.isBook = false,
      required this.text,
      required this.comment,
      required this.storiesImage});

}

List<InstagramData> data = [
  InstagramData(
      avatarImage: 'assets/avatar.jpg',
      nickName: 'Marvel',
      image: 'assets/image1.png',
      text: 'Likes by thekamraan and 905,235 others',
      comment:
          'marvel Start your countdown to the glorious arrival of Marvel Studios #Loki', isStories: true,
  storiesImage: 'assets/woman3.jpg',),

  InstagramData(
      avatarImage: 'assets/avatar.jpg',
      nickName: 'Marvel',
      image: 'assets/image1.png',
      text: 'Likes by thekamraan and 905,235 others',
      comment:
      'marvel Start your countdown to the glorious arrival of Marvel Studios #Loki',
  storiesImage: ''),
  InstagramData(
      avatarImage: 'assets/avatar.jpg',
      nickName: 'Marvel',
      image: 'assets/image1.png',
      text: 'Likes by thekamraan and 905,235 others',
      comment:
      'marvel Start your countdown to the glorious arrival of Marvel Studios #Loki', isStories: true,
      storiesImage: 'assets/woman4.jpg'),
  InstagramData(
      avatarImage: 'assets/avatar.jpg',
      nickName: 'Marvel',
      image: 'assets/image1.png',
      text: 'Likes by thekamraan and 905,235 others',
      comment:
      'marvel Start your countdown to the glorious arrival of Marvel Studios #Loki',
  storiesImage: ''),
];
