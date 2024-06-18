import 'dart:ui';

import 'package:flutter/material.dart';

class ShipmentDetailsColumn extends StatefulWidget {
  @override
  _ShipmentDetailsColumnState createState() => _ShipmentDetailsColumnState();
}

class _ShipmentDetailsColumnState extends State<ShipmentDetailsColumn> {
  String _activeTab = 'Information';
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title, status, email, and phone row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Shipment number and status
              Row(
                children: [
                  Text(
                    'UA-145009BS',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.circle, color: Colors.blue, size: 12),
                  SizedBox(width: 4),
                  Text(
                    'On way',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              // Email and Phone buttons
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle phone button press
                    },
                    child: Text('Phone'),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Handle email button press
                    },
                    child: Text('Email'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          // Tabs row
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.blue, width: 2)),
            ),
            child: Row(
              children: [
                _tabButton('Information'),
                _tabButton('Vehicle info'),
                _tabButton('Company'),
                _tabButton('Billing'),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Conditionally show detailed content
          _showDetails
              ? Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image thumbnails and Documents button row
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                _imageThumbnail('lib/Images/ba.png'),
                                _imageThumbnail('lib/Images/ba.png'),
                                _imageThumbnail('lib/Images/ba.png'),
                                _imageThumbnail('lib/Images/ba.png'),
                                _imageThumbnail('lib/Images/bb.png'),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Documents'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      // Load capacity with blurred image and overlay text
                      Stack(
                        children: [
                          // Blurred truck image
                          ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: double.infinity,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('lib/Images/a.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Overlaid text
                          Center(
                            child: Text(
                              '65%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      // Details row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _detailBox('Truck:\nIveco 80E190'),
                          _detailBox('Weight:\n7,340 kg'),
                          _detailBox('Pallets:\n13/20'),
                          _detailBox('Space:\n65% / 35%'),
                          _detailBox('Volume:\n18 m³'),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text('Route map'),
                      SizedBox(height: 16),
                      Expanded(
                        child: Image.asset(
                          'lib/Images/map.png', // Ensure this is the correct path to your local image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(), // Empty container when details are not shown
        ],
      ),
    );
  }

  Widget _tabButton(String title) {
    bool isActive = _activeTab == title;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _activeTab = title;
            _showDetails = (_activeTab == 'Vehicle info');
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: isActive ? Colors.blue : Colors.transparent, width: 2),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.blue : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _imageThumbnail(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _detailBox(String text) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
