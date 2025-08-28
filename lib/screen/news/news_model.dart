// class NewsModel {
//   String status;
//   String sources;
//
//
// }

class Sources {
  String id;
  String name;
  String description;
  Uri url;
  String category;
  String language;
  String country;

  Sources(
    this.id,
    this.name,
    this.description,
    this.url,
    this.category,
    this.language,
    this.country,
  );
  // factory Sources
}

///
/// {
// "status": "ok",
// -"sources":
// [
// -{
// "id": "abc-news",
// "name": "ABC News",
// "description": "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
// "url": "https://abcnews.go.com",
// "category": "general",
// "language": "en",
// "country": "us"
// },
// }
// ]
// }
