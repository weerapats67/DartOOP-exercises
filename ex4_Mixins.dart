// 1. มิกซ์อิน (THE MIXIN)
mixin CloudLogger {
  void logToCloud(String message) {
    print("☁️ [Cloud Log]: $message");
  }
}

// 2. คลาสแบบเจเนอริกส์ (THE GENERIC CLASS)
class AppDataCache<T> with CloudLogger {
  T? cachedData;

  // TODO 1
  void saveData(T newData) {
    cachedData = newData;
    logToCloud("บันทึกข้อมูลแล้ว: $cachedData");
  }

  // TODO 2
  void clearData() {
    cachedData = null;
    logToCloud("ล้างข้อมูลในแคชแล้ว");
  }
}

void main() {
  print("=== กำลังแคชข้อมูลแบบสตริง (User Token) ===\n");

  // String
  AppDataCache<String> tokenCache = AppDataCache<String>();

  // TODO 3
  tokenCache.saveData("ABC-123");

  // TODO 4
  tokenCache.clearData();

  print("\n=== กำลังแคชข้อมูลแบบตัวเลข (High Score) ===\n");

  // TODO 5
  AppDataCache<int> scoreCache = AppDataCache<int>();

  // TODO 6
  scoreCache.saveData(9999);
}
