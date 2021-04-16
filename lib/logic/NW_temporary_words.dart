import 'package:flutter/material.dart';
import '../widgets/constants.dart';

class WordsPage extends StatefulWidget {
  final WordsPage words;

  WordsPage({this.words});
  @override
  _WordsPageState createState() => _WordsPageState();
}

class _WordsPageState extends State<WordsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Haditz"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
            height: 180.0,
            width: double.infinity,
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage(imageUrl[index]),
              //   fit: BoxFit.cover,
              // ),
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue[100], Colors.green[100]],
              ),
            ),
            child: Column(children: <Widget>[]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: new PageView.builder(
                itemBuilder: (BuildContext context, int index) {
              return Stack(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.blue[100], Colors.green[100]],
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          locTranslation[index],
                          style: kPtsansTextStyle,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          engTranslation[index],
                          style: kPtsansTextStyle,
                        ),
                      ]),
                )
              ]);
            }
                // onPageChanged: (value) {
                //   setState(() {
                //     currentpage = value;
                //   });
                // },
                // controller: controller,
                // itemBuilder: (context, index) => builder(index)
                ),
          ),
        ],
      ),
    );
  }

  //TODO: w1 aug release must have 12 "real" arab quotes
  static List<String> arabLitterals = [
    // "ِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ",
    // "َلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْنَۙ",
    // "الرَّحْمٰنِ الرَّحِيْمِۙ",
    // "مٰلِكِ يَوْمِ الدِّيْنِۗ",
    // "اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَعِيْنُۗ",
    // "اِهْدِنَا الصِّرَاطَ الْمُسْتَقِيْمَ ۙ",
    // "صِرَاطَ الَّذِيْنَ اَنْعَمْتَ عَلَيْهِمْ ەۙ غَيْرِ الْمَغْضُوْبِ عَلَيْهِمْ وَلَا الضَّاۤلِّيْنَ ࣖ",
    // "فهذا الحديث لا أساس له من الصحة ، بل هو باطل وكذب",
  ];
  //TODO: switch with game mode - transliteration yes/no - maybe this week release maybe
//TODO: w1 aug release must have 12 "real" translitaration

  static List<String> translitarationLatins = [
    // "bismillāhir-raḥmānir-raḥīm",
    // "al-ḥamdu lillāhi rabbil-'ālamīn ",
    // "ar-raḥmānir-raḥīm ",
    // "māliki yaumid-dīn ",
    // "iyyāka na'budu wa iyyāka nasta'īn ",
    // "ihdinaṣ-ṣirāṭal-mustaqīm ",
    // "ṣirāṭallażīna an'amta 'alaihim gairil-magḍụbi 'alaihim wa laḍ-ḍāllīn",
  ];

  //TODO: w1 aug release must have 24 "random" quotes and 12 "real" translatation quote
  //TODO: data strute is TOO flat
  // example of real quote prop 1: refNumber <int> for week one is number 0-11 so we follow index-- prop 1p: filepath of the picture to show -- prop2: arabLitterals VALUE -- prop3: string reference ex 94:5.6 -- prop4: translitarationLatins VALUE -- prop 5 engTranslation VALUE -- prop 6 localTranslation (ID) VALUE
  // example of random quote prop 1: refNumber <int> for week one is number 12-25 so we follow index-- prop 1p: filepath of the picture to show -- nprop2: arabLitterals "" -- prop3: string reference VALUE ex 93:7.3 -- prop4: translitarationLatins "" -- prop 5 engTranslation VALUE -- prop 6 localTranslation (ID) VALUE
  List<String> locTranslation = [
    "Jangan terlalu keras pada dirimu sendiri, karena hasil akhir dari semua urusan di dunia ini sudah ditetapkan oleh Allah. Jika sesuatu ditakdirkan untuk menjauh darimu, maka ia tak akan pernah mendatangimu. Namun jika ia ditakdirkan bersamamu, maka kau tak akan bisa lari darinya. Umar bin Khattab.",
    "Allah tidak melihat bentuk rupa dan harta benda kalian, tapi Dia melihat hati dan amal kalian. Nabi Muhammad SAW",
    "Berpikirlah positif, tidak peduli seberapa keras kehidupanmu. Ali. bin Abi Thalib",
    "Maka sesungguhnya bersama kesulitan itu ada kemudahan. QS. Al Insyirah 5",
    "Orang yang terkaya adalah orang yang menerima pembagian (taqdir) dari Allah dengan senang hati. Ali bin Husein",
    "Barang siapa yang tidak mensyukuri yang sedikit, maka ia tidak akan mampu mensyukuri sesuatu yang banyak. HR. Ahmad",
    "Memangnya kenapa kalau hidup kita tak sempurna? Toh ini bukanlah surga. Nourman Ali Khan",
    "Dosaku sangat membebaniku. Tetapi ketika aku mengukurnya dengan rahmat-Mu, Ya Allah, ampunan-Mu lebih besar. Imam Syafii ",
    "Barangsiapa mengerjakan kebaikan seberat zarah pun, niscaya dia akan melihat (balasan)nya. QS Az-Zalzalah: 7 ",
    "Janganlah kamu berduka cita, sesungguhnya Allah selalu bersama kita. QS. At Taubah 40 ",
    "Jangan berduka, apa pun yang hilang darimu akan kembali lagi dalam wujud lain. Jalaludin Rumi ",
    "Boleh jadi kamu membenci sesuatu padahal ia amat baik bagimu, boleh jadi pula kamu menyukai sesuatu padahal ia amat buruk bagimu. Allah mengetahui, sedang kamu tidak mengetahui. QS. Al-Baqarah 216 ",
    "Jangan kamu merasa lemah dan jangan bersedih, sebab kamu paling tinggi derajatnya jika kamu beriman. QS. Ali Imran: 139 ",
    "Jangan bersedih. Sesungguhnya pertolongan akan datang bersama kesabaran. HR. Ahmad ",
    "Orang yang terkaya adalah orang yang menerima pembagian (taqdir) dari Allah dengan senang hati. Ali bin Husein ",
    "Kita adalah makhluk yang suka menyalahkan dari luar, tidak menyadari bahwa masalah biasanya dari dalam. Abu Hamid Al Ghazali ",
    "Balas dendam terbaik adalah menjadikan dirimu lebih baik. Ali bin Abi Thalib ",
    "Kita adalah makhluk yang suka menyalahkan dari luar, tidak menyadari bahwa masalah biasanya dari dalam. Abu Hamid Al Ghazali ",
    "Jauhilah dengki, karena dengki memakan amal kebaikan sebagaimana api memakan kayu bakar. Nabi Muhammad SAW ",
    "Perempuan itu sama seperti bunga. Mereka harus diperlakukan dengan lembut, baik, dan penuh kasih sayang. Ali bin Abi Thalib ",
  ];

  List<String> engTranslation = [
    "Don't be too hard on yourself, because the final outcome of all affairs in this world has been ordained by Allah. If something is destined to get away from you, it will never come to you. But if it is with you, then you will not be able to run away from it. Umar bin Khattab.",
    "Allah does not see your forms and possessions, but He sees your hearts and deeds. Prophet Muhammad SAW",
    "Think positive, no matter how hard your life is. Ali. Bin Abi Talib",
    "So actually with difficulties there is convenience. QS. Al Insyirah 5",
    "The richest person is the one who accepts the distribution (taqdir) from Allah with pleasure. Ali bin Husayn",
    "Whoever is not grateful for a little, then he will not be able to be grateful for something much. HR. Ahmad",
    "What if our lives are not perfect? ​​After all this is not heaven. Nourman Ali Khan",
    "My sin weighs heavily on me. But when I measure it with Your grace, O Allah, Your forgiveness is greater. Imam Shafi",
    "Whoever does goodness as heavy as the zarah, surely he will see (reply) it. Surah Az-Zalzalah: 7",
    "Do not grieve, verily Allah is always with us. QS. At Taubah 40",
    "Don't mourn, whatever is lost from you will come back in another form. Jalaludin Rumi",
    "Maybe you hate something even though it is very good for you, maybe you like something even though it is very bad for you. Allah knows, while you don't know. QS. Al-Baqarah 216",
    "Don't feel weak and don't be sad, because you have the highest rank if you believe. QS. Ali Imran: 139",
    "Don't be sad. In fact, help will come with patience. HR. Ahmad",
    "The richest person is the one who accepts the distribution (taqdir) from Allah with pleasure. Ali bin Husayn",
    "We are creatures who like to blame from the outside, not realizing that the problem is usually from within. Abu Hamid Al Ghazali",
    "The best revenge is to make yourself better. Ali bin Abi Talib",
    "We are creatures who like to blame from the outside, not realizing that the problem is usually from within. Abu Hamid Al Ghazali",
    "Stay away from envy, because envy eats good deeds as fire eats firewood. Prophet Muhammad SAW",
    "Women are like flowers. They should be treated gently, kindly, and lovingly. Ali ibn Abi Talib",
  ];
}
