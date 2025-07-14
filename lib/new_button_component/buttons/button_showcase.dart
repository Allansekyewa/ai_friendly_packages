import 'package:components_trial/new_button_component/buttons/buttons_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:components_trial/core/enums/button_type.dart';

class AyinzaButtonTestScreen extends StatelessWidget {
  const AyinzaButtonTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            // === Existing Elevated Buttons ===
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Elevated 1',
              backgroundColor: Colors.blue,
              onPressed: () {},
              width: 140,
              height: 45,
            ),
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Elevated 2',
              backgroundColor: Colors.white,
              foregroundColor: Colors.purple,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onPressed: () {},
              width: 160,
              height: 50,
            ),

            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Elevated 3',
              backgroundColor: Colors.purple,
              borderSide: const BorderSide(color: Colors.red, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              onPressed: () {},
              width: 120,
              height: 40,
              textStyle: const TextStyle(color: Colors.white),
            ),

            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Dotted Elevated',
              backgroundColor: Colors.white,
              borderSide: const BorderSide(color: Colors.black),
              dashedBorder: true,
              dashPattern: [2, 1],
              borderRadius: BorderRadius.all(Radius.circular(3)),
              onPressed: () {},
              width: 160,
              height: 45,
              textStyle: const TextStyle(color: Colors.red),
            ),

            // === Existing Floating Buttons ===
            AyinzaButton(
              type: AyinzaButtonType.floating,
              icon: Icons.add,
              backgroundColor: Colors.orange,
              iconColor: Colors.white,
              onPressed: () {},
            ),
            AyinzaButton(
              type: AyinzaButtonType.floating,
              icon: Icons.star,
              backgroundColor: Colors.teal,
              iconColor: Colors.white,
              elevation: 8,
              onPressed: () {},
            ),
            AyinzaButton(
              type: AyinzaButtonType.floating,
              dashedBorder: true,
              backgroundColor: Colors.white,
              dashPattern: [5, 3],
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Colors.black),
              onPressed: () {},
              child: const Text(
                "Mail",
                style: TextStyle(color: Colors.black),
              ),
            ),

            // === Existing Two Segment Buttons ===
            AyinzaButton(
              type: AyinzaButtonType.twoSegment,
              leftSegmentIcon: Icons.thumb_up,
              rightSegmentChild: const Text("Like"),
              leftSegmentColor: Colors.blue.shade200,
              rightSegmentColor: Colors.white,
              onPressed: () {},
              leftFlex: 1,
              rightFlex: 2,
              width: 160,
              height: 75,
              leftSegmentBorderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              rightSegmentBorderRadius: BorderRadius.only(
                topRight: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              iconColor: Colors.white, // <-- This is important!
            ),

            AyinzaButton(
              type: AyinzaButtonType.twoSegment,
              firstText: 'Hello ',
              secondText: 'World',
              firstTextStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              secondTextStyle: const TextStyle(color: Colors.red),
              leftSegmentColor: Colors.grey.shade300,
              rightSegmentColor: Colors.yellow,
              leftSegmentIcon: Icons.help_outline,
              dashedBorder: true,
              //dashPattern: [1, 2],
              borderSide: const BorderSide(color: Colors.red),
              onPressed: () {},
              width: 200,
              height: 50,
            ),
            AyinzaButton(
              type: AyinzaButtonType.twoSegment,
              leftSegmentChild: const Icon(Icons.phone, color: Colors.white),
              rightSegmentChild: const Text("Call Me"),
              padding: EdgeInsets.all(2),
              leftSegmentColor: Colors.green,
              rightSegmentColor: Colors.green.shade100,
              onPressed: () {},
              width: 180,
              height: 45,
            ),

            // ===== New Buttons Added =====

            // Gradient Elevated Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Gradient',
              gradient: const LinearGradient(
                colors: [Colors.purple, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              textStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              onPressed: () {},
              width: 140,
              height: 45,
              borderRadius: BorderRadius.circular(1),
              elevation: 4,
            ),

            // Disabled Elevated Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Disabled',
              backgroundColor: Colors.grey.shade400,
              foregroundColor: Colors.white70,
              isEnabled: false,
              onPressed: () {},
              width: 140,
              height: 45,
            ),

            // Floating Button with Leading and Trailing Widgets
            AyinzaButton(
              type: AyinzaButtonType.floating,
              onPressed: () {},
              width: 150,
              height: 50,
              backgroundColor: Colors.indigo,
              borderRadius: BorderRadius.circular(25),
              splashColor: Colors.white24,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.cloud, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      'Upload',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.arrow_upward, color: Colors.white),
                  ],
                ),
              ),
            ),

            // Two Segment with Dashed Border & Icon Only Left
            AyinzaButton(
              type: AyinzaButtonType.twoSegment,
              leftSegmentIcon: Icons.warning,
              rightSegmentChild: const Text('Warning'),
              leftSegmentColor: Colors.red.shade300,
              rightSegmentColor: Colors.white,
              dashedBorder: true,
              dashPattern: [3, 3],
              borderSide: const BorderSide(color: Colors.red),
              onPressed: () {},
              width: 180,
              height: 50,
              leftSegmentBorderRadius: BorderRadius.circular(15),
              rightSegmentBorderRadius: BorderRadius.circular(15),
            ),

            // Elevated Button with trailing icon
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Next',
              trailingIcon: Icons.arrow_forward,
              backgroundColor: Colors.green,
              textStyle: const TextStyle(color: Colors.white),
              onPressed: () {},
              width: 140,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            // Custom Button with background image and overlay
            AyinzaButton(
              type: AyinzaButtonType.custom,
              onPressed: () {},
              width: 180,
              height: 50,
              backgroundImage: const AssetImage('assets/images/button_bg.png'),
              backgroundBlendMode: BlendMode.overlay,
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.circular(12),
              child: const Center(
                child: Text(
                  'Custom BG',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
            ),

            // ===== EXTENDED BUTTON SHOWCASE =====

            // Neon Glow Effect Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Neon Glow',
              backgroundColor: Colors.purple.shade800,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.6),
                  blurRadius: 15,
                  spreadRadius: 2,
                ),
                BoxShadow(
                  color: Colors.purple.withOpacity(0.3),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
              ],
              onPressed: () {},
              width: 150,
              height: 50,
              borderRadius: BorderRadius.circular(25),
            ),

            // Glass Morphism Button
            AyinzaButton(
              type: AyinzaButtonType.custom,
              text: 'Glass Effect',
              backgroundColor: Colors.white.withOpacity(0.2),
              border: Border.all(
                color: Colors.white.withOpacity(0.3),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ],
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              onPressed: () {},
              width: 140,
              height: 45,
              borderRadius: BorderRadius.circular(20),
            ),

            // Animated Gradient Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Rainbow',
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                  Colors.green,
                  Colors.blue,
                  Colors.indigo,
                  Colors.purple,
                ],
                stops: const [0.0, 0.14, 0.28, 0.42, 0.56, 0.70, 0.84],
              ),
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              onPressed: () {},
              width: 130,
              height: 45,
              borderRadius: BorderRadius.circular(22),
            ),

            // 3D Button with Deep Shadow
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: '3D Effect',
              backgroundColor: Colors.blue.shade600,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.shade900,
                  offset: const Offset(0, 4),
                  blurRadius: 0,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Colors.blue.shade300,
                  offset: const Offset(0, -2),
                  blurRadius: 0,
                  spreadRadius: 0,
                ),
              ],
              onPressed: () {},
              width: 120,
              height: 50,
              borderRadius: BorderRadius.circular(8),
            ),

            // Minimalist Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Minimal',
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black87,
              borderSide: const BorderSide(color: Colors.black54, width: 1),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              onPressed: () {},
              width: 100,
              height: 40,
              borderRadius: BorderRadius.circular(4),
            ),

            // Rounded Pill Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Pill Shape',
              backgroundColor: Colors.teal,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              onPressed: () {},
              width: 120,
              height: 35,
              borderRadius: BorderRadius.circular(50),
            ),

            // Icon Only Floating Button
            AyinzaButton(
              type: AyinzaButtonType.floating,
              icon: Icons.favorite,
              backgroundColor: Colors.red.shade400,
              iconColor: Colors.white,
              iconSize: 28,
              onPressed: () {},
              width: 60,
              height: 60,
              borderRadius: BorderRadius.circular(30),
            ),

            // Large Action Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'GET STARTED',
              backgroundColor: Colors.green.shade600,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1.2,
              ),
              onPressed: () {},
              width: 200,
              height: 55,
              borderRadius: BorderRadius.circular(12),
              elevation: 16,
            ),

            // Social Media Style Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              leadingIcon: Icons.facebook,
              text: 'Connect',
              backgroundColor: Colors.blue.shade700,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              iconColor: Colors.white,
              onPressed: () {},
              width: 140,
              height: 45,
              borderRadius: BorderRadius.circular(8),
              iconSpacing: 8,
            ),

            // Danger Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'DELETE',
              backgroundColor: Colors.red.shade600,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              borderSide: BorderSide(color: Colors.red.shade800, width: 2),
              onPressed: () {},
              width: 110,
              height: 40,
              borderRadius: BorderRadius.circular(6),
            ),

            // Success Button with Checkmark
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              leadingIcon: Icons.check_circle,
              text: 'Success',
              backgroundColor: Colors.green.shade500,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              iconColor: Colors.white,
              onPressed: () {},
              width: 130,
              height: 45,
              borderRadius: BorderRadius.circular(10),
              iconSpacing: 6,
            ),

            // Info Button with Dashed Border
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Learn More',
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.blue.shade700,
              dashedBorder: true,
              dashPattern: [8, 4],
              borderSide: const BorderSide(color: Colors.blue, width: 2),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              onPressed: () {},
              width: 140,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            // Premium Button with Gold Gradient
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'PREMIUM',
              gradient: const LinearGradient(
                colors: [Color(0xFFFFD700), Color(0xFFFFA500)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.orange.withOpacity(0.4),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
              onPressed: () {},
              width: 120,
              height: 45,
              borderRadius: BorderRadius.circular(10),
            ),

            // Compact Icon Button
            AyinzaButton(
              type: AyinzaButtonType.floating,
              icon: Icons.settings,
              backgroundColor: Colors.grey.shade300,
              iconColor: Colors.grey.shade700,
              onPressed: () {},
              width: 45,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            // Two Segment with Different Flex Ratios
            AyinzaButton(
              type: AyinzaButtonType.twoSegment,
              leftSegmentIcon: Icons.download,
              rightSegmentChild: const Text("Download File"),
              leftSegmentColor: Colors.blue.shade500,
              rightSegmentColor: Colors.blue.shade100,
              leftFlex: 1,
              rightFlex: 3,
              onPressed: () {},
              width: 200,
              height: 50,
              leftSegmentBorderRadius: BorderRadius.circular(8),
              rightSegmentBorderRadius: BorderRadius.circular(8),
            ),

            // Two Segment with Rich Text
            AyinzaButton(
              type: AyinzaButtonType.twoSegment,
              firstText: 'Price: ',
              secondText: '\$99.99',
              firstTextStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
              secondTextStyle: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              leftSegmentColor: Colors.grey.shade200,
              rightSegmentColor: Colors.white,
              leftSegmentIcon: Icons.shopping_cart,
              onPressed: () {},
              width: 160,
              height: 45,
            ),

            // Custom Button with Multiple Shadows
            AyinzaButton(
              type: AyinzaButtonType.custom,
              text: 'Layered',
              backgroundColor: Colors.indigo.shade600,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.indigo.shade900,
                  offset: const Offset(0, 4),
                  blurRadius: 0,
                ),
                BoxShadow(
                  color: Colors.indigo.shade300,
                  offset: const Offset(0, -2),
                  blurRadius: 0,
                ),
                BoxShadow(
                  color: Colors.indigo.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
              onPressed: () {},
              width: 130,
              height: 50,
              borderRadius: BorderRadius.circular(12),
            ),

            // Floating Button with Custom Shape
            AyinzaButton(
              type: AyinzaButtonType.floating,
              icon: Icons.smart_toy,
              backgroundColor: Colors.orange.shade400,
              iconColor: Colors.white,
              onPressed: () {},
              width: 70,
              height: 70,
              borderRadius: BorderRadius.circular(35),
              elevation: 8,
            ),

            // Button with Tooltip
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Hover Me',
              backgroundColor: Colors.purple.shade500,
              textStyle: const TextStyle(color: Colors.white),
              tooltip: 'This button has a tooltip!',
              enableTooltip: true,
              onPressed: () {},
              width: 120,
              height: 45,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(25),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.4),
                  offset: const Offset(0, 6),
                  blurRadius: 16,
                  spreadRadius: 2,
                ),
              ],
            ),

            // Disabled Two Segment Button
            AyinzaButton(
              type: AyinzaButtonType.twoSegment,
              leftSegmentIcon: Icons.lock,
              rightSegmentChild: const Text("Locked"),
              leftSegmentColor: Colors.grey.shade400,
              rightSegmentColor: Colors.grey.shade300,
              isEnabled: false,
              onPressed: () {},
              width: 150,
              height: 45,
            ),

            // Button with Transform Effect
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Skewed',
              backgroundColor: Colors.cyan.shade500,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              transform: Matrix4.skewX(0.4),
              onPressed: () {},
              width: 120,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Skewed2',
              backgroundColor: Colors.red,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              transform: Matrix4.skewX(0.5),
              onPressed: () {},
              width: 120,
              height: 45,
              shadowColor: Colors.green,
              shadowBlurRadius: 2,
              elevation: 10,
              borderRadius: BorderRadius.zero,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
             AyinzaButton(
  type: AyinzaButtonType.elevated, // or outline, depending on intent
  text: 'Skewed Dashed',
  backgroundColor: Colors.red,
  textStyle: const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ),
  transform: Matrix4.skewX(-0.19),
  onPressed: () {},
  width: 120,
  height: 45,
 
 
  elevation: 10,
  borderRadius: BorderRadius.zero,
  dashedBorder: true,
  dashPattern: [2,1,4, 3], // Customize dash/gap as needed
  borderSide: const BorderSide(color: Colors.black, width: 0.8), // Border color/width
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  ),
),

            // Ultra Wide Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Full Width Action',
              backgroundColor: Colors.deepPurple.shade600,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              onPressed: () {},
              width: 300,
              height: 55,
              borderRadius: BorderRadius.all(Radius.circular(3)),
              shadowColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              elevation: 12,
            ),

            // Micro Button
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              icon: CupertinoIcons.add_circled,
              backgroundColor: Colors.red.shade400,
              iconColor: Colors.white,
              iconSize: 16,
              onPressed: () {},
              width: 30,
              height: 30,
              borderRadius: BorderRadius.circular(15),
            ),

            // Button with Custom Border Pattern
            AyinzaButton(
              type: AyinzaButtonType.elevated,
              text: 'Pattern',
              backgroundColor: Colors.white,
              foregroundColor: Colors.black87,
              dashedBorder: true,
              dashPattern: [2, 2, 8, 2],
              borderSide: const BorderSide(color: Colors.blue, width: 2),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              onPressed: () {},
              width: 110,
              height: 40,
              borderRadius: BorderRadius.circular(6),
            ),

            // ===== NEW BUTTON TYPES SHOWCASE =====

            // Text Button Examples
            AyinzaButton(
              type: AyinzaButtonType.text,
              text: 'See more',
              trailingIcon: Icons.add,
              foregroundColor: Colors.blue.shade600,
              textStyle: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue.shade600,
                color: Colors.blue.shade600,
              ),
              onPressed: () {},
              width: 120,
              height: 45,
              iconColor: Colors.blue.shade600,
              iconSpacing: 8,
            ),
            AyinzaButton(
              type: AyinzaButtonType.text,
              text: 'Agreements',
              foregroundColor: Colors.red,
              textStyle: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
              onPressed: () {},
              width: 120,
              height: 45,
              iconColor: Colors.blue.shade600,
              iconSpacing: 8,
            ),

            AyinzaButton(
              type: AyinzaButtonType.text,
              text: 'Learn More',
              foregroundColor: Colors.purple.shade700,
              leadingIcon: Icons.info_outline,
              iconColor: Colors.purple.shade700,
              onPressed: () {},
              width: 140,
              height: 45,
              iconSpacing: 8,
            ),

            // Toggle Button Examples
            AyinzaButton(
              type: AyinzaButtonType.toggle,
              text: 'Toggle Off',
              isSelected: false,
              unselectedColor: Colors.grey.shade200,
              selectedColor: Colors.green.shade500,
              selectedTextColor: Colors.white,
              foregroundColor: Colors.black87,
              onPressed: () {},
              width: 120,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            AyinzaButton(
              type: AyinzaButtonType.toggle,
              text: 'Toggle On',
              isSelected: true,
              unselectedColor: Colors.grey.shade200,
              selectedColor: Colors.green.shade500,
              selectedTextColor: Colors.white,
              foregroundColor: Colors.black87,
              onPressed: () {},
              width: 120,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            AyinzaButton(
              type: AyinzaButtonType.toggle,
              text: 'Dark Mode',
              isSelected: true,
              unselectedColor: Colors.white,
              selectedColor: Colors.black87,
              selectedTextColor: Colors.white,
              foregroundColor: Colors.black87,
              leadingIcon: Icons.dark_mode,
              iconColor: Colors.orange,
              onPressed: () {},
              width: 140,
              height: 45,
              borderRadius: BorderRadius.circular(22),
            ),

            AyinzaButton(
              type: AyinzaButtonType.toggle,

              isSelected: true,

              unselectedColor: Colors.grey.shade200,
              selectedTextColor: Colors.white,
              foregroundColor: Colors.black,
              toggleWithSwitch: true,
              onPressed: () {}, // No state change, just UI
              width: 160, // Make it wide!
              height: 50,
              borderRadius: BorderRadius.circular(8),
            ),
            AyinzaButton(
              type: AyinzaButtonType.toggle,
              text: 'Notify',
              isSelected: true,
              toggleWithSwitch: true,
              thumbIcon:
                  CupertinoIcons.alarm, // Or use thumbChild: YourWidget()
              onPressed: () {},
              width: 180,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            // Outline Button Examples
            AyinzaButton(
              type: AyinzaButtonType.outline,
              text: 'Gradient Dashed',
              gradient: LinearGradient(
                colors: [Colors.green, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              outlineWidth: 2.0,
              borderRadius: BorderRadius.circular(12),
              dashedBorder: true,
              dashPattern: [2, 4, 6, 8],
              onPressed: () {},
            ),

            AyinzaButton(
              type: AyinzaButtonType.outline,
              text: 'Dashed Outline',
              outlineColor: Colors.orange.shade600,
              foregroundColor: Colors.orange.shade600,
              outlineWidth: 2.0,
              outlineStyle: BorderStyle.solid,
              dashedBorder: true,
              dashPattern: [5, 3],
              onPressed: () {},
              width: 140,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            AyinzaButton(
              type: AyinzaButtonType.outline,
              text: 'Download',
              outlineColor: Colors.green.shade600,
              foregroundColor: Colors.green.shade600,
              trailingIcon: Icons.download,
              iconColor: Colors.green.shade600,
              onPressed: () {},
              width: 130,
              height: 45,
              borderRadius: BorderRadius.circular(8),
              iconSpacing: 6,
            ),

            // Badge Button Examples
            AyinzaButton(
              type: AyinzaButtonType.badge,
              text: 'Messages',
              backgroundColor: Colors.white,
              textStyle: const TextStyle(color: Colors.black),
              badgeCount: 5,
              showBadge: true,
              badgeColor: Colors.green,
              badgeTextColor: Colors.black,
              onPressed: () {},
              width: 120,
              height: 45,
              borderRadius: BorderRadius.circular(18),
              dashedBorder: true,
              dashPattern: [5, 3, 2, 1],
              borderSide: BorderSide(color: Colors.blue.shade700, width: 2),
            ),

            AyinzaButton(
              type: AyinzaButtonType.badge,
              icon: Icons.notifications,
              backgroundColor: Colors.orange.shade400,
              iconColor: Colors.white,
              iconSize: 24,
              badgeCount: 12,
              showBadge: true,
              badgeColor: Colors.red.shade600,
              badgeTextColor: Colors.yellow, // Changed to yellow for demo

              onPressed: () {},
              width: 50,
              height: 50,
              borderRadius: BorderRadius.circular(25),
            ),

            AyinzaButton(
              type: AyinzaButtonType.badge,
              text: 'Cart',
              backgroundColor: Colors.green.shade500,
              textStyle: const TextStyle(color: Colors.white),
              leadingIcon: Icons.shopping_cart,
              iconColor: Colors.white,
              badgeCount: 3,
              showBadge: true,
              badgeColor: Colors.orange,
              badgeTextColor: Colors.purple, // Changed to purple for demo

              onPressed: () {},
              width: 100,
              height: 45,
              borderRadius: BorderRadius.circular(8),
              iconSpacing: 6,
            ),

            // Badge Button without Badge (for comparison)
            AyinzaButton(
              type: AyinzaButtonType.badge,
              text: 'No Badge',
              backgroundColor: Colors.grey.shade300,
              foregroundColor: Colors.black87,
              showBadge: false,
              onPressed: () {},
              width: 110,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            // Large Badge Button
            AyinzaButton(
              type: AyinzaButtonType.badge,
              text: 'Notifications',
              backgroundColor: Colors.purple.shade500,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              badgeCount: 99,
              showBadge: true,
              badgeColor: Colors.white,
              badgeTextColor: Colors.green, // Changed to red for demo

              onPressed: () {},
              width: 150,
              height: 50,
              borderRadius: BorderRadius.circular(12),
            ),

            // ===== ICON BUTTON EXAMPLES =====

            // SCENARIO 1: WITHOUT CONTAINER - Pure Icon
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.close,
              iconColor: Colors.red.shade600,
              iconSize: 28,
              showIconContainer: false, // No container
              onPressed: () {},
            ),

            // SCENARIO 1: Without Container - Large Icon
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.star,
              iconColor: Colors.amber.shade600,
              iconSize: 36,
              showIconContainer: false, // No container
              onPressed: () {},
            ),

            // SCENARIO 1: Without Container - Asset Icon
            AyinzaButton(
              type: AyinzaButtonType.icon,
              iconAssetPath: 'assets/images/button_bg.png',
              iconSize: 25,
              showIconContainer: false, // No container
              onPressed: () {},
            ),

            // SCENARIO 2: WITH CONTAINER - Traditional Button
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.favorite,
              backgroundColor: Colors.red.shade400,
              iconColor: Colors.white,
              iconSize: 24,
              showIconContainer: true, // With container
              onPressed: () {},
              width: 50,
              height: 50,
              borderRadius: BorderRadius.circular(25),
            ),

            // SCENARIO 2: With Container - Square Button
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.settings,
              backgroundColor: Colors.grey.shade300,
              iconColor: Colors.grey.shade700,
              iconSize: 18,
              showIconContainer: true, // With container
              onPressed: () {},
              width: 45,
              height: 45,
              borderRadius: BorderRadius.circular(8),
            ),

            // SCENARIO 2: With Container - Large Button
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.play_arrow,
              backgroundColor: Colors.green.shade500,
              iconColor: Colors.white,
              iconSize: 32,
              showIconContainer: true, // With container
              onPressed: () {},
              width: 70,
              height: 70,
              borderRadius: BorderRadius.circular(35),
            ),

            // SCENARIO 2: With Container - Border Only
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.edit,
              backgroundColor: Colors.transparent,
              iconColor: Colors.blue.shade600,
              border: Border.all(color: Colors.blue.shade600, width: 2),
              iconSize: 22,
              showIconContainer: true, // With container
              onPressed: () {},
              width: 48,
              height: 48,
              borderRadius: BorderRadius.circular(24),
            ),

            // SCENARIO 2: With Container - Shadow
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.share,
              backgroundColor: Colors.orange.shade400,
              iconColor: Colors.white,
              iconSize: 24,
              boxShadow: [
                BoxShadow(
                  color: Colors.orange.withOpacity(0.4),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
              showIconContainer: true, // With container
              onPressed: () {},
              width: 55,
              height: 55,
              borderRadius: BorderRadius.circular(27.5),
            ),

            // Icon Button with Asset Image
            AyinzaButton(
              type: AyinzaButtonType.icon,
              iconAssetPath: 'assets/images/button_bg.png',
              backgroundColor: Colors.white,
              iconSize: 30,
              onPressed: () {},
              width: 60,
              height: 60,
              borderRadius: BorderRadius.circular(30),
            ),

            // ===== HIGHLY CUSTOMIZABLE ICON BUTTONS =====

            // Icon with Minimal Wrapper (No Background)
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.edit,
              iconColor: Colors.blue.shade600,
              iconSize: 24,
              showIconContainer: false,
              onPressed: () {},
              width: 40,
              height: 40,
            ),

            // Icon with Custom Padding Only
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.more_vert,
              iconColor: Colors.grey.shade700,
              iconSize: 22,
              showIconContainer: false,
              padding: const EdgeInsets.all(8),
              onPressed: () {},
            ),

            // Icon with Hover Area but No Visual Container
            AyinzaButton(
              type: AyinzaButtonType.icon,
              icon: Icons.info,
              iconColor: Colors.teal.shade600,
              iconSize: 20,
              showIconContainer: false,
              width: 32,
              height: 32,
              padding: const EdgeInsets.all(6),
              onPressed: () {},
            ),
            AyinzaButton(
              type: AyinzaButtonType.outline,
              text: 'Custom Dashed',
              outlineColor: Colors.purple,
              foregroundColor: Colors.purple,
              outlineWidth: 3.0,
              dashedBorder: true,
              dashPattern: [1, 5], // Long dashes, big gaps
              onPressed: () {},
            ),

// Dashed outline with different style
            AyinzaButton(
              type: AyinzaButtonType.outline,
              text: 'Dotted Style',
              outlineColor: Colors.green,
              foregroundColor: Colors.green,
              outlineWidth: 2.0,
              dashedBorder: true,
              width: 440,
              height: 120,
              dashPattern: [12, 2, 4, 15], // Short dashes, small gaps
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
