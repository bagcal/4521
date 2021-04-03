import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  int selectedRadio1 =0 ;



  setSelectedradio1(int val){
    setState(() {
      selectedRadio1=val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Browse cards'),
        backgroundColor: Color(0xFF08091C),
        elevation: 0.0,
          ),

      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),

          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/GeneralBG.png'),
                fit: BoxFit.cover,

              )

          ),
          child: ListWheelScrollView(
            itemExtent: 420,
            squeeze: 0.9,
            renderChildrenOutsideViewport: false,
            perspective:0.003,


              children: <Widget>[
              Container(
                child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/fool.jpg'),
              ),

                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/magician.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/highpriestess.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/empress.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/emperor.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/heirophant.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/lovers.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/chariot.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/strength.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/hermit.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/wheeloffortune.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/justice.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/hangedman.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/death.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/temperance.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/devil.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/tower.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/star.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/moon.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/sun.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/judgment.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/world.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/acewands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/2wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/3wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/4wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/5wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/6wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/7wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/8wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/9wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/10wands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/pagewands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/knightwands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/queenwands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/kingwands.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/acecups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/2cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/3cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/4cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/5cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/6cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/7cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/8cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/9cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/10cups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/pagecups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/knightcups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/queencups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/kingcups.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/aceswords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/2swords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/3swords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/4swords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/5swords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/6swords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/7swords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/8swords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/9swords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/10swords.jpg'),
                ),

                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/pageswords.jpg'),
                ),

                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/knightswords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/queenswords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/kingswords.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/acepent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/2pent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/3pent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/4pent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/5pent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/6pent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/7pent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/8pent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/9pent.jpg'),
                ), Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/10pent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/pagepent.jpg'),
                ), Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/knightpent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/queenpent.jpg'),
                ),
                Container(
                  child: Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/kingpent.jpg'),
                ),














              ],

          ),
        ),
      ),
    );
  }
}
