import 'package:clothes_shop_project/main/catalog/brand_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart'; // range slider uchun package kerak

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  State<FiltersPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FiltersPage> {
  double _lowerValue = 50;
  double _upperValue = 150;

  final List<Color> availableColors = [
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.brown[200]!,
    Colors.orange,
    Colors.blue,
  ];
  List<Color> selectedColors = [];

  final List<String> sizes = ['XS', 'S', 'M', 'L', 'XL'];
  String? selectedSize;

  final List<String> categories = ['All', 'Women', 'Men', 'Boys', 'Girls'];
  String selectedCategory = 'All';

  void _applyFilters() {
    Navigator.pop(context); // or apply logic
  }

  void _discardFilters() {
    setState(() {
      _lowerValue = 50;
      _upperValue = 150;
      selectedColors.clear(); // <<<<<<<<<<<<<<<
      selectedSize = null;
      selectedCategory = 'All';
    });
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Price range', style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 10),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white)],
                  ),
                  child: FlutterSlider(
                    values: [_lowerValue, _upperValue],
                    rangeSlider: true,
                    max: 300,
                    min: 0,
                    step: FlutterSliderStep(step: 1),
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      setState(() {
                        _lowerValue = lowerValue;
                        _upperValue = upperValue;
                      });
                    },
                    handler: FlutterSliderHandler(
                      decoration: BoxDecoration(),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.red, // Qizil dumaloq
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    rightHandler: FlutterSliderHandler(
                      decoration: BoxDecoration(),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    trackBar: FlutterSliderTrackBar(
                      activeTrackBar: BoxDecoration(
                        color: Colors.red,
                      ),
                      inactiveTrackBar: BoxDecoration(
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${_lowerValue.round()}'),
                      Text('\$${_upperValue.round()}'),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Colors', style: TextStyle(fontSize: 18)),
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white)],
                  ),
                  child: Row(
                    children: availableColors.map((color) {
                      bool isSelected = selectedColors.contains(color); // ✔️ Bu yer o'zgardi
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedColors.remove(color); // Agar tanlangan bo'lsa, olib tashla
                            } else {
                              selectedColors.add(color); // Aks holda qo'sh
                            }
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                            border: isSelected
                                ? Border.all(color: Colors.red, width: 2) // Tanlangan bo'lsa qizil border
                                : null,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Sizes', style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white)],
                  ),
                  child: Center(
                    child: Wrap(
                      spacing: 12,
                      runSpacing: 12, // Yana yaxshi ko'rinish uchun
                      children: sizes.map((size) {
                        bool isSelected = selectedSize == size;
                        return ChoiceChip(
                          label: Text(
                            size,
                            style: TextStyle(
                              fontSize: 12, // Yozuv hajmi katta
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                          selected: isSelected,
                          showCheckmark: false, // <<<<<<<<<<<< check belgisi chiqarilmaydi
                          onSelected: (selected) {
                            setState(() {
                              selectedSize = selected ? size : null;
                            });
                          },
                          selectedColor: Colors.red,
                          backgroundColor: Colors.grey[200],
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Chip kattalashdi

                        );
                      }).toList(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Category', style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.white)]),
                  child: Center(
                    child: Wrap(
                      spacing: 10,
                      children: categories.map((category) {
                        bool isSelected = selectedCategory == category;
                        return ChoiceChip(
                          label: Text(category),
                          selected: isSelected,
                          onSelected: (selected) {
                            setState(() {
                              selectedCategory = category;
                            });
                          },
                          selectedColor: Colors.red,
                          backgroundColor: Colors.grey[200],
                          labelStyle: TextStyle(
                              color: isSelected ? Colors.white : Colors.black),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.white)]),
                  child: ListTile(
                    title: Text('Brand', style: TextStyle(fontSize: 18)),
                    subtitle: Text('adidas Originals, Jack & Jones, s.Oliver'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BrandPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // Discard and Apply buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.white)
                ]
              ),
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
                      onPressed: _applyFilters,
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
