//The itemModel is used to inject data in the UI
//The UI requires an arab writing called arabQuote, the correct answer in this case translationQuoteID
// two fillers that serves as wrong answers quoteTranslationFiller1 and 2
// The random generator uses the refQuote and also the lists below to generate a game that would be non repetitive

//quoteTranslationFiller1 and 2 are "optional parameters"
//TODO: Alex - do we use them as optional parameters or as full parameters?
//TODO: check the length of the quotes are we limited by screensize to 80-120-240 characters or can we do more?
// longest quote at this stage is 355 characters.

class ItemModel {
  final String refQuote;
  final String arabQuote;
  final String translationQuoteID;
  String quoteTranslationFiller1;
  String quoteTranslationFiller2;

  bool accepting;
  ItemModel(this.refQuote, this.arabQuote, this.translationQuoteID,
      [this.quoteTranslationFiller1, this.quoteTranslationFiller2]);
}

final List quotesAndTranslationsCat1 = const [
  [
    "before eat",
    "اَللّٰهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ",
    "Ya Allah, berkahilah kami dalam rezeki yang telah Engkau berikan kepada kami dan peliharalah kami dari siksa api neraka"
  ],
  [
    "after eat",
    "اَلْحَمْدُ ِللهِ الَّذِىْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِيْنَ",
    "Segala puji bagi Allah yang telah memberi makan kami dan minuman kami, serta menjadikan kami sebagai orang-orang islam"
  ],
  [
    "after drink",
    "اَلْحَمْدُ ِللهِ الَّذِىْ جَعَلَهُ عَذْبًا فُرَاتًا بِرَحْمَتِهِ وَلَمْ يَجْعَلْهُ مِلْحًا اُجَاجًا بِذُنُوْبِنَا",
    "Segala puji bagi Allah yang telah menjadikan air ini (minuman) segar dan menggiatkan dengan rahmat-Nya dan tidak menjadikan air ini (minuman) asin lagi pahit karena dosa-dosa kami"
  ],
  [
    "before sleep",
    "بِسْمِكَ اللّٰهُمَّ اَحْيَا وَاَمُوْتُ",
    "Dengan menyebut nama-Mu ya Allah, aku hidup dan aku mati"
  ],
  [
    "nightmare dream",
    "اَللّٰهُمَّ إِنّىِ أَعُوْذُ بِكَ مِنْ عَمَلِ الشَّيْطَانِ وَسَيِّئاَتِ اْلأَحْلاَمِ",
    "Ya Allah, sesungguhnya aku mohon perlindungan kepada Engkau dari perbuatan setan dan dari mimpi-mimpi yang buruk"
  ],
  [
    "Good dreams",
    "اَلْحَمْدُ ِللهِ الَّذِيْ قَطْلَ الْحَاجَتِ",
    "Segala puji bagi Allah yang telah memberi hajatku"
  ],
  [
    "Wake up",
    "اَلْحَمْدُ ِللهِ الَّذِىْ اَحْيَانَا بَعْدَمَآ اَمَاتَنَا وَاِلَيْهِ النُّشُوْرُ",
    "Segala puji bagi Allah yang telah menghidupkan kami sesudah kami mati (membangunkan dari tidur) dan hanya kepada-Nya kami dikembalikan"
  ],
  [
    "Enter the bathroom or toilet",
    "اَللّٰهُمَّ اِنّىْ اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ",
    "Ya Allah, aku berlindung pada-Mu dari godaan syetan  laki-laki dan syetan perempuan"
  ],
  [
    "Istinja",
    "اَللّٰهُمَّ طَهِّرُ قَلْبِىْ مِنَ النِّفَاقِ وَحَصِّنْ فَرْخِىْ مِنَ الْفَوَاحِشِ",
    "Wahai Tuhanku, sucikanlah hatiku dari sifat kepura-puraan (munafiq) serta peliharalah kemaluanku dari perbuatan keji"
  ],
  [
    "Exit the bathroom or toilet",
    "غُفْرَانَكَ الْحَمْدُ ِللهِ الَّذِىْ اَذْهَبَ عَنّى اْلاَذَى وَعَافَانِىْ",
    "Dengan mengharap ampunanMu, segala puji milik Allah yang telah menghilangkan kotoran dari badanku dan yang telah menyejahterakan."
  ],
  [
    "Menjelang Sholat Shubuh",
    "اَللّٰهُمَّ اِنِّى اَعُوْذُ بِكَ مِنْ ضِيْقِ الدُّنْيَا وَضِيْقِ يَوْمِ الْقِيَامَةِ",
    "Ya Allah! Sesungguhnya aku berlindung kepada-Mu dari kesempitan dunia dan kesempitan hari kiamat. (HR. Abu Daud)"
  ],
  [
    "Welcoming the morning",
    "اَللّٰهُمَّ بِكَ اَصْبَحْنَا وَبِكَ اَمْسَيْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوْتُ وَاِلَيْكَ النُّشُوْرُ",
    "Ya Allah, karena Engkau kami mengalami waktu pagi dan waktu petang, dan karena Engkau kami hidup dan mati dan kepada-Mu juga kami akan kembali."
  ],
  [
    "Welcoming the Afternoon",
    "اَللّٰهُمَّ بِكَ اَمْسَيْنَا وَبِكَ اَصْبَحْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوْتُ وَاِلَيْكَ الْمَصِيْرُ",
    "Ya Allah, karena Engkau kami mengalami waktu petang dan waktu pagi, karena Engkau kami hidup dan mati dan kepada-Mu juga kami akan kembali."
  ],
  [
    "When in the mirror",
    "اَلْحَمْدُ ِللهِ كَمَا حَسَّنْتَ خَلْقِىْ  فَحَسِّـنْ خُلُقِىْ",
    "Segala puji bagi Allah, baguskanlah budi pekertiku sebagaimana Engkau telah membaguskan rupa wajahku"
  ],
  [
    "Enter home",
    "اَللّٰهُمَّ اِنّىْ اَسْأَلُكَ خَيْرَالْمَوْلِجِ وَخَيْرَالْمَخْرَجِ بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ رَبّنَا تَوَكَّلْنَا",
    "Ya Allah, sesungguhnya aku mohon kepada-Mu baiknya tempat masuk dan baiknya tempat keluar dengan menyebut nama Allah kami masuk, dan dengan menyebut nama Allah kami keluar dan kepada Allah Tuhan kami, kami bertawakkal"
  ],
  [
    "Exit home",
    "بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ لاَحَوْلَ وَلاَقُوَّةَ اِلاَّ بِالله",
    "Dengan menyebut nama Allah aku bertawakal kepada Allah, tiada daya kekuatan melainkan dengan pertologan Allah."
  ],
  [
    "Wearing clothes",
    "بِسْمِ اللهِ اَللّٰهُمَّ اِنِّى اَسْأَلُكَ مِنْ خَيْرِهِ وَخَيْرِ مَاهُوَ لَهُ وَاَعُوْذُبِكَ مِنْ شَرِّهِ وَشَرِّمَا هُوَلَهُ",
    "Dengan nama-Mu yaa Allah akku minta kepada Engkau kebaikan pakaian ini dan kebaikan apa yang ada padanya, dan aku berlindung kepada Engkau dari kejahatan pakaian ini dan kejahatan yang ada padanya"
  ],
  [
    "Wearing New Clothes",
    "اَلْحَمْدُ لِلّٰهِ الَّذِىْ كَسَانِىْ هَذَا وَرَزَقَنِيْهِ مِنْ غَيْرِ حَوْلٍ مِنِّىْ وَلاَقُوَّةٍ",
    "Segala puji bagi Allah yang memberi aku pakaian ini dan memberi rizeki dengan tiada upaya dan kekuatan dariku"
  ],
  [
    "Taking off clothes",
    "بِسْمِ اللهِ الَّذِيْ لاَ إِلَهَ إِلَّا هُوَ",
    "Dengan nama Allah yang tiada Tuhan selain-Nya"
  ],
  [
    "Asking Useful Knowledge",
    "اَللّٰهُمَّ اِنِّى اَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلاً مُتَقَبَّلاً",
    "Ya Allah, sesungguhnya aku mohon kepada-Mu ilmu yang berguna, rezki yang baik dan amal yang baik Diterima. (H.R. Ibnu Majah)"
  ],
  [
    "Before Studying",
    "يَارَبِّ زِدْنِىْ عِلْمًا وَارْزُقْنِىْ فَهْمًا",
    "Ya Allah, tambahkanlah aku ilmu dan berikanlah aku rizqi akan kepahaman"
  ],
  [
    "After Studying",
    "اَللّٰهُمَّ اِنِّى اِسْتَوْدِعُكَ مَاعَلَّمْتَنِيْهِ فَارْدُدْهُ اِلَىَّ عِنْدَ حَاجَتِىْ وَلاَ تَنْسَنِيْهِ يَارَبَّ الْعَالَمِيْنَ",
    "Ya Allah, sesungguhnya aku menitipkan kepada Engkau ilmu-ilmu yang telah Engkau ajarkan kepadaku, dan kembalikanlah kepadaku sewaktu aku butuh kembali dan janganlah Engkau lupakan aku kepada ilmu itu wahai Tuhan seru sekalian alam."
  ],
  [
    "Traveling",
    "اَللّٰهُمَّ هَوِّنْ عَلَيْنَا سَفَرَنَا هَذَا وَاطْوِعَنَّابُعْدَهُ اَللّٰهُمَّ اَنْتَ الصَّاحِبُ فِى السَّفَرِوَالْخَلِيْفَةُفِى الْاَهْلِ",
    "Ya Allah, mudahkanlah kami berpergian ini, dan dekatkanlah kejauhannya. Ya Allah yang menemani dalam berpergian, dan Engkau pula yang melindungi keluarga."
  ],
  [
    "Ride on Vehicles",
    "سُبْحَانَ الَّذِىْ سَخَّرَلَنَا هَذَا وَمَاكُنَّالَهُ مُقْرِنِيْنَ وَاِنَّآ اِلَى رَبِّنَا لَمُنْقَلِبُوْنَ",
    "Maha suci Allah yang telah menundukkan untuk kami (kendaraan) ini. padahal sebelumnya kami tidak mampu untuk menguasainya, dan hanya kepada-Mu lah kami akan kembali"
  ],
  [
    "Get on board",
    "بِسْمِ اللهِ مَجْرَهَا وَمُرْسَهَآاِنَّ رَبِّىْ لَغَفُوْرٌرَّحِيْمٌ",
    "Dengan nama Allah yang menjalankan kendaraan ini berlayar dan berlabuh, sesungguhnya Tuhanku benar-benar Maha Pengampun lagi Maha Penyayang"
  ],
  [
    "When you arrive at the destination",
    "اَلْحَمْدُ ِللهِ الَّذِى سَلَمَنِى وَالَّذِى اَوَنِى وَالَّذِى جَمَعَ الشَّمْلَ بِ",
    "Segala puji bagi Allah, yang telah menyelamatkan akau dan yang telah melindungiku dan yang mengumpulkanku dengan keluargaku."
  ],
  [
    "When Towards the Mosque",
    "اَللّٰهُمَّ اجْعَلْ فِىْ قَلْبِى نُوْرًا وَفِى لِسَانِىْ نُوْرًا وَفِىْ بَصَرِىْ نُوْرًا وَفِىْ سَمْعِىْ نُوْرًا وَعَنْ يَسَارِىْ نُوْرًا وَعَنْ يَمِيْنِىْ نُوْرًا وَفَوْقِىْ نُوْرًا وَتَحْتِىْ نُوْرًا وَاَمَامِىْ نُوْرًا وَخَلْفِىْ نُوْرًا وَاجْعَلْ لِّىْ نُوْرًا",
    "Ya Allah, jadikanlah dihatiku cahaya, pada lisanku cahaya dipandanganku cahaya, dalam pendengaranku cahaya, dari kananku cahaya, dari kiriku cahaya, dari atasku cahaya, dari bawahku cahaya, dari depanku cahaya, belakangku cahaya, dan jadikanlah untukku cahaya."
  ],
  [
    "Enter the mosque",
    "اَللّٰهُمَّ افْتَحْ لِيْ اَبْوَابَ رَحْمَتِكَ",
    "Ya Allah, bukalah untukku pintu-pintu rahmat-Mu"
  ],
  [
    "Exit the mosque",
    "اَللّٰهُمَّ اِنِّى اَسْأَلُكَ مِنْ فَضْلِكَ",
    "Ya Allah, sesungguhnya aku memohon keutamaan dari-Mu"
  ],
  [
    "Will Read the Qur'an",
    "اَللّٰهُمَّ افْتَحْ عَلَىَّ حِكْمَتَكَ وَانْشُرْ عَلَىَّ رَحْمَتَكَ وَذَكِّرْنِىْ مَانَسِيْتُ يَاذَاالْجَلاَلِ وَاْلاِكْرَامِ",
    "Ya Allah bukakanlah hikmahMu padaku, bentangkanlah rahmatMu padaku dan ingatkanlah aku terhadap apa yang aku lupa, wahai Dzat yang memiliki keagungan dan kemuliaan."
  ],
  [
    "After Read the Qur'an",
    "اَللّٰهُمَّ ارْحَمْنِىْ بِالْقُرْآنِ. وَاجْعَلْهُ لِىْ اِمَامًا وَنُوْرًا وَّهُدًى وَّرَحْمَةً. اَللّٰهُمَّ ذَكِّرْنِىْ مِنْهُ مَانَسِيْتُ وَعَلِّمْنِىْ مِنْهُ مَاجَهِلْتُ. وَارْزُقْنِىْ تِلاَ وَتَهُ آنَآءَ اللَّيْلِ وَاَطْرَافَ النَّهَارٍ. وَاجْعَلْهُ لِىْ حُجَّةً يَارَبَّ الْعَالَمِيْنَ",
    "Ya Allah, rahmatilah aku dengan Al-Quran yang agung, jadikanlah ia bagiku ikutan cahaya petunjuk rahmat. Ya Allah, ingatkanlah apa yang telah aku lupa dan ajarkan kepadaku apa yang tidak aku ketahui darinya, anugerahkanlah padaku kesempatan membacanya pada sebagian malam dan siang, jadikanlah ia hujjah yang kuat bagiku, wahai Tuhan seru sekalian alam."
  ],
  [
    "Intention wudhu",
    "نَوَيْتُ الْوُضُوْءَ لِرَفْعِ الْحَدَثِ اْلاَصْغَرِ فَرْضًا لِلّٰهِ تَعَالَى",
    "Saya niat berwudhu untuk menghilangkan hadast kecil fardu (wajib) karena Allah ta'ala"
  ],
  [
    "After wudhu",
    "اَشْهَدُ اَنْ لاَّاِلَهَ اِلاَّاللهُ وَحْدَهُ لاَشَرِيْكَ لَهُ وَاَشْهَدُ اَنَّ مُحَمَّدًاعَبْدُهُ وَرَسُوْلُهُ. اَللّٰهُمَّ اجْعَلْنِىْ مِنَ التَّوَّابِيْنَ وَاجْعَلْنِىْ مِنَ الْمُتَطَهِّرِيْنَ، وَجْعَلْنِيْ مِنْ عِبَادِكَ الصَّالِحِيْنَ",
    "Aku bersaksi, tidak ada Tuhan selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya, dan aku mengaku bahwa Nabi Muhammad itu adalah hamba dan Utusan Allah. Ya Allah, jadikanlah aku dari golongan orang-orang yang bertaubat dan jadikanlah aku dari golongan orang-orang yang suci dan jadikanlah aku dari golongan hamba-hamba Mu yang shaleh"
  ],
  [
    "going to take a shower",
    "اَللّٰهُمَّ اغْفِرْلِى ذَنْبِى وَوَسِّعْ لِى فِىْ دَارِىْ وَبَارِكْ لِىْ فِىْ رِزْقِىْ",
    "Ya Allah ampunilah dosa kesalahanku dan berilah keluasaan di rumahku serta berkahilah pada rezekiku"
  ],
];

final List quotesAndTranslationsCat2 = const [];

List<String> fillersQuotes = const [
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
  "Don't be too hard on yourself, because the final outcome of all affairs in this world has been ordained by Allah. If something is destined to get away from you, it will never come to you. But if it is with you, then you will not be able to run away from it. Umar bin Khattab.",
  "Allah does not see your forms and possessions, but He sees your hearts and deeds. Prophet Muhammad SAW",
  "Think positive, no matter how hard your life is. Ali. Bin Abi Talib",
  "So actually with difficulties there is convenience. QS. Al Insyirah 5",
  "The richest person is the one who accepts the distribution (taqdir) from Allah with pleasure. Ali bin Husayn",
  "Whoever is not grateful for a little, then he will not be able to be grateful for something much. HR. Ahmad",
  "filler x 1",
  "filler x 2",
  "filler x 3",
  "filler x 4",
  "filler x 5",
  "filler x 6",
  "filler x 7",
  "filler x 8",
  "filler x 9",
  "filler x 10",
  "filler x 11",
  "filler x 12",
  "filler x 13",
  "filler x 14",
  "filler x 15",
  "filler x 16",
  "filler x 17",
  "filler x 18",
  "filler x 19",
  "filler x 20",
  "filler x 21",
  "filler x 22",
  "filler x 23",
  "filler x 24",
];
