import '../../helper/export_helper.dart';

class OurTopPicksCard extends StatelessWidget {
  final TopPicksModel? topPicksModel;

  const OurTopPicksCard({
    super.key,
    this.topPicksModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
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
                    height: 210,
                    width: 137,
                    child: Image.asset(
                      topPicksModel!.imagePath!,
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
              topPicksModel!.bookName!,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              topPicksModel!.author!,
              style: const TextStyle(fontSize: 13, color: Color(0x50242126)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
