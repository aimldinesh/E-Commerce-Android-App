import 'package:flutter/material.dart';

import '../minor_screen/subcateg_products.dart';

class SlideBar extends StatelessWidget {
  final String maincategName;
  const SlideBar({super.key, required this.maincategName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.height * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                maincategName == 'beauty'
                    ? const Text('')
                    : const Text('<<', style: style),
                Text(maincategName.toUpperCase(), style: style),
                maincategName == 'men'
                    ? const Text('')
                    : const Text('>>', style: style),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
    color: Colors.brown,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 10);

class SubcategModel extends StatelessWidget {
  final String mainCategName;
  final String subCategNAme;
  final String assetName;
  final String subcategLabel;
  const SubcategModel(
      {super.key,
      required this.mainCategName,
      required this.subCategNAme,
      required this.assetName,
      required this.subcategLabel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategProducts(
                      maincategName: mainCategName,
                      subcategName: subCategNAme,
                    )));
      },
      child: Column(
        children: [
          SizedBox(
            height: 67,
            width: 67,
            child: Image(
              image: AssetImage(assetName),
            ),
          ),
          Text(
            subcategLabel,
            style: const TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}

class CategHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategHeaderLabel({super.key, required this.headerLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        headerLabel,
        style: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
      ),
    );
  }
}
