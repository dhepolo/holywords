import 'dart:math';

//randomizer
class Randomizer {
  List<Words> realToDisplay = [];
  List<Words> fillerToDisplay = [];
  List<Words> wordsToDisplay = [];

  void randomizer() {
    var rng = new Random();
    List<String> wordsSelected = [];
    for (int i = 0; i < 3; i++) {
      int upperBoundAn = words.length;
      int rngAn = rng.nextInt(upperBoundAn);
      realToDisplay.add(words[rngAn]);
      List<String> wordsAvailable = words[rngAn].arab;
      if (wordsSelected.length > 0) {
        for (int r = 0; r < wordsSelected.length; r++) {
          wordsAvailable.remove(wordsSelected[r]);
          if (wordsAvailable.length == 0) {
            wordsAvailable = wordsAvailable;
          }
        }
      }
      int upperBoundFd = wordsAvailable.length;
      int rngFd = rng.nextInt(upperBoundFd);
      wordsSelected.add(wordsAvailable[rngFd]);
    }

    wordsToDisplay = [
      Words(real: [wordsSelected[0]]),
      Words(filler: [wordsSelected[0]]),
      Words(filler: [wordsSelected[1]]),
    ];
    wordsToDisplay.shuffle();
    realToDisplay.shuffle();
    fillerToDisplay.shuffle();
  }
}

class Words {
  final List<String> real;
  final List<String> filler;
  final List<String> arab;

  Words({
    this.real,
    this.filler,
    this.arab,
  });
}

List<Words> words = [
  Words(real: [
    "Don't be too hard on yourself, because the final outcome of all affairs in this world has been ordained by Allah. If something is destined to get away from you, it will never come to you. But if it is with you, then you will not be able to run away from it. Umar bin Khattab.",
    "Allah does not see your forms and possessions, but He sees your hearts and deeds. Prophet Muhammad SAW",
    "Think positive, no matter how hard your life is. Ali. Bin Abi Talib",
    "So actually with difficulties there is convenience. QS. Al Insyirah 5",
    "The richest person is the one who accepts the distribution (taqdir) from Allah with pleasure. Ali bin Husayn",
    "Whoever is not grateful for a little, then he will not be able to be grateful for something much. HR. Ahmad",
  ], filler: [
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
  ], arab: [
    "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم ",
    "ِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ",
    "َلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْنَۙ",
    "الرَّحْمٰنِ الرَّحِيْمِۙ",
    "مٰلِكِ يَوْمِ الدِّيْنِۗ",
    "اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَعِيْنُۗ",
  ]),
];
