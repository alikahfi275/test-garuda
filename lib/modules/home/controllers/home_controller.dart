import 'package:get/get.dart';
import 'package:test_garuda/data/models/instructor_model.dart';
import 'package:test_garuda/data/models/reservation_model.dart';

class HomeController extends GetxController {
  final instructors = <InstructorModel>[].obs;

  final nearClasses = <ReservationModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadInstructors();
    loadNearClasses();
  }

  void loadInstructors() {
    instructors.assignAll([
      InstructorModel(
        name: 'Fatma',
        imageUrl: 'https://i.pravatar.cc/150?img=32',
      ),
      InstructorModel(
        name: 'Ryan',
        imageUrl: 'https://i.pravatar.cc/150?img=12',
      ),
      InstructorModel(
        name: 'Alexa',
        imageUrl: 'https://i.pravatar.cc/150?img=47',
      ),
      InstructorModel(
        name: 'George',
        imageUrl: 'https://i.pravatar.cc/150?img=56',
      ),
      InstructorModel(
        name: 'John',
        imageUrl: 'https://i.pravatar.cc/150?img=57',
      ),
      InstructorModel(
        name: 'John',
        imageUrl: 'https://i.pravatar.cc/150?img=58',
      ),
      InstructorModel(
        name: 'John',
        imageUrl: 'https://i.pravatar.cc/150?img=60',
      ),
    ]);
  }

  void loadNearClasses() {
    nearClasses.assignAll([
      ReservationModel(
        time: '08.00 - 09.30',
        title: 'Body Combat',
        location: 'BXC Mall',
        instructor: 'Arif',
        slotText: '3 Slots left!',
        isAvailable: true,
      ),
      ReservationModel(
        time: '08.00 - 09.30',
        title: 'Vinyasa Yoga',
        location: 'BXC Mall',
        instructor: 'Fatma',
        slotText: 'Slots Available',
        isAvailable: false,
      ),
    ]);
  }
}
