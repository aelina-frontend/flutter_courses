class WhatsappData {
  final String avatarImage;
  final String nickName;
  final String lastVisit;
  final String lastMessage;

  WhatsappData(
      {required this.avatarImage,
      required this.nickName,
      required this.lastVisit,
      required this.lastMessage});
}

List<WhatsappData> data = [
  WhatsappData(
      avatarImage: 'assets/woman4.jpg',
      nickName: 'Meerim Kalybaeva',
      lastVisit: '06/11/2024',
      lastMessage: 'Вот это сложный день был!'),
  WhatsappData(
      avatarImage: 'assets/man1.jpg',
      nickName: 'Pavel Volya',
      lastVisit: '03/11/2024',
      lastMessage: 'Во сколько придете на комеди клаб?'),
  WhatsappData(
      avatarImage: 'assets/woman2.jpg',
      nickName: 'Li Fen',
      lastVisit: '04/11/2024',
      lastMessage: '您需要选择一个更精确的产品名称?'),
  WhatsappData(
      avatarImage: 'assets/man2.jpg',
      nickName: 'Ali Malikov',
      lastVisit: '29/10/2024',
      lastMessage: 'Ты видел вчера Марвел? Вот это круть'),
  WhatsappData(
      avatarImage: 'assets/woman3.jpg',
      nickName: 'Alisa Samoilova',
      lastVisit: '30/10/2024',
      lastMessage: 'Мне очень нравится путешествовать по миру'),
  WhatsappData(
      avatarImage: 'assets/woman1.jpg',
      nickName: 'Aelina Karymshakova',
      lastVisit: '02/11/2024',
      lastMessage: 'Жизнь прекрасна какой бы она ни была'),
];
