import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OurProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(
              255, 255, 203, 71), // Mengatur latar belakang menjadi kuning
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/profil_banner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/profil_kami.png'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Group 2',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '@riofaiz_1222',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Informasi Kami:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kami merupakan Mahasiswa UPN "Veteran" Jawa Timur Semester 4, Fakultas Ilmu Komputer, Program Studi Sistem Informasi. Project kali ini kami membuat Aplikasi Mobile Fakultas Pertanian UPN "Veteran" Jawa Timur yang berguna untuk memenuhi project UTS kami.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Profil Rio :',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Mengatur latar belakang profil menjadi putih
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileItem(
                              title: 'Nama', value: 'Rio Alghaniy Putra'),
                          ProfileItem(
                              title: 'TTL', value: 'Sidoarjo, 25 April 2004'),
                          ProfileItem(
                              title: 'Alamat',
                              value: 'Jl. Golf VII No 35, Surabaya'),
                          ProfileItem(title: 'No Hp', value: '+62 81335163808'),
                          ProfileItem(
                              title: 'Email',
                              value: '22082010012@student.upnjatim.ac.id'),
                          ProfileItem(
                            title: 'Github',
                            value: 'github.com/riooalghaniy',
                            githubUrl: 'https://github.com/riooalghaniy',
                          ),
                          ProfileItem(
                              title: 'Riwayat Pendidikan',
                              value:
                                  'SMA Kemala Bhayangkari 1 Surabaya, 2019 - 2022'),
                          ProfileItem(
                              title: 'Penghargaan',
                              value: 'Juara 3 World Of Dance Indonesia 2024'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Profil Faiz :',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Mengatur latar belakang profil menjadi putih
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileItem(
                              title: 'Nama', value: 'Al-Faiz Azzam Aryaputra'),
                          ProfileItem(
                              title: 'TTL', value: 'Surabaya, 18 Juli 2003'),
                          ProfileItem(
                              title: 'Alamat',
                              value: 'Jl. Sedayu 3 No 6, Surabaya'),
                          ProfileItem(title: 'No Hp', value: '+62 82139148162'),
                          ProfileItem(
                              title: 'Email', value: 'alfaizazam@gmail.com'),
                          ProfileItem(
                            title: 'Github',
                            value: 'github.com/alfaizazzam',
                            githubUrl: 'https://github.com/alfaizazzam',
                          ),
                          ProfileItem(
                              title: 'Riwayat Pendidikan',
                              value: 'SMA Trimurti Surabaya'),
                          ProfileItem(
                              title: 'Penghargaan',
                              value: 'Juara 1 Fighting Putra Kelas H'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String title;
  final String value;
  final String? githubUrl;

  ProfileItem({required this.title, required this.value, this.githubUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold), // Memberikan gaya bold pada judul
      ),
      subtitle: githubUrl != null // Memeriksa apakah ada URL GitHub
          ? InkWell(
              onTap: () {
                _launchUrl(
                    githubUrl!); // Memanggil _launchUrl dengan URL GitHub
              },
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          : Text(value),
    );
  }

  // Metode untuk membuka URL
  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
