import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_app/core/utils/app_assets.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_styles.dart';
import 'package:gap/gap.dart';

class AdsPageView extends StatefulWidget {
  const AdsPageView({super.key});

  @override
  State<AdsPageView> createState() => _AdsPageViewState();
}

class _AdsPageViewState extends State<AdsPageView> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  // بيانات الصور والنصوص
  final List<Map<String, String>> _ads = [
    {"image": AppAssets.ads1, "title": "Recomended\nRecipe Today"},
    {"image": AppAssets.ads3, "title": "Fresh Fruits\nEvery Day"},
    {"image": AppAssets.ads3, "title": "Best Offers\nFor You"},
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.20,
          child: PageView.builder(
            controller: _controller,
            itemCount: _ads.length,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            itemBuilder: (context, index) {
              return _buildAdCard(
                image: _ads[index]["image"]!,
                title: _ads[index]["title"]!,
              );
            },
          ),
        ),
        Gap(12.h),
        // مؤشر النقاط
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _ads.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              height: 8.h,
              width: _currentIndex == index ? 25.w : 10.w,
              decoration: BoxDecoration(
                color: _currentIndex == index
                    ? AppColors.primColor
                    : Colors.grey.shade400,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAdCard({required String image, required String title}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(image, fit: BoxFit.cover),
          // طبقة شفافة عشان النص يبان
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.6)],
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            right: 20.w,
            bottom: 20.h,
            child: Text(
              title,
              style: AppStyles.style16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
