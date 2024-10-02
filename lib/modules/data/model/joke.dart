
class Joke {
  String? id;
  String? joke;
  int? status;

  Joke({this.id, this.joke, this.status});

  Joke.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    joke = json['joke'];
    status = json['status'];
  }
  
}