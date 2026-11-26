CREATE DATABASE akilli_geri_donusum;
USE akilli_geri_donusum;
CREATE TABLE Vatandaslar (
    vatandas_id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    eposta VARCHAR(100) UNIQUE,
    telefon VARCHAR(15),
    kayit_tarihi DATE);
    SHOW TABLES;
    CREATE TABLE ToplamaNoktalari (
    nokta_id INT AUTO_INCREMENT PRIMARY KEY,
    nokta_adi VARCHAR(100) NOT NULL,
    adres VARCHAR(200) NOT NULL,
    ilce VARCHAR(50),
    kapasite INT,
    doluluk_orani DECIMAL(5,2),
    aktif_mi BOOLEAN DEFAULT TRUE);
    CREATE TABLE AtikTurleri (
    atik_turu_id INT AUTO_INCREMENT PRIMARY KEY,
    tur_adi VARCHAR(50) NOT NULL UNIQUE,
    puan_degeri DECIMAL(5,2) NOT NULL,
    aciklama VARCHAR(200));
    CREATE TABLE AtikTeslimati (
    teslimat_id INT AUTO_INCREMENT PRIMARY KEY,
    vatandas_id INT NOT NULL,
    nokta_id INT NOT NULL,
    atik_turu_id INT NOT NULL,
    miktar DECIMAL(8,2) NOT NULL,
    kazanilan_puan DECIMAL(8,2) NOT NULL,
    teslimat_tarihi DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (vatandas_id) REFERENCES Vatandaslar(vatandas_id),
    FOREIGN KEY (nokta_id) REFERENCES ToplamaNoktalari(nokta_id),
    FOREIGN KEY (atik_turu_id) REFERENCES AtikTurleri(atik_turu_id));
    CREATE TABLE OdulKatalogu (
    odul_id INT AUTO_INCREMENT PRIMARY KEY,
    odul_adi VARCHAR(100) NOT NULL,
    gerekli_puan INT NOT NULL,
    stok_miktari INT DEFAULT 0,
    aciklama VARCHAR(200),
    aktif_mi BOOLEAN DEFAULT TRUE);
    -- 5. Ödül Kataloğu
CREATE TABLE OdulKatalogu (
    odul_id INT AUTO_INCREMENT PRIMARY KEY,
    odul_adi VARCHAR(100) NOT NULL,
    gerekli_puan INT NOT NULL,
    stok_miktari INT DEFAULT 0,
    aciklama VARCHAR(200),
    aktif_mi BOOLEAN DEFAULT TRUE
);

-- 6. Ödül Talepleri
CREATE TABLE OdulTalepleri (
    talep_id INT AUTO_INCREMENT PRIMARY KEY,
    vatandas_id INT NOT NULL,
    odul_id INT NOT NULL,
    talep_tarihi DATETIME DEFAULT CURRENT_TIMESTAMP,
    durum VARCHAR(30) DEFAULT 'Beklemede',
    FOREIGN KEY (vatandas_id)
        REFERENCES Vatandaslar(vatandas_id),
    FOREIGN KEY (odul_id)
        REFERENCES OdulKatalogu(odul_id)
);

-- 7. Personeller
CREATE TABLE Personeller (
    personel_id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    telefon VARCHAR(15),
    eposta VARCHAR(100) UNIQUE,
    gorev VARCHAR(50) NOT NULL,
    ise_baslama_tarihi DATE
);

-- 8. Toplama Araçları
CREATE TABLE ToplamaAraclari (
    arac_id INT AUTO_INCREMENT PRIMARY KEY,
    plaka VARCHAR(15) NOT NULL UNIQUE,
    arac_modeli VARCHAR(50),
    kapasite DECIMAL(8,2),
    personel_id INT,
    nokta_id INT,
    aktif_mi BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (personel_id)
        REFERENCES Personeller(personel_id),
    FOREIGN KEY (nokta_id)
        REFERENCES ToplamaNoktalari(nokta_id));
        