import '../../helper/export_helper.dart';

class RecentlyViewedCard extends StatelessWidget {
  final RecentlyViewedModel? recentlyViewedModel;

  const RecentlyViewedCard({super.key, this.recentlyViewedModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 5, 0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color(0x50000000),
                blurRadius: 10.0, // has the effect of softening the shadow
                offset: Offset(
                  0, // horizontal, move right
                  10.0, // vertical, move down
                ),
              ),
            ]),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 240,
                    width: 157,
                    child: Image.asset(
                      recentlyViewedModel!.imagePath!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              recentlyViewedModel!.bookName!,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              recentlyViewedModel!.author!,
              style: const TextStyle(fontSize: 13, color: Color(0x50242126)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
