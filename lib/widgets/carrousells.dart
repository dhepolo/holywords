import 'package:flutter/material.dart';
import '../logic/random.dart';
import '../widgets/constants.dart';

bool changeL = true;

class Carroussel extends StatefulWidget {
  @override
  _CarrousselState createState() => new _CarrousselState();
}

class _CarrousselState extends State<Carroussel> {
  PageController controller;
  int currentpage = 0;

  @override
  initState() {
    super.initState();
    controller = new PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 0.5,
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Randomizer randomizer = Randomizer();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Haditz"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
            height: 130.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pix/mosque.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Column(children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text("بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم ",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blue[300],
                  ))
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: new PageView.builder(
                itemCount: 3,
                controller: controller,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
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
                            if (changeL == false)
                              Text(
                                realQuotes[index],
                                style: kPtsansTextStyle,
                              ),
                            SizedBox(
                              height: 20.0,
                            ),
                            if (changeL == false)
                              Text(
                                randomizer.wordsToDisplay[index].real[0],
                                style: kPtsansTextStyle,
                              ),
                          ]),
                    )
                  ]);
                }),
          ),
        ],
      )),
    );
  }

  //CODE FOR SCALE CARDS
  builder(int index) {
    return new AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        double value = 1.0;
        if (controller.position.haveDimensions) {
          value = controller.page - index;
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
        }

        return new Center(
          child: new SizedBox(
            height: Curves.easeOut.transform(value) * 300,
            width: Curves.easeOut.transform(value) * 250,
            child: child,
          ),
        );
      },
      child: new Container(
        margin: const EdgeInsets.all(8.0),
        color: index % 2 == 0 ? Colors.blue : Colors.red,
      ),
    );
  }

  List<String> realQuotes = [
    "Don't be too hard on yourself, because the final outcome of all affairs in this world has been ordained by Allah. If something is destined to get away from you, it will never come to you. But if it is with you, then you will not be able to run away from it. Umar bin Khattab.",
    "Allah does not see your forms and possessions, but He sees your hearts and deeds. Prophet Muhammad SAW",
    "Think positive, no matter how hard your life is. Ali. Bin Abi Talib",
    "So actually with difficulties there is convenience. QS. Al Insyirah 5",
    "The richest person is the one who accepts the distribution (taqdir) from Allah with pleasure. Ali bin Husayn",
    "Whoever is not grateful for a little, then he will not be able to be grateful for something much. HR. Ahmad",
  ];
  List<String> fillerQuotes = [
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
