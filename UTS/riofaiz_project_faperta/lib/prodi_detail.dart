import 'package:flutter/material.dart';
import 'prodi.dart';

class ProdiDetail extends StatelessWidget {
  final ProgramStudi programStudi;

  const ProdiDetail({Key? key, required this.programStudi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          programStudi.nama,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green[100], // Ubah warna latar belakang menjadi hijau
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                programStudi.imageUrl,
                fit: BoxFit
                    .contain, // Foto header disesuaikan dengan ukuran gambar
              ),
              SizedBox(height: 10),
              Text(
                programStudi.nama,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22, // Ukuran teks diperbesar
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              _buildSection('Deskripsi', programStudi.deskripsi),
              _buildDivider(),
              _buildSection('Visi', programStudi.visi),
              _buildDivider(),
              _buildSection('Misi', programStudi.misi.join('\n')),
              _buildDivider(),
              _buildSection('Akreditasi', programStudi.akreditasi),
              _buildDivider(),
              _buildSection(
                  'Ketua Program Studi', programStudi.ketuaProgramStudi),
              _buildDivider(),
              _buildSection('Dosen', programStudi.dosen.join('\n')),
              _buildDivider(),
              _buildSection('Website Resmi', programStudi.websiteResmi),
              _buildDivider(),
              _buildSection('Prestasi Mahasiswa',
                  programStudi.prestasiMahasiswa.join('\n')),
              _buildDivider(),
              _buildSection('Email', programStudi.email),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    if (title == 'Website Resmi') {
      return InkWell(
        onTap: () {
          programStudi.launchWebsite(programStudi.websiteResmi);
        },
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: Colors.green[300], // Ubah warna latar belakang menjadi hijau
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              content,
              style: TextStyle(
                  color: Colors.white), // Ubah warna teks menjadi putih
            ),
          ),
        ),
      );
    } else if (title == 'Email') {
      return InkWell(
        onTap: () {
          programStudi
              .launchEmail(); // Memanggil metode untuk membuka aplikasi email
        },
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: Colors.green[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              content,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.green[300], // Ubah warna latar belakang menjadi hijau
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            content,
            style:
                TextStyle(color: Colors.white), // Ubah warna teks menjadi putih
          ),
        ),
      );
    }
  }

  Widget _buildDivider() {
    return Divider(
      thickness: 1,
      color: Colors.grey[400],
    );
  }
}
