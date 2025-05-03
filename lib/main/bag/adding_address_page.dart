import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
class AddingAddressPage extends StatefulWidget {
  const AddingAddressPage({super.key});

  @override
  State<AddingAddressPage> createState() => _AddingAddressPageState();
}

class _AddingAddressPageState extends State<AddingAddressPage> {
  String? selectedCountry; // 🟢 Bu yerda o'zgaruvchini e'lon qildik
  final TextEditingController _countryController = TextEditingController();

  @override
  void dispose() {
    _countryController.dispose(); // 🧹 Memory tozalash
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding Shipping Address',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 40,),

            TextFormField(
              obscureText: true,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                labelText: ' Full name',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                labelText: ' Address',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            TextFormField(
              obscureText: true,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                labelText: 'City',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            TextFormField(
              obscureText: true,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                labelText: ' State/Province/Region',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            TextFormField(
              obscureText: true,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              decoration: const InputDecoration(
                labelText: ' Zip Code (Postal Code)',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Country',
                suffixIcon: Icon(Icons.arrow_drop_down),
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: selectedCountry),
              onTap: () {
                showCountryPicker(
                  context: context,
                  onSelect: (Country country) {
                    setState(() {
                      selectedCountry = country.name;
                    });
                  },
                );
              },
            ),
            SizedBox(height: 40,),

            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ),
                  ),
                ),
                child: Text(
                  'SAVE ADDRESS',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
