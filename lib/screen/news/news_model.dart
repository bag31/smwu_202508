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
//     "status": "ok",
//     "totalResults": 46327,
//     "articles": [
//         {
//             "source": {    // source 생략 ====================
//                 "id": null,
//                 "name": "Droidsans.com"
//             },
//             "author": "O.T.K.",
//             "title": "Google Translate เปิดตัว 2 ฟีเจอร์ใหม่ ใช้ AI แปลสดกว่า 70 ภาษา และโหมดฝึกภาษาแบบส่วนตัว ฟังและพูดได้ด้วยตัวเอง",
//             "description": "Google Translate หรือ Google แปลภาษา ที่หลายๆ คนน่าจะใช้บริการบ่อยๆ พัฒนาไปอีกขั้น ด้วยการนำเทคโนโลยี AI มาช่วยให้การสื่อสารข้ามภาษาง่ายขึ้น ด้วยการเพิ่ม 2 ฟีเจอร์ใหม่ คือดึง AI มาช่วยในการแปลสด แล้วยังมีฟีเจอร์เรียนภาษาแบบส่วนตัว ที่ตอบโจทย์เฉพาะผู้เรียนนั้นๆ",
//             "url": "https://droidsans.com/google-translate-two-new-features/",
//             "urlToImage": "https://images.droidsans.com/wp-content/uploads/2025/08/Google-Translate.png",
//             "publishedAt": "2025-08-27T05:36:59Z",
//             "content": "Google Translate Google AI 2 AI \r\n<ol><li> (Live Translation)</li><li> (Language Practice)</li></ol>\r\n Google Translate - 70 \r\n Translate ( Android iOS) Live translate \r\nGoogle Translate Google Pract… [+72 chars]"
//         },
//         {
//             "source": {
//                 "id": null,
//                 "name": "ETF Daily News"
//             },
//             "author": "MarketBeat News",
//             "title": "William Blair Initiates Coverage on Figma (NYSE:FIG)",
//             "description": "Analysts at William Blair started coverage on shares of Figma (NYSE:FIG – Get Free Report) in a research report issued on Monday, MarketBeat Ratings reports. The brokerage set an “outperform” rating on the stock. Several other equities research analysts have …",
//             "url": "https://www.etfdailynews.com/2025/08/27/william-blair-initiates-coverage-on-figma-nysefig/",
//             "urlToImage": "https://www.americanbankingnews.com/wp-content/timthumb/timthumb.php?src=https://www.marketbeat.com/logos/figma-inc-logo-1200x675.png?v=20250804083808&w=240&h=240&zc=2",
//             "publishedAt": "2025-08-27T05:44:50Z",
//             "content": "Analysts at William Blair started coverage on shares of Figma (NYSE:FIG – Get Free Report) in a research report issued on Monday, MarketBeat Ratings reports. The brokerage set an “outperform” rating … [+2995 chars]"
//         },
