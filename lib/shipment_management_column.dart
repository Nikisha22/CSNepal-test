import 'package:cs_nepal/shipment_card.dart';
import 'package:flutter/material.dart';

class ShipmentManagementColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shipment Management',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('View all'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Active'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('View all'),
              ),
            ],
          ),
          SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: [
                ShipmentDetail(
                  shipmentNumber: 'UA-145009BS',
                  origin: 'Athens, GRC\nPiraeus Harbour',
                  destination: 'Tallinn, EST\nHektor Container Hotel',
                  buyer: 'Milton Hines',
                  buyerCompany: 'Fort Worth',
                  imagePath: 'lib/Images/ba.png',
                ),
                ShipmentDetail(
                  shipmentNumber: 'MK-549893XC',
                  origin: 'Yingkou, CHN\nBayuquan District Yingkou',
                  destination: 'Abu Dhabi, UAE\nMina St - Zayed Port',
                  buyer: 'Gary Muncy',
                  buyerCompany: 'Leonard Krower & Sons',
                  imagePath: 'lib/Images/ba.png',
                ),
                ShipmentDetail(
                  shipmentNumber: 'DA-549893XC',
                  origin: 'Huelva, ESP\nPort of Huelva',
                  destination: 'Malaga, ESP\nPuerto de Malaga',
                  buyer: 'Robert Williams',
                  buyerCompany: 'LTD Industries',
                  imagePath: 'lib/Images/ba.png',
                ),
                ShipmentDetail(
                  shipmentNumber: 'PL-549893GH',
                  origin: 'Boston, USA\n27 Drydock Boston',
                  destination: 'Mecum Technologies\n65 Hartwell St, West Boylston',
                  buyer: 'Vernon Bueno',
                  buyerCompany: 'Luria\'s',
                  imagePath: 'lib/Images/ba.png',
                ),
                ShipmentDetail(
                  shipmentNumber: 'ND-911743BS',
                  origin: 'Yingkou, CHN\nBayuquan District Yingkou',
                  destination: 'Abu Dhabi, UAE\nMina St - Zayed Port',
                  buyer: 'Barry Green',
                  buyerCompany: 'J. K. Gill Company',
                  imagePath: 'lib/Images/ba.png',
                ),
                ShipmentDetail(
                  shipmentNumber: 'UK-549893CC',
                  origin: 'Yingkou, CHN\nBayuquan District Yingkou',
                  destination: 'Abu Dhabi, UAE\nMina St - Zayed Port',
                  buyer: 'Robert Nocera',
                  buyerCompany: 'Solution Welding',
                  imagePath: 'lib/Images/ba.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
