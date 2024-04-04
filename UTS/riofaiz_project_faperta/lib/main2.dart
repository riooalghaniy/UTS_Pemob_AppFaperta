import 'package:flutter/material.dart';
import 'our_profil.dart';
import 'prodi_detail.dart';
import 'prodi.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas Pertanian UPN "Veteran" Jawa Timur',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Fungsi untuk menangani ketika pengguna mengklik email
  void launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'faperta@upnjatim.ac.id', // Alamat email Faperta
    );
    final String emailUrl = params.toString();

    if (await canLaunch(emailUrl)) {
      await launch(emailUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo_faperta.png',
          width: 215,
          height: 100,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileFakultas(),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: ProgramStudi.programStudis.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProdiDetail(
                          programStudi: ProgramStudi.programStudis[index],
                        ),
                      ),
                    );
                  },
                  child: CardProdi(
                    programStudi: ProgramStudi.programStudis[index],
                  ),
                );
              },
            ),
            // Kotak Email
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: launchEmail, // Panggil fungsi launchEmail ketika diklik
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Pusatkan item dalam row
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'faperta@upnjatim.ac.id',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tentang Kami',
          ),
        ],
        onTap: (int index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OurProfile(),
              ),
            );
          }
        },
      ),
    );
  }
}

class CardProdi extends StatelessWidget {
  final ProgramStudi programStudi;

  const CardProdi({Key? key, required this.programStudi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image(image: AssetImage(programStudi.imageUrl)),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              programStudi.nama,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              programStudi.deskripsi,
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProdiDetail(
                      programStudi: programStudi,
                    ),
                  ),
                );
              },
              child: Text(
                'Lihat selengkapnya',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileFakultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Image.asset(
            'assets/faperta_banner.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover, // to make the image full width
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tentang Fakultas Pertanian',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Fakultas Pertanian saat ini memiliki 2 program studi jenjang S-1, yaitu Agroteknologi dan Agribisnis, 2 program studi jenjang S-2 yaitu Magister Agribisnis dan Magister Agroteknologi, serta satu program studi S-3 yaitu program Doktor Agribisnis. Tahun 2015 sudah diusulkan ke Kementerian Riset Teknologi dan Pendidikan Tinggi untuk program Master (S2) Agroteknologi dan program Doktor (S3) Ilmu Pertanian. Berkat kerja keras dalam menjaga kualitas SDM, proses manajemen dan lulusannya, program studi S-1 mendapatkan akreditasi A / unggul. Program studi S-2 Agribisnis mendapatkan akreditasi A / unggul, S-2 Agroteknologi dan S-3 Agribisnis mendapatkan akreditasi baik dari BANPT-DIKTI.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'VISI',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Terwujudnya fakultas yang unggul dalam pengembangan IPTEKS pertanian dan kewirausahaan, berjejaring global serta berkarakter bela negara',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'MISI',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  '2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  '3. Menyelenggarakan pengabdian kepada masyarakat melalui penerapan teknologi tepat guna berbasis kearifan lokal',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  '4. Menyelenggarakan tata kelola Fakultas yang baik dan bersih',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  '5. Mengembangkan kualitas sumber daya manusia berkarakter bela negara',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di tingkat Fakultas',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  '7. Meningkatkan kerjasama institusional dalam dan luar negeri melalui keunggulan Litdimas',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Program Studi',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
