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
    // Add more FAQs here
  ].obs;

  var expandedIndex = (-1).obs;

  void toggleExpand(int index) {
    if (expandedIndex.value == index) {
      expandedIndex.value = -1; // collapse if tapped again
    } else {
      expandedIndex.value = index; // expand new index
    }
  }
}
