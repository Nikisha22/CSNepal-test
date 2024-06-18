import 'package:flutter/material.dart';
import 'left_sidebar.dart';
import 'shipment_management_column.dart';
import 'shipment_details_column.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ShipmentManagementPage(),
      ),
    );
  }
}

class ShipmentManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left Sidebar
        Container(
          width: 300,
          color: Colors.grey[200],
          child: LeftSidebar(),
        ),
        // Middle Column (Shipment Management)
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.white,
            child: ShipmentManagementColumn(),
          ),
        ),
        // Right Column (Shipment Details)
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.grey[100],
            child: ShipmentDetailsColumn(),
          ),
        ),
      ],
    );
  }
}
