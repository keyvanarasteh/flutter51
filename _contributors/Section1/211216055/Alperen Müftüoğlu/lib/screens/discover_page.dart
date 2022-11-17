import 'package:angle_on/class/movie_card.dart';
import 'package:angle_on/components/movie_card_design.dart';
import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  @override
  State<DiscoverPage> createState() => _HomePageState();
}

class _HomePageState extends State<DiscoverPage> {
  List <bool> _selected = [false,true,true];
  @override
  List<MovieCard> cards = [
    MovieCard(movieImage: "assets/interstellar.png",title: "Interstellar",description: "Yıldızlararası, Christopher Nolan tarafından yönetilen epik bilimkurgu türündeki, 2014 yapımı ABD filmi.",director: "Christopher Nolan",starring: ["Matthew McConaughey,","Anne Hathaway,","Jessica Chastain,","Michael Caine"],detail: ["2h 49m","2014","Science Fiction","4.6/5"]),
    MovieCard(movieImage: "assets/seven.png",title: "Seven",description: "Filmde Hristiyanlık'ın 7 ölümcül günahını işleyenleri kendi vahşi yöntemleriyle öldüren bir seri katili ve onun peşindeki iki polis dedektifinin çabalarını konu alan bir film",director: "David Fincher",starring: ["Brad Pitt,","Morgan Freeman,","Gwyneth Paltrow,","Kevin Spacey"],detail: ["2h 7m","1995","Thriller","4.6/5"]),
    MovieCard(movieImage: "assets/contact.png",title: "Contact", description: "Mesaj, Carl Sagan'ın aynı adlı romanından beyaz perdeye uyarlanan 1997 yapımı bir bilimkurgu filmidir.", director: "Robert Zemeckis", starring: ["Dr. Eleanor Ann,", "Jodie Foster,", "Matthew McConaughey,", "James Woods,", "Tom Skerritt"], detail: ["2h 33m", "1997", "Sci-fi", "4.3/5"]),
    MovieCard(movieImage: "assets/fight_club.png",title: "Fight Club",description: "Tyler'ın liderliğinde bir dövüş kulübünün kuruluşuyla bu kulüpte sayıları elliyi aşmamak kaydıyla genç erkekler birbirleriyle dövüşmeye başlayacaklardır. Kısa sürede popüler hale gelen kulüp ve Tyler hızlı bir şekilde bu ölü jenerasyonun mesihi haline gelir.",director: "David Fincher",starring: ["Edward Norton","Brad Pitt","Helena Bonham Carter","Meat Loaf"],detail: ["2h 19m","1999","Action, Drama","4.4/5"]),
    MovieCard(movieImage: "assets/whiplash.png",title: "Whiplash",description: "Whiplash, 2014 çıkışlı Amerikan drama filmi", director: "Damien Chazelle", starring: ["Miles Teller,", "J. K. Simmons,"], detail: ["1h 46m", "2014", "Drama", "4,2/5"]),
    MovieCard(movieImage: "assets/before_sunrise.png",title: "Before Sunrise",description: "Gün Doğmadan Önce, yolları kesişen bir kadın ve bir erkeğin hikayesini anlatıyor. Sıradan bir Avrupa yolculuğu sırasında trende karşılaşıp tanışan iki farklı insan, Jesse ve Celine bu yolculuğa sıradışı bir şekilde sürdürürler.",director: " Richard Linklater",starring: ["Ethan Hawke","Julie Delpy"],detail: ["1h 17m","2004","Romantic","4/5"]),
    MovieCard(movieImage: "assets/recepivedik1.png",title: "Recep İvedik 1",description: "Recep İvedik,  sokakta bulduğu bir cüzdanın Antalyalı çok önemli bir iş adamına ait olduğunu öğrenince güneye doğru yola koyulur. Yol boyunca birbirinden komik sürprizlerle karşılaşan Recep sonunda Antalya'ya varır ve cüzdanı turizmci Muhsin Bey'e teslim eder. Muhsin Bey ona para ile otelinde kalmasını teklif eder. Recep bunu kabul etmez ve tam giderken, çocukluk aşkı Sibel'i görür ancak Sibel onu tanımaz. Bunun üzerine Recep otelde kalmayı kabul eder. Recep otelde Sibel'e yaranmaya çalışırken birbirinden komik olaylar yaşar.", director: "Togan Gökbakar", starring: ["Şahan Gökbakar"],  detail: ["1h 40m", "2007", "Comedy", "2,4/5"],),
    MovieCard(movieImage: "assets/recepivedik2.png",title: "Recep İvedik 2",description: "Recep'in tek akrabasi, kendisi gibi killi ve oldukça yasli babaannesidir. Babaanne, Recep'in yasadigi serkes, aylak hayati bırakip adam olmasini ister.",director: "Togan Gökbakar",starring: ["Şahan Gökbakar"],detail: ["1h 47m", "2009","Comedy","2.2/5"]),
    MovieCard(movieImage: "assets/recepivedik3.png",title: "Recep İvedik 3",description: "Babaannesinin ölümünden sonra depresyonda olan Recep'in evine beklenmedik bir ev arkadas gelir. Eve ihtiyaci olan bu genç hanim Recep'i depresyondan çikaran faktör olacaktir.",director: "Togan Gökbakar",starring: ["Şahan Gökbahar"],detail: ["1h 35m","2010","Comedy","2/5"]),
    MovieCard(movieImage: "assets/recepivedik4.png",title: "Recep İvedik 4",description: "Recep, çocukların antrenman yaptığı sahanın satıldığını duyunca, mahallede tek boş alan olan bu arsayı kendisi almaya karar verir.", director: "Togan Gökbakar", starring: ["Şahan Gökbakar"], detail: ["1h 57m", "2014", "Comedy", "1,9/5"], ),
    MovieCard(movieImage: "assets/recepivedik5.png",title: "Recep İvedik 5",description: "Recep, bir şoför tanıdığının vefatı üzerine, taziyeye gider ve onun son aldığı işi yerine getirmek için gönüllü olur.", director: "Togan Gökbakar", starring: ["Şahan Gökbakar"], detail: ["1h 40m", "2017", "Comedy", "1,6/5"], ),
    MovieCard(movieImage: "assets/recepivedik6.png",title: "Recep İvedik 6",description: "Recep İvedik 6, Çamaşırhane Film imzalı, Togan Gökbakar'ın yönettiği ve senaryosunu Şahan Gökbakar ile birlikte yazdığı, Başrollerinde Şahan Gökbakar ve Nurullah Çelebi'nin yer aldığı Türk komedi filmi.", director: "Togan Gökbakar", starring: ["Şahan Gökbakar"], detail: ["1h 50m", "2019", "Comedy", "1,4/5"], ),
    MovieCard(movieImage: "assets/inception.png",title: "Incepiton",description: "Inception, Christopher Nolan tarafından yazılan ve yönetilen bilimkurgu türündeki ABD filmidir.", director: "Christopher Nolan", starring: ["Leonardo DiCaprio,", "Cillian Murphy,", "Tom Hardy,"], detail: ["2h 28m", "2010", "Sci-fi", "4,6"]),
  ];
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
            elevation: 0,
            centerTitle: true,
            //AppBar title
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Disc",
                    style: TextStyle(
                        color: AppConstants.secondAngleOnColor,
                        fontWeight: FontWeight.bold,
                    )
                ),
                Text(
                    "o",
                    style: TextStyle(
                      color: AppConstants.secondAngleOnColor,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(color: AppConstants.secondAngleOnColor,blurRadius: 30,)
                      ]
                    )
                ),
                Text(
                    "ver",
                    style: TextStyle(
                      color: AppConstants.secondAngleOnColor,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ],
            ),
        ),
        //Search
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0,top: 8,bottom: 8),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppConstants.thirdAngleOnColor,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: TextField(
                    style: TextStyle(color: AppConstants.secondAngleOnColor),
                    cursorColor: AppConstants.secondAngleOnColor,
                    decoration: InputDecoration(
                      hintText: "Title, Director, or Celeb",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Color.fromARGB(255, 77, 77, 93),fontWeight: FontWeight.bold),
                      prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 77, 77, 93),),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 16),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: AppConstants.primaryAngleOnColor,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black38,width: 0.3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5,
                      spreadRadius: 0.5,
                      offset: Offset(0, 3)
                    )
                  ]
                ),
                child: IconButton(
                  splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: (){},
                    icon: Icon(Icons.tune,color: Colors.white,)
                ),
              ),
            )
          ],
        ),
        //types
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:16),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected[0] = false;
                        _selected[1] = true;
                        _selected[2] = true;
                      });
                    },
                    child: Container(
                      height: 65,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppConstants.thirdAngleOnColor,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(4))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              Icons.slideshow,
                              color: _selected[0]
                                  ? Color.fromARGB(255, 77, 77, 93)
                                  : AppConstants.secondAngleOnColor,
                            shadows: [
                              _selected[0]
                                  ? Shadow()
                                  : Shadow(
                                  color: AppConstants.secondAngleOnColor,
                                  blurRadius: 20)
                            ],
                          ),
                          SizedBox(width: 10,),
                          Text(
                              "Movies",
                              style: TextStyle(
                                  color:
                                  _selected[0]
                                      ? Color.fromARGB(255, 77, 77, 93)
                                      : Colors.white,
                                fontWeight: FontWeight.bold
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected[0] = true;
                        _selected[1] = false;
                        _selected[2] = true;
                      });
                    },
                    child: Container(
                      height: 65,
                      width: 50,
                      decoration: BoxDecoration(
                          color: AppConstants.thirdAngleOnColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.theater_comedy,
                            color:
                                _selected[1]
                                    ? Color.fromARGB(255, 77, 77, 93)
                                    :AppConstants.secondAngleOnColor,
                            shadows: [
                              _selected[1]
                                  ? Shadow()
                                  : Shadow(
                                  color: AppConstants.secondAngleOnColor,
                                  blurRadius: 20)
                            ],
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Series",
                            style: TextStyle(
                                color: _selected[1]
                                    ?Color.fromARGB(255, 77, 77, 93)
                                    : Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected[0] = true;
                        _selected[1] = true;
                        _selected[2] = false;
                      });
                    },
                    child: Container(
                      height: 65,
                      width: 50,
                      decoration: BoxDecoration(
                          color: AppConstants.thirdAngleOnColor,
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(4))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mic_none_rounded,
                            color: _selected[2]
                                ? Color.fromARGB(255, 77, 77, 93)
                                : AppConstants.secondAngleOnColor,
                            shadows: [
                              _selected[2]
                                  ? Shadow()
                                  : Shadow(
                                  color: AppConstants.secondAngleOnColor,
                                  blurRadius: 20)
                            ],
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Podcasts",
                            style: TextStyle(
                                color:
                                _selected[2]
                                    ? Color.fromARGB(255, 77, 77, 93)
                                    : Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 9/12,
                crossAxisCount: 2,
                mainAxisSpacing: Checkbox.width,
                crossAxisSpacing: Checkbox.width),
            itemCount: cards.length,

            shrinkWrap: true,
            // physics: BouncingScrollPhysics(),
            itemBuilder: (context, index)
            {
              return MovieCardDesign(
                item: cards[index],
              );
            },
          ),
        )
      ],
    );
  }
}
