class Post {
  const Post({this.title, this.author, this.imageUrl});
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [Post(title: 'sss', author: 'ddd', imageUrl: 'fff')];
