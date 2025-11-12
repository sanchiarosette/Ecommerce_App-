import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PromotionalBanner extends StatefulWidget {
  const PromotionalBanner({Key? key}) : super(key: key);

  @override
  State<PromotionalBanner> createState() => _PromotionalBannerState();
}

class _PromotionalBannerState extends State<PromotionalBanner> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> _promotionalCards = [
    {
      'title': 'Buyzy',
      'subtitle': 'SPECIAL OFFER',
      'highlight': 'SUMMER SALE',
      'discount': 'UP TO 80% OFF',
      'gradient': [Colors.orange.shade400, Colors.red.shade400],
      'textColor': Colors.white,
    },
    {
      'title': 'New items with',
      'subtitle': 'Free shipping',
      'buttonText': 'Shop now',
      'gradient': [Colors.blue.shade400, Colors.purple.shade400],
      'textColor': Colors.white,
    },
    {
      'title': 'FLASH SALE',
      'subtitle': 'Limited Time',
      'highlight': '50% OFF',
      'discount': 'Everything',
      'gradient': [Colors.green.shade400, Colors.teal.shade400],
      'textColor': Colors.white,
    },
    {
      'title': 'EXCLUSIVE DEALS',
      'subtitle': 'Members Only',
      'highlight': 'VIP OFFERS',
      'discount': 'Extra 20% OFF',
      'gradient': [const Color(0xFF8B5FBF), const Color(0xFF6A5ACD)], // Light purple to darker purple
      'textColor': Colors.white,
    },
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        final nextPage = (_currentPage + 1) % _promotionalCards.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        _startAutoSlide();
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _promotionalCards.length,
              itemBuilder: (context, index) {
                final card = _promotionalCards[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: card['gradient'],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (card['title'] != null)
                          Text(
                            card['title'],
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: card['textColor'],
                            ),
                          ),
                        if (card['subtitle'] != null) ...[
                          SizedBox(height: 1.h),
                          Text(
                            card['subtitle'],
                            style: GoogleFonts.inter(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: card['textColor'],
                            ),
                          ),
                        ],
                        if (card['highlight'] != null) ...[
                          SizedBox(height: 2.h),
                          Text(
                            card['highlight'],
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: card['textColor'],
                            ),
                          ),
                        ],
                        if (card['discount'] != null) ...[
                          SizedBox(height: 1.h),
                          Text(
                            card['discount'],
                            style: GoogleFonts.inter(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w600,
                              color: card['textColor'],
                            ),
                          ),
                        ],
                        if (card['buttonText'] != null) ...[
                          SizedBox(height: 4.h),
                          ElevatedButton(
                            onPressed: () {
                              // Handle shop now action
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: card['gradient'][0],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 4.h,
                              ),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              card['buttonText'],
                              style: GoogleFonts.inter(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 8.h),
          // Progress indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _promotionalCards.length,
              (index) => Container(
                width: 6.w,
                height: 6.h,
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index
                      ? const Color(0xFF8B5FBF) // Light purple
                      : Colors.grey.shade400,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}