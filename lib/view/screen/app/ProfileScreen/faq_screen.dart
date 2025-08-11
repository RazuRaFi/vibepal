import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FaqModel {
  final String question;
  final String answer;
  FaqModel({required this.question, required this.answer});
}

class FaqController extends GetxController {
  var faqList = <FaqModel>[
    FaqModel(
      question: "What is Flutter?",
      answer: "Flutter is Google's UI toolkit for building beautiful, natively compiled applications.",
    ),
    FaqModel(
      question: "What is GetX?",
      answer: "GetX is a lightweight and powerful Flutter state management solution.",
    ),
  ].obs;

  var expandedIndex = (-1).obs;

  void toggleExpand(int index) {
    if (expandedIndex.value == index) {
      expandedIndex.value = -1; // Collapse if tapped again
    } else {
      expandedIndex.value = index; // Expand new index
    }
  }
}

class FaqScreen extends StatelessWidget {
  FaqScreen({super.key});

  final FaqController controller = Get.put(FaqController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, size: 25, color: Colors.white),
        ),
        title: const Text(
          "FAQ",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: Obx(() {
        if (controller.faqList.isEmpty) {
          return const Center(
            child: Text(
              "No FAQs available",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          itemCount: controller.faqList.length,
          itemBuilder: (context, index) {
            final faq = controller.faqList[index];
            final isExpanded = controller.expandedIndex.value == index;

            return Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade800, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => controller.toggleExpand(index),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            faq.question,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  if (isExpanded) ...[
                    const SizedBox(height: 8),
                    Divider(color: Colors.grey.shade700, thickness: 0.5),
                    const SizedBox(height: 8),
                    Text(
                      faq.answer,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.9),
                        height: 1.4,
                      ),
                    ),
                  ],
                ],
              ),
            );
          },
        );
      }),
    );
  }
}