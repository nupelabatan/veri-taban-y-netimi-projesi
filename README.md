# Veritabanı Yönetimi Projesi – Akıllı Geri Dönüşüm ve Atık Yönetimi Sistemi
Sürdürülebilir atık yönetimi, vatandaş puan teşvik sistemi ve toplama noktaları takibi için geliştirilmiş veri tabanı projesidir
Bu proje, şehir genelindeki geri dönüşüm süreçlerini otomatize etmek, vatandaşların atık teslimatlarını puan tabanlı bir ödül sistemiyle teşvik etmek ve toplama noktalarının doluluk/operasyon durumlarını takip etmek amacıyla tasarlanmış bir veritabanı yönetim sistemidir.

## Projenin Amacı
- Vatandaşların geri dönüşüme katılımını artırmak için puan ve ödül mekanizması sunmak
- Atık türlerine göre puan hesaplamalarını veritabanı seviyesinde hesaplamak
- Toplama noktaları, sahadaki personeller ve araçların takibini sağlamak

## Veritabanı Tabloları
1. **Vatandaslar:** Sisteme kayıtlı kullanıcı bilgileri ve güncel puan bakiyeleri
2. **ToplamaNoktalari:** Şehirdeki konteyner ve toplama merkezlerinin konum ve durum bilgileri
3. **AtikTurleri:** Plastik, cam, kağıt, pil gibi atık kategorileri ve kg/puan katsayıları
4. **AtikTeslimati:** Vatandaşların yaptığı atık teslimatları ve kazanılan puan kayıtları
5. **OdulKatalogu:** Puanlarla alınabilecek hediye/indirim kuponlarının listesi
6. **OdulTalepleri:** Vatandaşların puan harcayarak oluşturduğu ödül siparişleri
7. **Personeller:** Toplama noktalarında görevli saha personel bilgileri
8. **ToplamaAraclari:** Atıkları toplayan araçların ve sorumlu personellerin kaydı
 Kullanılan Teknolojiler

- MySQL
- MySQL Workbench

5. Gerçekleştirilen Çalışmalar

- Veritabanı oluşturdum.
- 8 temel veritabanı tablosu hazırlayıp SQL kodlarını yükledim.
- Tablolar arasında birincil anahtar (Primary Key) yapıları oluşturdum.
- İlgili tablolar arasında yabancı anahtar (Foreign Key) bağlantıları kurdum.
- Veritabanı oluşturma kodları "schema.sql" dosyasına kaydedip yükledim.
- 
Projenin Aşamaları

Projenin devamında aşağıdaki çalışmaların gerçekleştirilmesi planlıyorum.

- Örnek verilerin veritabanına eklenmesi.
- Veri ekleme, silme, güncelleme ve listeleme sorgularının hazırlanması.
- İlişkili tablolar üzerinde JOIN sorgularının oluşturulması.
- Trigger yapılarının geliştirilmesi.
- ER diyagramının hazırlanması.
- Veritabanının test edilmesi.

7. Proje Durumu

Projenin veritabanı oluşturma ve temel tablo tasarımı aşaması tamamladım.
