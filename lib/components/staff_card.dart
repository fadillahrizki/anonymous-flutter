import 'package:flutter/material.dart';

import '../constants/custom_color.dart';

class StaffCard extends StatelessWidget {
  const StaffCard({
    super.key,
    required this.item,
    required this.isActive,
  });

  final String item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, '/store/staff/detail');
        },
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        leading: CircleAvatar(
          child: Text(
            item,
            style: TextStyle(fontSize: 10),
          ),
        ),
        title: Text(item),
        trailing: IconButton(
          icon: Icon(isActive ? Icons.archive : Icons.unarchive),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                content: Text(
                    "Apakah Anda yakin ingin ${isActive ? 'mengarsipkannya' : 'mengaktifkannya'}?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Batal",
                      style: TextStyle(color: CustomColor().primary),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      isActive ? "Arsipkan" : "Aktifkan",
                      style: TextStyle(
                          color: isActive ? Colors.red : Colors.green),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
