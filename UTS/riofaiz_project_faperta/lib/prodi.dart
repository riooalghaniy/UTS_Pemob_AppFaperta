import 'package:url_launcher/url_launcher.dart';

class ProgramStudi {
  String imageUrl;
  String nama;
  String deskripsi;
  String visi;
  List<String> misi;
  String akreditasi;
  String ketuaProgramStudi;
  List<String> dosen;
  String websiteResmi;
  List<String> prestasiMahasiswa;
  String email;

  ProgramStudi({
    required this.imageUrl,
    required this.nama,
    required this.deskripsi,
    required this.visi,
    required this.misi,
    required this.akreditasi,
    required this.ketuaProgramStudi,
    required this.dosen,
    required this.websiteResmi,
    required this.prestasiMahasiswa,
    required this.email,
  });

  static List<ProgramStudi> programStudis = [
    ProgramStudi(
        //S1 Agroteknologi
        imageUrl: 'assets/banner_agrotek_s1.png',
        nama: 'S1 Agroteknologi',
        deskripsi:
            'Mempelajari tata cara penerapan teknologi untuk membudidayakan tanaman secara efektif dan efisien.',
        visi:
            'Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.',
        misi: [
          '1. Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja',
          '2. Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat',
          '3. Menyelenggarakan pengabdian kepada masyarakat melalui pembinaan dan pendampingan berbasis ipteks dan kearifan lokal',
          '4. Mengimplementasikan kerjasama terdapat dengan stakeholder nasional dan internasional',
          '5. Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang Agroteknologi',
          '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu',
          '7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang Agroteknologi baik dalam dan luar negeri'
        ],
        akreditasi: 'Akreditasi A',
        ketuaProgramStudi: 'DR. IR. BAKTI WISNU WIDJAJANI , MP.',
        dosen: ['Dr. Ir. Bakti Wisnu Widjajani, M.P. - NIP 19631005 198703 2 00 1',
                'Dr. Ir. Tri Mujoko, M.P. - NIP 19660509 199203 1 00 1',
                'Dr. Ir. Penta Suryaminarsih, M.P. - NIP 19660509 199203 1 00 1',
                'Ir. Moch Arifin, M.T. - NIP 19650502 199203 1 00 1',
                'Ir. Agus Sulistyono, M.P. - NIP 19641112 199203 1 00 2',
                'Dr. Ir. Ramdan Hidayat, M.S. - NIP 19620205 198703 1 00 5',
                'Dr. Ir. Sukendah, M.Sc. - NIP 19631031 198903 2 00 1',
                'Ir. Purwadi, M.P. - NIP 19620719 199003 1 00 1',
                'Prof. Dr. Ir. Juli Santoso, M.P. - NIP 19590709 198803 1 00 1',
                'Dr. Ir. Yenny Wuryandari, M.P. - NIP 19660114 199203 2 00 1',
                'Dr. Ir. Herry Nirwanto, M.P. - NIP 19620625 199103 1 00 2',
                'Dr. Ir. RA. Nora Augustien K., M.P. - NIP 19590824 198703 2 00 1',
                'Ir. Purnomo Edi Sasongko, M.P. - NIP 20219901001237',
                'Ir. Didik Utomo Pribadi, M.P. - NIP 19611202 198903 1 00 1',
                'Dr. Ir. Rossyda Priyadarshini, M.P. - NIP 19670319 199103 2 00 1',
                'Ir. Kemal Wijaya, MT - NIP 19590925 198703 1 00 1',
                'Dr. Ir. Arika Purnawati, M.P. - NIP 19650422 199003 2 00 1',
                'Dr. Dra. Endang Tri Wahyu Prasetyawati, M.Si - NIP 19641203 199103 2 00 1',
                'Ir. Siswanto, M.T. - NIP 19631201 199103 1 00 2',
                'Ir. Hadi Suhardjono, MTp - NIP 19631202 199003 1 00 2',
                'Dr. Ir. Ida Retno Moeljani, M.P. - NIP 19600620 199801 2 00 1',
                'Dr. Ir. Makhziah, M.P. - NIP 19660623 199203 2 00 1',
                'Dr. Ir. Pangesti Nugrahani, M.Si - NIP 19610320 199210 2 00 1',
                'Prof. Dr. Ir. Moch. Sodiq - NIP ',
                'Dr. Dra. Sutini, M.Pd - NIP 19611231 199102 2 00 1',
                'Ir. Widiwurjani, M.P. - NIP 19621224 198703 2 00 1',
                'Drh. Wiludjeng Widajati, M.P. - NIP 19610203 199303 2 00 1',
                'Dr. Ir. Wiwin Windriyanti, M.P. - NIP 19620816 199003 2 00 2',
                'Dr. Ir. Yonny Koentjoro, M.M. - NIP 19610606 198903 1 00 1',
                'Dr. Ir. Endang Yektiningsih, Mp - NIP 19570516 199202 2 00 1',
                'Dr. Ir. Eko Nurhadi, M.S. - NIP 19570214 198703 1 00 1',
                'Fatchur Rozci, SP., M.Agr - NIP 19950607 202203 1 00 0',
                'Dr. Dona Wahyuning Laily, S.P., M.P. - NIP 20219830810234',
                'Prasmita Dian Wijayati, SP., M.Si. - NIP 20219920812235',
                'Dita Atasa, S.P., M.P. - NIP 20219950221236',
                'Dr. Fazlul Rahman, Lc., M.A.Hum. - NIP 20119850913247'
        ],
        websiteResmi: 'https://agrotek.upnjatim.ac.id/',
        prestasiMahasiswa: [
                            'Media Farica Diva = Medali Emas Cabor Panahan Beregu PORPROV Jawa Timur VII 2022',
                            'Anivea Fachmi Nur Fitri = Juara 3 Essay Ilmiah Plant Protection Competition',
                            'Mochammad Mirza Saputra = Juara 3 Essay Ilmiah Plant Protection Competition',
                            'Mochammad Mirza Saputra = Internasional Essay Competition (Integration) FTIP 2023',
                            'Mochammad Mirza Saputra = Bronza Medal Agritech Research and Entrepreneur Innovation (AGREETION) 2023',
                            'M. Arif Wahyudin = Internasional Essay Competition (Integration) FTIP 2023',
                            'Fatimah Azzahra = Internasional Essay Competition (Integration) FTIP 2023',
                            'Fatimah Lailatus Sa’adah = Bronza Medal Agritech Research and Entrepreneur Innovation (AGREETION) 2023',
                            'Fanny Estrisya Putri = Bronza Medal Agritech Research and Entrepreneur Innovation (AGREETION) 2023',
                            'Maryam Eyka Dijono Saputro = Medali Emas Cabor Outdoor Hockey Putri dalam PORPROV JATIM VIII 2023',
                            'Talitha Maritza Putri Tara = Juara 2 Komite Senior Upper 17 Putri Kelas A KJUO XVII 2023',
                            'Niken Ayu Purnamasari = Top 10 dan Duta UMKM Berbakat Jawa Timur 2023',
        ],
        email: 'faperta@upnjatim.ac.id'),
    ProgramStudi(
        //S2 Agroteknologi
        imageUrl: 'assets/banner_agrotek_s2.png',
        nama: 'S2 Agroteknologi',
        deskripsi:
            'Mempelajari tata cara penerapan teknologi untuk membudidayakan tanaman secara efektif dan efisien.',
        visi:
            'Menjadi penyelenggara pendidikan yang unggul dalam pengembangan IPTEKS pertanian berkelanjutan dan kewirausahaan, berjejaring global serta berkarakter belanegara',
        misi: [
          '1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara.',
          '2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian',
          '3. Menyelenggarakan pengabdian kepada masyarakat  melalui penerapan TTG berbasis kearifan lokal.',
          '4. Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui Litdimas'
        ],
        akreditasi: 'Akreditasi Baik',
        ketuaProgramStudi: 'DR. IR. BAKTI WISNU WIDJAJANI , MP.',
        dosen: ['Dr. Ir. Bakti Wisnu Widjajani, M.P. - NIP 19631005 198703 2 00 1',
                'Dr. Ir. Tri Mujoko, M.P. - NIP 19660509 199203 1 00 1',
                'Dr. Ir. Penta Suryaminarsih, M.P. - NIP 19660509 199203 1 00 1',
                'Ir. Moch Arifin, M.T. - NIP 19650502 199203 1 00 1',
                'Ir. Agus Sulistyono, M.P. - NIP 19641112 199203 1 00 2',
                'Dr. Ir. Ramdan Hidayat, M.S. - NIP 19620205 198703 1 00 5',
                'Dr. Ir. Sukendah, M.Sc. - NIP 19631031 198903 2 00 1',
                'Ir. Purwadi, M.P. - NIP 19620719 199003 1 00 1',
                'Prof. Dr. Ir. Juli Santoso, M.P. - NIP 19590709 198803 1 00 1',
                'Dr. Ir. Yenny Wuryandari, M.P. - NIP 19660114 199203 2 00 1',
                'Dr. Ir. Herry Nirwanto, M.P. - NIP 19620625 199103 1 00 2',
                'Dr. Ir. RA. Nora Augustien K., M.P. - NIP 19590824 198703 2 00 1',
                'Ir. Purnomo Edi Sasongko, M.P. - NIP 20219901001237',
                'Ir. Didik Utomo Pribadi, M.P. - NIP 19611202 198903 1 00 1',
                'Dr. Ir. Rossyda Priyadarshini, M.P. - NIP 19670319 199103 2 00 1',
                'Ir. Kemal Wijaya, MT - NIP 19590925 198703 1 00 1',
                'Dr. Ir. Arika Purnawati, M.P. - NIP 19650422 199003 2 00 1',
                'Dr. Dra. Endang Tri Wahyu Prasetyawati, M.Si - NIP 19641203 199103 2 00 1',
                'Ir. Siswanto, M.T. - NIP 19631201 199103 1 00 2',
                'Ir. Hadi Suhardjono, MTp - NIP 19631202 199003 1 00 2',
                'Dr. Ir. Ida Retno Moeljani, M.P. - NIP 19600620 199801 2 00 1',
                'Dr. Ir. Makhziah, M.P. - NIP 19660623 199203 2 00 1',
                'Dr. Ir. Pangesti Nugrahani, M.Si - NIP 19610320 199210 2 00 1',
                'Prof. Dr. Ir. Moch. Sodiq - NIP ',
                'Dr. Dra. Sutini, M.Pd - NIP 19611231 199102 2 00 1',
                'Ir. Widiwurjani, M.P. - NIP 19621224 198703 2 00 1',
                'Drh. Wiludjeng Widajati, M.P. - NIP 19610203 199303 2 00 1',
                'Dr. Ir. Wiwin Windriyanti, M.P. - NIP 19620816 199003 2 00 2',
                'Dr. Ir. Yonny Koentjoro, M.M. - NIP 19610606 198903 1 00 1',
                'Dr. Ir. Endang Yektiningsih, Mp - NIP 19570516 199202 2 00 1',
                'Dr. Ir. Eko Nurhadi, M.S. - NIP 19570214 198703 1 00 1',
                'Fatchur Rozci, SP., M.Agr - NIP 19950607 202203 1 00 0',
                'Dr. Dona Wahyuning Laily, S.P., M.P. - NIP 20219830810234',
                'Prasmita Dian Wijayati, SP., M.Si. - NIP 20219920812235',
                'Dita Atasa, S.P., M.P. - NIP 20219950221236',
                'Dr. Fazlul Rahman, Lc., M.A.Hum. - NIP 20119850913247'
        ],
        websiteResmi: 'https://magrotek.upnjatim.ac.id/',
        prestasiMahasiswa: [
                            'Pada website resmi, tidak dicantumkan prestasi mahasiswa',
        ],
        email: 'faperta@upnjatim.ac.id'),
    ProgramStudi(
        //S1 Agribisnis
        imageUrl: 'assets/banner_agribis_s1.png',
        nama: 'S1 Agribisnis',
        deskripsi:
            'Mempelajari bidang pertanian beserta bisnis dalam pengelolaan pertanian modern dan industri makanan.',
        visi:
            'Terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.',
        misi: [
          '1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agroindustri dan pemasaran sehingga mampu menciptakan/mengisi peluang kerja dalam bidang agribisnis.',
          '2. Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berdaya guna untuk kesejahteraan masyarakat.',
          '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset di bidang agribisnis dan kearifan lokal.',
          '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.',
          '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial di bidang agribisnis.',
          '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu.',
          '7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis baik dalam dan luar negeri.'
        ],
        akreditasi: 'Akreditasi Unggul',
        ketuaProgramStudi: 'PROF. DR. IR. SYARIF IMAM HIDAYAT, MM.',
        dosen: ['Prof. Dr. Ir, Syarif Imam Hidayat, M.M. - NIP 19630218 198903 1 00 2',
                'Dr. Ir. Hamidah Hendrarini, M.Si. - NIP 19601227 199103 2 00 1',
                'Prof. Dr. Ir. Teguh Soedarto, M.P. - NIP 19560620 198703 1 00 4',
                'Mirza Andrian Syah, S.P., M.P. - NIP 21119960827279',
                'Gyska Indah, S.P., M.Agr. - NIP 17219910704008',
                'Dr. Ir. Pawana Nur Indah, M.Si. NIP - 19570720 198703 2 00 1',
                'Dr. Ir. Indra Tjahaja Amir, M.P. NIP - 19581118 198903 1 00 1'
              ],
        websiteResmi: 'https://agribis.upnjatim.ac.id/',
        prestasiMahasiswa: [
                            'Nabella Ayu Wulandari = Medali Emas 3x3 Bola Basket PORPROV VII JATIM 2022',
                            'Devi Putri Fajariyah = Juara 3 Internasional Students Virtual Mobility Program (ISVMP) 2022',
                            'Fitri Diani = Juara Harapan 2 Business Plan Competition Umsida 2022',
                            'Fitri Diani = Juara 3 Aection 4.0 Himavo Akmapesa IPB University',
                            'Beatrice Maria Charmenita = Juara 3 Lomba Olimpiade Bahasa Inggris Tingkat Mahasiswa 2023'
        ],
        email: 'agribisnis@upnjatim.ac.id'),
    ProgramStudi(
        //S2 Agribisnis
        imageUrl: 'assets/banner_agribis_s2.png',
        nama: 'S2 Agribisnis',
        deskripsi:
            'Mempelajari bidang pertanian beserta bisnis dalam pengelolaan pertanian modern dan industri makanan.',
        visi:
            'MENJADI PROGRAM STUDI MAGISTER AGRIBISNIS YANG UNGGUL DAN BERKARAKTER BELA NEGARA',
        misi: [
          '1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agroindustri dan pemasaran sehingga mampu menciptakan/ mengisi peluang kerja dalam bidang agribisnis',
          '2. Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berdaya guna untuk kesejahteraan masyarakat.',
          '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset di bidang agribisnis dan kearifan lokal.',
          '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.',
          '5. Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan menajerial di bidang agribisnis.',
          '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu.',
          '7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis baik dalam dan luar negeri.'
        ],
        akreditasi: 'Akreditasi Unggul',
        ketuaProgramStudi: 'PROF. DR. IR. SYARIF IMAM HIDAYAT, MM.',
        dosen: ['Prof. Dr. Ir, Syarif Imam Hidayat, M.M. - NIP 19630218 198903 1 00 2',
                'Dr. Ir. Hamidah Hendrarini, M.Si. - NIP 19601227 199103 2 00 1',
                'Prof. Dr. Ir. Teguh Soedarto, M.P. - NIP 19560620 198703 1 00 4',
                'Mirza Andrian Syah, S.P., M.P. - NIP 21119960827279',
                'Gyska Indah, S.P., M.Agr. - NIP 17219910704008',
                'Dr. Ir. Pawana Nur Indah, M.Si. NIP - 19570720 198703 2 00 1',
                'Dr. Ir. Indra Tjahaja Amir, M.P. NIP - 19581118 198903 1 00 1'
              ],
        websiteResmi: 'https://magri.upnjatim.ac.id/',
        prestasiMahasiswa: [
                            'Pada website resmi, tidak dicantumkan prestasi mahasiswa',
        ],
        email: 'magri@upnjatim.ac.id'),
    ProgramStudi(
        //S3 Agribisnis
        imageUrl: 'assets/banner_agribis_s3.png',
        nama: 'S3 Agribisnis',
        deskripsi:
            'Mempelajari bidang pertanian beserta bisnis dalam pengelolaan pertanian modern dan industri makanan .',
        visi:
            'Pengembangan Integrasi Smart FarmingBerkelanjutan yang Berwawasan Global untuk Kesejahteraan Masyarakat',
        misi: [
          '1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agribisnis yang berbasis sumberdaya dan kearifan lokal sehingga mampu menciptakan/ inovasi kasanah keilmuan dalam bidang Pertanian khususnya agribisnis.',
          '2. Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berbasis sumberdaya dan kearifan lokal yang berdaya guna untuk penguatan  kesejahteraan masyarakat di tingkat nasional maupun internasional..',
          '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset berskala nasional di bidang agribisnis dan memanfaatkan  kearifan lokal.',
          '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.',
          '5. Mengembangkan kualitas sumberdaya manusia unggul dalam pengetahuan,  sikap dan tata nilai, pendalaman /penguasaan pengetahuan dan menajerial di bidang agribisnis.',
          '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu dalam upaya untuk penyelenggaraan Pendidikan S3 / Doktor Agribisnis.',
          '7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis di tingkat nasional maupun internasional.'
        ],
        akreditasi: 'Akreditasi Baik',
        ketuaProgramStudi: 'PROF. DR. IR. SYARIF IMAM HIDAYAT, MM.',
        dosen: ['Prof. Dr. Ir, Syarif Imam Hidayat, M.M. - NIP 19630218 198903 1 00 2',
                'Dr. Ir. Hamidah Hendrarini, M.Si. - NIP 19601227 199103 2 00 1',
                'Prof. Dr. Ir. Teguh Soedarto, M.P. - NIP 19560620 198703 1 00 4',
                'Mirza Andrian Syah, S.P., M.P. - NIP 21119960827279',
                'Gyska Indah, S.P., M.Agr. - NIP 17219910704008',
                'Dr. Ir. Pawana Nur Indah, M.Si. NIP - 19570720 198703 2 00 1',
                'Dr. Ir. Indra Tjahaja Amir, M.P. NIP - 19581118 198903 1 00 1'
              ],
        websiteResmi: 'https://dokgri.upnjatim.ac.id/',
        prestasiMahasiswa: [
                            'Pada website resmi, tidak dicantumkan prestasi mahasiswa',
        ],
        email: 'dokgri@upnjatim.ac.id'),
  ];
  void launchWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    final String emailUrl = params.toString();

    if (await canLaunch(emailUrl)) {
      await launch(emailUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }
}
