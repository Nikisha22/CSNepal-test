import 'package:flutter/material.dart';

class ShipmentDetail extends StatelessWidget {
  final String shipmentNumber;
  final String origin;
  final String destination;
  final String buyer;
  final String buyerCompany;
  final String imagePath;

  ShipmentDetail({
    required this.shipmentNumber,
    required this.origin,
    required this.destination,
    required this.buyer,
    required this.buyerCompany,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipment number',
                style: TextStyle(color: Colors.grey),
              ),
              Image.asset(
                imagePath,
                height: 30, 
                width: 30,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Text(
            shipmentNumber,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.green,
                  size: 16,
                ),
              ),
              SizedBox(width: 4),
              Expanded(
                child: Text(origin),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_downward,
                  color: Colors.blue,
                  size: 16,
                ),
              ),
              SizedBox(width: 4),
              Expanded(
                child: Text(destination),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Buyer',
            style: TextStyle(color: Colors.grey),
          ),
          Text(buyer),
          Text(buyerCompany),
        ],
      ),
    );
  }
}
