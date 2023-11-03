Nama proyek : Manajemen Hotel


1. Deksripsi Proyek
     Sistem manajemen hotel ini menggunakan bahasa pemrograman Java yang 
   mencakup    pengembangan aplikasi desktop yang memanfaatkan konsep-   
   konsep PBO untuk         mengelola operasi hotel. Dalam proyek ini, kita    akan membangun aplikasi Java    yang memungkinkan pengguna untuk 
   melakukan reservasi kamar, check-in/check-     out tamu, dan mengelola 
   informasi kamar serta data tamu.

2. Flowchart
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/abc6fd1b-4557-44a1-ac52-ac3e98ec7881)

3. ERD
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/f80494e8-bc1b-4ab1-ad6b-d8413ab78046)

4. Hirarki kelas
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/66c3d43e-a514-4cfb-bf56-a0ddb791e129)

5. Screenshoot codingan beserta penjelasan
   a.) penerapan inheritance (KamarStandard dan KamarSuite)
       ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/abbcec9d-f795-4d0f-96da-d126d32b73fb)
       Dalam kode di atas, terdapat penggunaan konsep inheritance (warisan         atau pewarisan) dalam pemrograman berorientasi objek. Kelas                 KamarStandard dan kelas KamarSuite merupakan turunan dari kelas 
       Kamar. Dengan kata lain, KamarStandard dan kelas KamarSuite adalah   
       kelas anak (subkelas) dari kelas Kamar (kelas induk).
       Pewarisan Atribut:
       Kelas KamarStandard dan kelas KamarSuite mewarisi semua atribut   
       dari kelas Kamar. Dalam hal ini, atribut yang diwarisi adalah 
       atribut-atribut yang didefinisikan di kelas Kamar. Namun, dalam   
       gambar diatas, hanya terlihat atribut kapasitas yang ditambahkan di 
       kelas KamarStandard dan atribut layanan_gratis yang ditambahkan di 
       kelas KamarSuite.

       Pewarisan Metode:
       Selain atribut, kelas anak juga mewarisi metode-metode (termasuk   
       metode-metode public dan protekted) dari kelas induknya (Kamar). 
       Jika ada metode dengan nama yang sama di kelas anak dan kelas induk, 
       metode yang ada di kelas anak akan menggantikan (override) metode 
       yang ada di kelas induk.  

       Dengan menggunakan inheritance, Anda dapat mengorganisasi dan 
       mengelola kode dengan lebih efisien. Selain itu, ini juga 
       memungkinkan untuk mendefinisikan hierarki kelas, di mana kelas anak 
       dapat mewarisi sifat-sifat dan perilaku kelas induknya, namun juga 
       dapat memiliki karakteristik uniknya sendiri.

   b.) Penerapan Encapsulation (Getter dan Setter)
       Penerapannya disemua kelas : Kamar,Reservasi,Transaksi,Tamu,Pegawai
       Metode setter digunakan untuk mengatur nilai dari atribut/variable 
       (mengubah nilai), sedangkan Metode getter digunakan untuk 
       mendapatkan nilai dari atribut/variable (mengakses nilai).
       contoh penerapan getter dan setter di kelas Kamar.
       ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/0af78275-42af-4513-8bf7-cded8004a10e)

   c.) Penerapan Ploymorphism (Overriding dan Overloading)
       Overriding dikelas KamarStandar & KamarSuite
       Overloading saat memanggil kelas Reservasi, (ada constructor 
       overloading), terus ada di fungsi find (ada yang 1 parameter dan ada 
       yang 2 parameter di kelas kamar);
       Override (Kamar Standard)
       ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/800b32a2-807a-4c4a-aec3-92cb8c2ef49f)

       Overloading (Reservasi)
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/e12f13e5-4a2f-4fda-a4dc-9514c1e6d93b)
Metode Konstruktor Overloading Pertama:
Metode ini menerima satu parameter tamu dari tipe data Tamu.
Saat objek Reservasi dibuat dengan konstruktor ini, objek tamu akan diinisialisasi dengan nilai yang diberikan, objek kamar akan diinisialisasi sebagai objek baru dari kelas Kamar, dan objek dateFormat akan diinisialisasi dengan pola tanggal "yyyy/MM/dd".

Metode Konstruktor Overloading Kedua:
Metode ini menerima dua parameter, yaitu tamu dari tipe data Tamu dan kamar dari tipe data Kamar.
Saat objek Reservasi dibuat dengan konstruktor ini, objek tamu akan diinisialisasi dengan nilai yang diberikan, objek kamar akan diinisialisasi dengan nilai yang diberikan, dan objek dateFormat akan diinisialisasi dengan pola tanggal "yyyy/MM/dd".

d.) Penerapan Abstraction (interface)
Penerapan interface ada di kelas TemplatesCRUD.java
Interface dalam pemrograman adalah kontrak yang mendefinisikan metode-metode yang harus diimplementasikan oleh kelas-kelas lain. Pada program ini interface TemplateCRUD ini akan mendefinisikan beberapa metode yang berkaitan dengan operasi dasar CRUD (Create, Read, Update, Delete) pada suatu entitas yang memiliki tipe data boolean. 
create(): Metode ini digunakan untuk membuat entitas baru. 
update(): Metode ini digunakan untuk memperbarui entitas yang sudah ada. 
delete(): Metode ini digunakan untuk menghapus entitas. 
find(int id): Metode ini digunakan untuk mencari entitas berdasarkan ID atau kunci unik lainnya. 
Tipe data boolean hanya memiliki 2 nilai true dan false. Metode ini mengembalikan nilai true apabila entitas berhasil dibuat, diperbarui, dihapus dan mengembalikan nilai false jika gagal.
![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/053dc9d4-0b3b-4f5e-90bb-8d7a54d095f8)

e.)	Penerapan property atau method yang bersifat static
Penerapannya di kelas Pegawai, ada 2 static (idUserLogin dan namaUserLogin)
 ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/3b76f319-42b4-4020-8d7c-0fb7c458f9bf)


6. Screenshoot Output
   a.) Login
       Jika sudah memiliki akun maka pegawai bisa langsung login dengan menginputkan id dan nama, namun jika belum maka pegawai harus register terlebih dahulu.
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/3f55cbef-3944-472e-bb48-d8b4d4aa135d)

   b.) register
       Jika belum memiliki akun maka terlebih dahulu harus melakukan registrasi dengan menginputkan nama, jabatan, no telepon dan alamat, lalu kemudian klik daftar.
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/1c284c28-fc61-46e8-bfa5-2e8021124151)

   Jika berhasil Login maka akan menampilkan menu- menu berikut:
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/30546af5-79ab-4876-b812-e52444c49834)

   c.) Menu Reservasi Kamar
       Jika memilih menu reservasi kamar maka tampilannya akan seperti ini. Dimana jika ingin melakukan reservasi maka pegawai akan menginputkan nama tamu, alamat, nomor telepon. Kemudian memilih lantai, tipe kamar dan no kamar yang akan di tempati oleh tamu tersebut. Kemudian jika kita klik check in maka datanya akan tersimpan di tabel data yang ada di reservasi kamar. Jika memilih check out maka data nya akan tersimpan di riwayat transaksi.
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/6a18616d-12d6-42bd-b653-83fe4d6d25db)

   d.) Menu Manajemen Kamar
       Jika pegawai memilih menu manajemen kamar maka tampilannya akan seperti gambar dibawah ini. Dimana pada menu manajemen kamar ini kita dapat menambah kamar, mengubah kamar, menghapus kamar dan melihat data kamar.
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/72ff8ed9-c662-405b-86fb-c25a2335ef5a)

   e.) Menu Riwayat Transaksi
       Jika memilih menu riwayat transaksi maka kita dapat melihat riwayat transaksi tamu yang telah melakukan reservasi kamar dan telah check out dari hotel. Kemudian pegawai juga dapat menghapus riwayat transaksi tersebut.
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/48f3e152-a7aa-4df7-9ad3-d355d424a9ef)

   f.) Keluar Akun
       Jika memilih keluar akun maka pegawai akan kembali kemenu awal yaitu menu login.
   ![image](https://github.com/Syahria/Proyek-Akhir-PBO/assets/127468222/fdece6ed-f46a-4982-9dca-9e7a60611c19)



   
   

 

   








   



       
       





   


       



   


