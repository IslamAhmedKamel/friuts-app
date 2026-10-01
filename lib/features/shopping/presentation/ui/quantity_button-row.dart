import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/features/shopping/presentation/ui/quantity_button.dart';

class QuantityButtonRow extends StatefulWidget {
  const QuantityButtonRow({super.key});

  @override
  State<QuantityButtonRow> createState() => _QuantityButtonRowState();
}

class _QuantityButtonRowState extends State<QuantityButtonRow> {
  int quantity = 1;

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decreaseQuantity() {
    if (quantity == 1) return;

    setState(() {
      quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          QuantityButton(icon: Icons.remove, onTap: decreaseQuantity),
          SizedBox(
            width: 35.w,
            child: Center(
              child: Text(
                '$quantity',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          QuantityButton(icon: Icons.add, onTap: increaseQuantity),
        ],
      ),
    );
  }
}
