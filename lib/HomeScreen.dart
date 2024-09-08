import 'package:flutter/material.dart';
import 'components/ads_data.dart';
import 'grid_items.dart'; // Import your ads_data file

class HomeScreen extends StatelessWidget {
  final AdsData adsData = AdsData(); // Access the ads data from the AdsData class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deliver To',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Near Pusat Layanan',
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'What shall we deliver?',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Row(
              children: [
                OutlinedButton.icon(
                  icon: Icon(Icons.delivery_dining, color: Colors.green),
                  label: Text('Delivery', style: TextStyle(color: Colors.green, fontSize: 12)),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.green),
                    minimumSize: Size(102, 28),
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 6),
                OutlinedButton.icon(
                  icon: Icon(Icons.local_offer, color: Colors.orange),
                  label: Text('Dine Out', style: TextStyle(color: Colors.orange, fontSize: 12)),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.orange),
                    minimumSize: Size(102, 28),
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 6),
                OutlinedButton.icon(
                  icon: Icon(Icons.store, color: Colors.blue),
                  label: Text('Pickup', style: TextStyle(color: Colors.blue, fontSize: 12)),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    minimumSize: Size(102, 28),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(adsData.adsMenu.length, (index) {
                    final ad = adsData.adsMenu[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                ad.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Image.asset(
                              ad.image,
                              width: 258,
                              height: 132,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(ad.description),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                ad.from,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 4, // Menentukan jumlah item per baris
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),  // Disable scrolling inside grid
              children: [
                buildGridItem(Icons.star, 'Best Rating!', () {
                }),
                buildGridItem(Icons.attach_money, 'All-in from 19k', () {
                }),
                buildGridItem(Icons.local_offer, 'Best Dine Out Deals', () {
                }),
                buildGridItem(Icons.breakfast_dining, 'Breakfast Bestie', () {
                }),
                buildGridItem(Icons.dinner_dining, 'Hearty Meal', () {
                }),
                buildGridItem(Icons.ramen_dining, 'Soup & Comfort', () {
                }),
                buildGridItem(Icons.local_fire_department, 'Spicy Festival', () {
                }),
                buildGridItem(Icons.restaurant, 'All Cuisines', () {
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build grid items
  Widget _buildGridItem(IconData icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 36),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

