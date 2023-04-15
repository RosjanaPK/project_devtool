
CREATE TABLE form (
    id int NOT NULL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    no_faculty int NOT NULL
);



INSERT INTO form(id, title, no_faculty) VALUES (1,'แบบฟอร์มสมัครเข้าร่วมรายวิชาสหกิจศึกษา ภาคเรียนที่ 1/2566',1),(2,'แบบฟอร์มการสมัครเข้าร่วมรายวิชาสหกิจศึกษา ภาคเรียนที่ 2/2566',2),(3,'แบบฟอร์มการเข้าร่วมโครงการสหกิจศึกษาของทางคณะวิทยาศาตร์',3);



CREATE TABLE lecturers (
    id int NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    office VARCHAR(255) NOT NULL,
    img varchar(255) NOT NULL
);



INSERT INTO lecturers(id, name, email, office, img) VALUES (1,' ผู้ช่วยศาสตราจารย์ ดร.โอฬาร วงศ์วิรัตน์','olarn@it.kmitl.ac.th','632','Olarn.jpg'),(2,'รองศาสตราจารย์ ดร.วรพจน์ กรีสุระเดช','worapoj@it.kmitl.ac.th','630','Worapoj.jpg'),(3,'ผู้ช่วยศาสตราจารย์ ศรีนวล นลินทิพยวงศ์','srinual@it.kmitl.ac.th','612','Srinual.jpg'),(4,' รองศาสตราจารย์ ดร.พรฤดี เนติโสภากุล','ponrudee@it.kmitl.ac.th','608','Ponrudee.jpg'),(5,'ผู้ช่วยศาสตราจารย์ ดร.สุเมธ ประภาวัต','sumet@it.kmitl.ac.th','534','Sumet.jpg'),(6,'ผู้ช่วยศาสตราจารย์ ดร.อนันตพัฒน์ อนันตชัย','anuntapat@it.kmitl.ac.th','520','Anuntapat.jpg'),(7,'ผู้ช่วยศาสตราจารย์ ดร.บุญประเสริฐ สุรักษ์รัตนสกุล','boonprasert@it.kmitl.ac.th','522','Boonprasert.jpg'),(8,'ผู้ช่วยศาสตราจารย์ ดร.ลภัส ประดิษฐ์ทัศนีย์','lapas@it.kmitl.ac.th','525','Lapas.jpg'),(9,'ดร.สุพัณณดา โชติพันธ์','supannada@it.kmitl.ac.th','607','Supannada.jpg'),(10,'อาจารย์วารุนี บัววิรัตน์','warune@it.kmitl.ac.th','628','Warune.jpg'),(11,'รองศาสตราจารย์ ดร.กิติ์สุชาต พสุภา','kitsuchart@it.kmitl.ac.th','510-9','Kitsuchart.jpg'),(12,'ผู้ช่วยศาสตราจารย์ ดร.สุภกิจ นุตยะสกุล','supakit@it.kmitl.ac.th','510-8','Supakit.jpg'),(13,'รองศาสตราจารย์ ดร.ธีรพงศ์ ลีลานุภาพ','teerapong@it.kmitl.ac.th','510-1','Teerapong.jpg'),(14,'ผู้ช่วยศาสตราจารย์ ดร.กนกวรรณ อัจฉริยะชาญวนิช','kanokwan@it.kmitl.ac.th','510-7','Kanokwan.jpg'),(15,'ผู้ช่วยศาสตราจารย์ ดร.บัณฑิต ฐานะโสภณ','bundit@it.kmitl.ac.th','629','Bundit.jpg'),(16,'ดร.พรสุรีย์ แจ่มศรี','pornsuree@it.kmitl.ac.th','510-6','Pornsuree.jpg'),(17,'ดร.พัฒนพงษ์ ฉันทมิตรโอภาส','pattanapong@it.kmitl.ac.th','610','Pattanapong.jpg'),(18,'ดร.นนท์ คนึงสุขเกษม','nont@it.kmitl.ac.th','614','Nont.jpg'),(19,'ดร.ประพันธ์ ปวรางกูร','praphan@it.kmitl.ac.th','614','Praphan.jpg'),(20,'ดร.ศิรสิทธิ์ โล่ห์ชนะจิต','sirasit@it.kmitl.ac.th','614','Sirasit.jpg'),(21,' รศ.ดร. โชติพัชร์ ภรณวลัย','chotipat@it.kmitl.ac.th','624','Chotipat.jpg');


