import 'package:clothes_shop_project/main/catalog/catalog_page/catalog_page.dart';
import 'package:flutter/material.dart';

class WomenTabWidget extends StatelessWidget {
  final String type;
  final String title;
  final String newImage;
  final String clotheImage;
  final String shoesImage;
  final String accesoriesImage;

  const WomenTabWidget({
    super.key,
    required this.type,
    required this.title,
    required this.newImage,
    required this.clotheImage,
    required this.shoesImage,
    required this.accesoriesImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    type,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            buildCategoryTile(context, 'New', newImage),
            SizedBox(height: 12),
            buildCategoryTile(context, 'Clothes', clotheImage),
            SizedBox(height: 12),
            buildCategoryTile(context, 'Shoes', shoesImage),
            SizedBox(height: 12),
            buildCategoryTile(context, 'Accessories', accesoriesImage),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryTile(
      BuildContext context, String label, String imagePath) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        if (label == 'New') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CatalogPage()),
          );
        } else if (label == 'Clothes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CatalogPage()),
          );
        } else if (label == 'Shoes') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CatalogPage()),
          );
        } else if (label == 'Accessories') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CatalogPage()),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
          ],
        ),
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  height: 100,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
