// หมายเหตุ: ในแอป Flutter จริง คลาสนี้จะแยกอยู่ในไฟล์ (library) ของมันเอง
// การใช้ขีดล่าง (_) ในภาษา Dart จะช่วยซ่อนตัวแปรจากไฟล์อื่น ๆ

class UserProfile {
  String username;

  // private variables
  String _password = "";
  int _age = 0;

  UserProfile(this.username);

  // Setter ของ password
  set password(String newPassword) {
    if (newPassword.length < 6) {
      print("❌ ข้อผิดพลาด: รหัสผ่านต้องมีความยาวอย่างน้อย 6 ตัวอักษร");
    } else {
      _password = newPassword;
      print("✅ อัปเดตรหัสผ่านเรียบร้อยแล้ว");
    }
  }

  // TODO 1: Getter สำหรับ age
  int get age => _age;

  // TODO 2: Setter สำหรับ age
  set age(int myAge) {
    if (myAge < 13) {
      print("❌ ข้อผิดพลาด: ต้องอายุ 13 ปีขึ้นไปจึงจะใช้งานแอปได้");
    } else if (myAge > 120) {
      print("❌ ข้อผิดพลาด: อายุไม่ถูกต้อง");
    } else {
      this._age = myAge;
      print("✅ บันทึกอายุแล้ว");
    }
  }
}

void main() {
  var myProfile = UserProfile("nu_student_26");

  print("=== ทดสอบ ENCAPSULATION ของรหัสผ่าน ===\n");

  myProfile.password = "123";
  myProfile.password = "secureFlutterPass99";

  print("\n=== ทดสอบ ENCAPSULATION ของอายุ ===\n");

  // TODO 3
  myProfile.age = 10;

  // TODO 4
  myProfile.age = 20;

  // TODO 5
  print("อายุของผู้ใช้คือ ${myProfile.age} ปี");
}