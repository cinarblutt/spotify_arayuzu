import 'package:flutter/material.dart'; // Flutter'ın Material Design kütüphanesi

void main() {
  runApp(MyApp()); // Uygulamanın başlangıç noktası
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlackScreen(),
    ); // Sağ üstte çıkan debug banner'ını gizler
  }
}

// Siyah arka planlı ekran
class BlackScreen extends StatelessWidget {
  // Widget oluşturulurken çalışır
  BlackScreen({super.key}); // key sistemi için super.key geçilir

  @override
  Widget build(BuildContext context) {
    // widget'ın ekranda nasıl görüneceğini belirler.
    return Scaffold(
      backgroundColor: Colors.black, // Arka plan rengi siyah

      body: SingleChildScrollView(
        // Ekranı kaydırılabilir yapar
        padding: EdgeInsets.all(16.0), // Kenarlardan boşluk verir
        child: Column(
          // Dikey olarak widgetları sıralar
          crossAxisAlignment: CrossAxisAlignment.start, // Widgetları sola yasla

          children: [
            // Üst kısımda profil ve filtre butonları
            Row(
              children: [
                // Profil ikonu
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Yuvarlak profil
                  ),
                  child: Center(
                    child: Icon(
                      Icons.account_circle,
                      color: Color.fromARGB(255, 251, 251, 251),
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(width: 10),

                // Tümü butonu - tıklanabilir
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 80,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 255, 64),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Tümü',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                // Müzik butonu - tıklanabilir
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 80,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 70, 74, 71),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Müzik',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),

                // Podcast'ler butonu - tıklanabilir
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 90,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 70, 74, 71),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Podcast'ler",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30), // Filtrelerden sonra boşluk
            // Kategori kartları - 2li şekilde sıralanıyor
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 40, 40),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 52, 0, 157),
                                Color.fromARGB(255, 142, 107, 212),
                                Color.fromARGB(255, 255, 255, 255),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Beğenilen Şarkılar  ",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 10),
                // Klasik Şarkılar kutusu
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 40, 40),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 125, 118, 117),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Klasik Şarkılar",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                //  Aynı yapıdaki diğer satırlar da burada devam ediyor
                // "TSK Marşları", "Klasik Müzikler", "Ceza Şarkıları", vs. gibi
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 40, 40),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 125, 118, 117),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "TSK Marşları",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 40, 40),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 125, 118, 117),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "TSK Marşları",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 10), // 2. ve 3. kutular aynı mantıkta
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 40, 40),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 125, 118, 117),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Ceza Şarkıları",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 40, 40),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 125, 118, 117),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Sagopa Şarkıları",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween, //İlk elemanı başa, son elemanı sona koyar, geri kalanları aralarındaki boşluğa eşit olarak dağıtır.
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 40, 40),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 125, 118, 117),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Massaka Şarkıları",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 220,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 40, 40, 40),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 1),
                        Container(
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 125, 118, 117),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Killa Hakan Şarkıları",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),

            SizedBox(height: 30),
            Text(
              // Yeni çıkanlar,senin için başlığı
              "Yeni çıkanlar,senin için",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 0.50),
            SizedBox(height: 20),
            // Albüm kartları - 3lü
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 50, 50, 50),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Sırtlan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 0.01),
                    SizedBox(height: 1),
                    Text(
                      "Sagopa Kajmer",
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 79, 79),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 50, 50, 50),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Zor Değil",
                      style: TextStyle(
                        color: Color.fromARGB(255, 240, 240, 240),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "Ben Fero ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 79, 79),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ), // 2. ve 3. albüm kartları aynı mantıkta

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 50, 50, 50),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Elmas",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Emir Can İğrek",
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 79, 79),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 40),
            Text(
              // Beğendiğin şarkılar içeren albümler başlığı
              'Beğendiğin şarkılar içeren albümler',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 50, 50, 50),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    // Albüm kartları - 3lü
                    SizedBox(height: 10),
                    Text(
                      "Cehennemin Dibi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "Massaka",
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 79, 79),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 50, 50, 50),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hayat",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "Tekmill",
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 79, 79),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // 2. ve 3. albüm kartları aynı mantıkta
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 50, 50, 50),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Escobar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      "Killa hakan",
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 79, 79),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // Alt navigasyon barı
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0), // Siyah arka plan
        selectedItemColor: Colors.white, // Seçilen öğe rengi
        unselectedItemColor: Colors.grey, // Seçilmemiş öğeler gri
        type: BottomNavigationBarType.fixed, // Sabit menü
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Ara'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Kitaplık',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Oluştur'),
        ],
      ),
    );
  }
}
