// 1. คลาสแม่ (BASE CLASS)
abstract class FeedItem {
  String author;
  int likes;

  FeedItem(this.author, this.likes);

  // เมธอดนามธรรม
  void renderWidget();
}

// 2. คลาสลูก
class TextPost extends FeedItem {
  String textContent;

  TextPost(String author, int likes, this.textContent)
      : super(author, likes);

  @override
  void renderWidget() {
    print("📝 โพสต์ข้อความ โดย $author");
    print("   \"$textContent\"");
    print("   ❤️ $likes ถูกใจ\n");
  }
}

// 3. คลาส ImagePost
class ImagePost extends FeedItem {
  String imageUrl;

  // TODO 1: Constructor
  ImagePost(String author, int likes, this.imageUrl)
      : super(author, likes);

  // TODO 2: Override renderWidget()
  @override
  void renderWidget() {
    print("📷 โพสต์รูปภาพ โดย $author");
    print("   รูปภาพ: $imageUrl");
    print("   ❤️ $likes ถูกใจ\n");
  }
}

void main() {
  // List ของ FeedItem
  List<FeedItem> myAppFeed = [
    TextPost("Student123", 45, "อ่านหนังสือสอบ OOP ที่ห้องสมุด ม.นเรศวร!"),
    TextPost("Ajarn", 120, "อย่าลืมส่งงานออกแบบหน้าจอ Flutter นะครับ"),

    // TODO 3
    ImagePost("MaMui_Cycling", 200,
        "https://example.com/morning_ride.jpg"),
  ];

  print("=== กำลังสร้างฟีดแอปพลิเคชัน ===\n");

  // Polymorphism
  for (var item in myAppFeed) {
    item.renderWidget();
  }
}