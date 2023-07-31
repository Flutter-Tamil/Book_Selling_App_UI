import '../helper/export_helper.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;
  final _pageOptions = [
    _MainContent(),
    SearchScreen(),
    WishlistScreen(),
    Cart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: AppDrawer(),
      backgroundColor: Colors.white,
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.pink,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedIconTheme: IconThemeData(color: Colors.red),
          selectedIconTheme: IconThemeData(color: Colors.amber),
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xFF000000),
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: "WishList",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              label: "Cart",
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(250)),
      child: Drawer(
        child: Drawer(
          child: ListView(
            children: const [
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.home,
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text(
                  "Our Books",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.book,
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text(
                  "Our Stores",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.store,
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text(
                  "Careers",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.work,
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text(
                  "Sell With Us",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.attach_money,
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text(
                  "Newsletter",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.library_books,
                  color: Colors.pink,
                ),
              ),
              ListTile(
                title: Text(
                  "Account",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.person,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        AppBar01(),
        Container(
            height: 350.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: OurTopPicks.length,
              itemBuilder: (context, index) {
                return OurTopPicksCard(
                  topPicksModel: OurTopPicks[index],
                );
              },
            )),
        TextBestSellers,
        Container(
            height: 350.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: BestSellerController().bestSellersBook.length,
              itemBuilder: (context, index) {
                return BestSellersCard(
                  bestSellerModel:
                      BestSellerController().bestSellersBook[index],
                );
              },
            )),
        TextGenres,
        TextRecentlyViewed,
        Container(
            height: 350.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: BestSellerController().bestSellersBook.length,
              itemBuilder: (context, index) {
                return RecentlyViewedCard(
                  recentlyViewedModel:
                      RecentlyViewedController().RecentlyViewedBook[index],
                );
              },
            )),
        TextMonthlyNewsletter,
        MonthlyNewsletterCard
      ],
    );
  }
}

class AppBar01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: Container(
            child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              const Expanded(
                child: Text(
                  "Our Top Picks",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    iconSize: 30,
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                ),
              )
            ],
          ),
        ])));
  }
}

Widget get MonthlyNewsletterCard => Padding(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: const Color(0x50EFEFEF),
          height: 350,
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  "Receive our monthly newsletter and receive updates on stock, books and the occasional promotion.",
                  style: TextStyle(color: Color(0x50212121)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x80EFEFEF), width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Color(0x75000000)),
                    hintText: "Name",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink, width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x80EFEFEF), width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Color(0x75000000)),
                    hintText: "Email Adreess",
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      minWidth: 160,
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {},
                      child: const Text(
                        "Sign In",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );

Widget get Stars => const Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.pink,
        ),
        Icon(
          Icons.star,
          color: Colors.pink,
        ),
        Icon(
          Icons.star,
          color: Colors.pink,
        ),
        Icon(
          Icons.star,
          color: Colors.pink,
        ),
        Icon(
          Icons.star,
          color: Colors.pink,
        )
      ],
    );

Widget get TextBestSellers => const Padding(
      padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: Text(
        "Bestsellers",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );

Widget get TextGenres => const Padding(
      padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: Text(
        "Genres",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );

Widget get TextRecentlyViewed => const Padding(
      padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: Text(
        "Recently Viewed",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );

Widget get TextMonthlyNewsletter => const Padding(
      padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: Text(
        "Monthly Newsletter",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
    );
