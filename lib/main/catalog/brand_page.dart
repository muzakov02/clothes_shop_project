import 'package:flutter/material.dart';

class BrandPage extends StatefulWidget {
  const BrandPage({super.key});

  @override
  State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  final List<String> brandNames = [
    'adidas',
    'adidas Originals',
    'Blend',
    'Boutique Moschino',
    'Champion',
    'Diesel',
    'Jack & Jones',
    'Naf Naf',
    'Red Valentino',
    's.Oliver',
  ];

  List<String> selectedBrands = [];

  void _applyBrands() {
    Navigator.pop(context);
  }

  void _discardFilters() {
    setState(() {
      selectedBrands.clear(); // Filtlarni tozalash
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Brand')),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: ' Search',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: brandNames.length,
              itemBuilder: (context, index) {
                bool isSelected = selectedBrands.contains(brandNames[index]);

                return ListTile(
                  title: Text(
                    brandNames[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? Colors.red : Colors.black, // Matn rangi
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        if (isSelected) {
                          selectedBrands.remove(brandNames[index]); // Agar tanlangan bo'lsa, olib tashla
                        } else {
                          selectedBrands.add(brandNames[index]); // Tanlanmagan bo'lsa, qo'sh
                        }
                      });
                    },
                    icon: Icon(
                      isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                      color: isSelected ? Colors.red : null, // Belgining rangi
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.white)
              ]
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _discardFilters,
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        side: BorderSide(color: Colors.red),
                      ),
                      child: Text('Discard'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _applyBrands,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text('Apply'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
