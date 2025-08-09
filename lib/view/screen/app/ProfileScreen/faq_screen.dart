// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../../../controller/FaqController/faqController.dart';
// import '../../../component/CommonText.dart';
//
// class FaqScreen extends StatelessWidget {
//   const FaqScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<FaqController>();
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: Icon(Icons.arrow_back, size: 25, color: Colors.white),
//         ),
//         title: CommonText(
//           text: "FAQ",
//           fontSize: 24,
//           fontWeight: FontWeight.w700,
//           color: Colors.white,
//         ),
//       ),
//       body: Column(
//         children: [
//       Container(
//       margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//       decoration: BoxDecoration(
//         color: const Color(0xFF1E1E1E), // Dark background
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.grey.shade800, width: 1),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: () => controller.toggleExpand(index),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Text(
//                     question,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Icon(
//                   isExpanded
//                       ? Icons.keyboard_arrow_up
//                       : Icons.keyboard_arrow_down,
//                   color: Colors.white,
//                 ),
//               ],
//             ),
//           ),
//           if (isExpanded) ...[
//             const SizedBox(height: 8),
//             Divider(color: Colors.grey.shade700, thickness: 0.5),
//             const SizedBox(height: 8),
//             Text(
//               answer,
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.white.withOpacity(0.9),
//                 height: 1.4,
//               ),
//             ),
//           ]
//         ],
//       ),
//     );
//   });
//         ],
//       ),
//     );
//   }
// }
