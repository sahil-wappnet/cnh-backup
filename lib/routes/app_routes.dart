import 'package:sahil_s_application2/presentation/caregiver_details_container_screen/caregiver_details_container_screen.dart';
import 'package:sahil_s_application2/presentation/caregiver_details_container_screen/binding/caregiver_details_container_binding.dart';
import 'package:sahil_s_application2/presentation/book_appointment_one_screen/book_appointment_one_screen.dart';
import 'package:sahil_s_application2/presentation/book_appointment_one_screen/binding/book_appointment_one_binding.dart';
import 'package:sahil_s_application2/presentation/manage_family_members_screen/manage_family_members_screen.dart';
import 'package:sahil_s_application2/presentation/manage_family_members_screen/binding/manage_family_members_binding.dart';
import 'package:sahil_s_application2/presentation/edit_family_member_profile_screen/edit_family_member_profile_screen.dart';
import 'package:sahil_s_application2/presentation/edit_family_member_profile_screen/binding/edit_family_member_profile_binding.dart';
import 'package:sahil_s_application2/presentation/add_new_family_member_screen/add_new_family_member_screen.dart';
import 'package:sahil_s_application2/presentation/add_new_family_member_screen/binding/add_new_family_member_binding.dart';
import 'package:sahil_s_application2/presentation/notifications_tab_container_screen/notifications_tab_container_screen.dart';
import 'package:sahil_s_application2/presentation/notifications_tab_container_screen/binding/notifications_tab_container_binding.dart';
import 'package:sahil_s_application2/presentation/add_self_vital_detail_page_screen/add_self_vital_detail_page_screen.dart';
import 'package:sahil_s_application2/presentation/add_self_vital_detail_page_screen/binding/add_self_vital_detail_page_binding.dart';
import 'package:sahil_s_application2/presentation/profile_page_one_screen/profile_page_one_screen.dart';
import 'package:sahil_s_application2/presentation/profile_page_one_screen/binding/profile_page_one_binding.dart';
import 'package:sahil_s_application2/presentation/add_appointment_page_screen/add_appointment_page_screen.dart';
import 'package:sahil_s_application2/presentation/add_appointment_page_screen/binding/add_appointment_page_binding.dart';
import 'package:sahil_s_application2/presentation/booked_appointment_screen/booked_appointment_screen.dart';
import 'package:sahil_s_application2/presentation/booked_appointment_screen/binding/booked_appointment_binding.dart';
import 'package:sahil_s_application2/presentation/chats_tab_container_screen/chats_tab_container_screen.dart';
import 'package:sahil_s_application2/presentation/chats_tab_container_screen/binding/chats_tab_container_binding.dart';
import 'package:sahil_s_application2/presentation/message_screen/message_screen.dart';
import 'package:sahil_s_application2/presentation/message_screen/binding/message_binding.dart';
import 'package:sahil_s_application2/presentation/queue_move_in_queue_tab_container_screen/queue_move_in_queue_tab_container_screen.dart';
import 'package:sahil_s_application2/presentation/queue_move_in_queue_tab_container_screen/binding/queue_move_in_queue_tab_container_binding.dart';
import 'package:sahil_s_application2/presentation/queue_qr_screen/queue_qr_screen.dart';
import 'package:sahil_s_application2/presentation/queue_qr_screen/binding/queue_qr_binding.dart';
import 'package:sahil_s_application2/presentation/qr_scanner_screen/qr_scanner_screen.dart';
import 'package:sahil_s_application2/presentation/qr_scanner_screen/binding/qr_scanner_binding.dart';
import 'package:sahil_s_application2/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:sahil_s_application2/presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import 'package:sahil_s_application2/presentation/onboarding_screenone_screen/onboarding_screenone_screen.dart';
import 'package:sahil_s_application2/presentation/onboarding_screenone_screen/binding/onboarding_screenone_binding.dart';
import 'package:sahil_s_application2/presentation/onboarding_screentwo_screen/onboarding_screentwo_screen.dart';
import 'package:sahil_s_application2/presentation/onboarding_screentwo_screen/binding/onboarding_screentwo_binding.dart';
import 'package:sahil_s_application2/presentation/onboarding_screenthree_screen/onboarding_screenthree_screen.dart';
import 'package:sahil_s_application2/presentation/onboarding_screenthree_screen/binding/onboarding_screenthree_binding.dart';
import 'package:sahil_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:sahil_s_application2/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:sahil_s_application2/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:sahil_s_application2/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:sahil_s_application2/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:sahil_s_application2/presentation/forget_password_screen/binding/forget_password_binding.dart';
import 'package:sahil_s_application2/presentation/verification_screen/verification_screen.dart';
import 'package:sahil_s_application2/presentation/verification_screen/binding/verification_binding.dart';
import 'package:sahil_s_application2/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:sahil_s_application2/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:sahil_s_application2/presentation/home_page_tab_container_screen/home_page_tab_container_screen.dart';
import 'package:sahil_s_application2/presentation/home_page_tab_container_screen/binding/home_page_tab_container_binding.dart';
import 'package:sahil_s_application2/presentation/doctors_details_screen/doctors_details_screen.dart';
import 'package:sahil_s_application2/presentation/doctors_details_screen/binding/doctors_details_binding.dart';
import 'package:sahil_s_application2/presentation/book_appointment_screen/book_appointment_screen.dart';
import 'package:sahil_s_application2/presentation/book_appointment_screen/binding/book_appointment_binding.dart';
import 'package:sahil_s_application2/presentation/payment_page_tab_container_screen/payment_page_tab_container_screen.dart';
import 'package:sahil_s_application2/presentation/payment_page_tab_container_screen/binding/payment_page_tab_container_binding.dart';
import 'package:sahil_s_application2/presentation/previous_appointments_screen/previous_appointments_screen.dart';
import 'package:sahil_s_application2/presentation/previous_appointments_screen/binding/previous_appointments_binding.dart';
import 'package:sahil_s_application2/presentation/home_medication_new_tab_container_screen/home_medication_new_tab_container_screen.dart';
import 'package:sahil_s_application2/presentation/home_medication_new_tab_container_screen/binding/home_medication_new_tab_container_binding.dart';
import 'package:sahil_s_application2/presentation/add_medicine_screen/add_medicine_screen.dart';
import 'package:sahil_s_application2/presentation/add_medicine_screen/binding/add_medicine_binding.dart';
import 'package:sahil_s_application2/presentation/medicine_details_screen/medicine_details_screen.dart';
import 'package:sahil_s_application2/presentation/medicine_details_screen/binding/medicine_details_binding.dart';
import 'package:sahil_s_application2/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:sahil_s_application2/presentation/my_cart_screen/binding/my_cart_binding.dart';
import 'package:sahil_s_application2/presentation/add_prescription_screen/add_prescription_screen.dart';
import 'package:sahil_s_application2/presentation/add_prescription_screen/binding/add_prescription_binding.dart';
import 'package:sahil_s_application2/presentation/add_prescription_upload_screen/add_prescription_upload_screen.dart';
import 'package:sahil_s_application2/presentation/add_prescription_upload_screen/binding/add_prescription_upload_binding.dart';
import 'package:sahil_s_application2/presentation/android_large_fourteen_screen/android_large_fourteen_screen.dart';
import 'package:sahil_s_application2/presentation/android_large_fourteen_screen/binding/android_large_fourteen_binding.dart';
import 'package:sahil_s_application2/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:sahil_s_application2/presentation/add_new_address_screen/binding/add_new_address_binding.dart';
import 'package:sahil_s_application2/presentation/choose_delivery_location_screen/choose_delivery_location_screen.dart';
import 'package:sahil_s_application2/presentation/choose_delivery_location_screen/binding/choose_delivery_location_binding.dart';
import 'package:sahil_s_application2/presentation/checkout_page_screen/checkout_page_screen.dart';
import 'package:sahil_s_application2/presentation/checkout_page_screen/binding/checkout_page_binding.dart';
import 'package:sahil_s_application2/presentation/tracking_screen/tracking_screen.dart';
import 'package:sahil_s_application2/presentation/tracking_screen/binding/tracking_binding.dart';
import 'package:sahil_s_application2/presentation/home_health_tab_container_screen/home_health_tab_container_screen.dart';
import 'package:sahil_s_application2/presentation/home_health_tab_container_screen/binding/home_health_tab_container_binding.dart';
import 'package:sahil_s_application2/presentation/home_home_care_screen/home_home_care_screen.dart';
import 'package:sahil_s_application2/presentation/home_home_care_screen/binding/home_home_care_binding.dart';
import 'package:sahil_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:sahil_s_application2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/all_health_record_screen/all_health_record_screen.dart';
import '../presentation/all_health_record_screen/binding/all_health_record_binding.dart';
import '../presentation/lab_tests_and_doctor_consultant_screen/binding/lab_tests_and_doctor_consultant_binding.dart';
import '../presentation/lab_tests_and_doctor_consultant_screen/lab_tests_and_doctor_consultant_screen.dart';
import '../presentation/medicine_orders_screen/binding/medicine_orders_binding.dart';
import '../presentation/medicine_orders_screen/medicine_orders_screen.dart';
import '../presentation/payment_success_screen/binding/payment_success_binding.dart';
import '../presentation/payment_success_screen/payment_success_screen.dart';

class AppRoutes {
  static const String caregiverDetailsPage = '/caregiver_details_page';

  static const String caregiverDetailsContainerScreen =
      '/caregiver_details_container_screen';

  static const String bookAppointmentOneScreen = '/book_appointment_one_screen';

  static const String profilePage = '/profile_page';

  static const String manageFamilyMembersScreen =
      '/manage_family_members_screen';

  static const String editFamilyMemberProfileScreen =
      '/edit_family_member_profile_screen';

  static const String addNewFamilyMemberScreen =
      '/add_new_family_member_screen';

  static const String notificationsPage = '/notifications_page';

  static const String notificationsTabContainerScreen =
      '/notifications_tab_container_screen';

  static const String notificationsOffersPage = '/notifications_offers_page';

  static const String addSelfVitalDetailPageScreen =
      '/add_self_vital_detail_page_screen';

  static const String profilePageOneScreen = '/profile_page_one_screen';

  static const String addAppointmentPageScreen = '/add_appointment_page_screen';

  static const String medicineOrdersScreen = '/medicine_orders_screen';
  
  static const String bookedAppointmentScreen = '/booked_appointment_screen';

  static const String chatsPage = '/chats_page';

  static const String chatsTabContainerScreen = '/chats_tab_container_screen';

  static const String messageScreen = '/message_screen';

  static const String queueMoveInQueuePage = '/queue_move_in_queue_page';

  static const String queueMoveInQueueTabContainerScreen =
      '/queue_move_in_queue_tab_container_screen';

   static const String labTestsAndDoctorConsultantScreen =
      '/lab_tests_and_doctor_consultant_screen';

  static const String allHealthRecordScreen = '/all_health_record_screen';

  static const String queueNewQueuePage = '/queue_new_queue_page';

  static const String queueQrScreen = '/queue_qr_screen';

  static const String qrScannerScreen = '/qr_scanner_screen';

  static const String queueMoveInQueueWithDetailPage =
      '/queue_move_in_queue_with_detail_page';

  static const String splashscreenScreen = '/splashscreen_screen';

  static const String onboardingScreenoneScreen =
      '/onboarding_screenone_screen';

  static const String onboardingScreentwoScreen =
      '/onboarding_screentwo_screen';

  static const String onboardingScreenthreeScreen =
      '/onboarding_screenthree_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String homePage = '/home_page';

  static const String homePageTabContainerScreen =
      '/home_page_tab_container_screen';

  static const String doctorsDetailsScreen = '/doctors_details_screen';

  static const String bookAppointmentScreen = '/book_appointment_screen';

  static const String paymentPage = '/payment_page';
  
  static const String paymentSuccessPage = '/payment_success_page';

  static const String paymentPageTabContainerScreen =
      '/payment_page_tab_container_screen';

  static const String homeAppointmentPage = '/home_appointment_page';

  static const String previousAppointmentsScreen =
      '/previous_appointments_screen';

  static const String homeReportPage = '/home_report_page';

  static const String homeMedicationNewPage = '/home_medication_new_page';

  static const String homeMedicationNewTabContainerScreen =
      '/home_medication_new_tab_container_screen';

  static const String homeMedicationRefillPage = '/home_medication_refill_page';

  static const String addMedicineScreen = '/add_medicine_screen';

  static const String medicineDetailsScreen = '/medicine_details_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String addPrescriptionScreen = '/add_prescription_screen';

  static const String addPrescriptionUploadScreen =
      '/add_prescription_upload_screen';

  static const String androidLargeFourteenScreen =
      '/android_large_fourteen_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String chooseDeliveryLocationScreen =
      '/choose_delivery_location_screen';

  static const String checkoutPageScreen = '/checkout_page_screen';

  static const String trackingScreen = '/tracking_screen';

  static const String homeHealthPage = '/home_health_page';

  static const String homeHealthTabContainerScreen =
      '/home_health_tab_container_screen';

  static const String homeHomeCareScreen = '/home_home_care_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: caregiverDetailsContainerScreen,
      page: () => CaregiverDetailsContainerScreen(),
      bindings: [
        CaregiverDetailsContainerBinding(),
      ],
    ),
    GetPage(
      name: bookAppointmentOneScreen,
      page: () => BookAppointmentOneScreen(),
      bindings: [
        BookAppointmentOneBinding(),
      ],
    ),
    GetPage(
      name: manageFamilyMembersScreen,
      page: () => ManageFamilyMembersScreen(),
      bindings: [
        ManageFamilyMembersBinding(),
      ],
    ),
    GetPage(
      name: editFamilyMemberProfileScreen,
      page: () => EditFamilyMemberProfileScreen(),
      bindings: [
        EditFamilyMemberProfileBinding(),
      ],
    ),
    GetPage(
      name: addNewFamilyMemberScreen,
      page: () => AddNewFamilyMemberScreen(),
      bindings: [
        AddNewFamilyMemberBinding(),
      ],
    ),
    GetPage(
      name: notificationsTabContainerScreen,
      page: () => NotificationsTabContainerScreen(),
      bindings: [
        NotificationsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: medicineOrdersScreen,
      page: () => MedicineOrdersScreen(),
      bindings: [
        MedicineOrdersBinding(),
      ],
    ),
    GetPage(
      name: addSelfVitalDetailPageScreen,
      page: () => AddSelfVitalDetailPageScreen(),
      bindings: [
        AddSelfVitalDetailPageBinding(),
      ],
    ),
    GetPage(
      name: profilePageOneScreen,
      page: () => ProfilePageOneScreen(),
      bindings: [
        ProfilePageOneBinding(),
      ],
    ),
    GetPage(
      name: addAppointmentPageScreen,
      page: () => AddAppointmentPageScreen(),
      bindings: [
        AddAppointmentPageBinding(),
      ],
    ),
    GetPage(
      name: bookedAppointmentScreen,
      page: () => BookedAppointmentScreen(),
      bindings: [
        BookedAppointmentBinding(),
      ],
    ),
    GetPage(
      name: chatsTabContainerScreen,
      page: () => ChatsTabContainerScreen(),
      bindings: [
        ChatsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: paymentSuccessPage,
      page: () => PaymentSuccessScreen(),
      bindings: [
        PaymentSuccessBinding(),
      ],
    ),
    GetPage(
      name: messageScreen,
      page: () => MessageScreen(),
      bindings: [
        MessageBinding(),
      ],
    ),
    GetPage(
      name: queueMoveInQueueTabContainerScreen,
      page: () => QueueMoveInQueueTabContainerScreen(),
      bindings: [
        QueueMoveInQueueTabContainerBinding(),
      ],
    ),
    GetPage(
      name: queueQrScreen,
      page: () => QueueQrScreen(),
      bindings: [
        QueueQrBinding(),
      ],
    ),
    GetPage(
      name: qrScannerScreen,
      page: () => QrScannerScreen(),
      bindings: [
        QrScannerBinding(),
      ],
    ),
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreenoneScreen,
      page: () => OnboardingScreenoneScreen(),
      bindings: [
        OnboardingScreenoneBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreentwoScreen,
      page: () => OnboardingScreentwoScreen(),
      bindings: [
        OnboardingScreentwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreenthreeScreen,
      page: () => OnboardingScreenthreeScreen(),
      bindings: [
        OnboardingScreenthreeBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
      bindings: [
        ForgetPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: homePageTabContainerScreen,
      page: () => HomePageTabContainerScreen(),
      bindings: [
        HomePageTabContainerBinding(),
      ],
    ),
    GetPage(
      name: doctorsDetailsScreen,
      page: () => DoctorsDetailsScreen(),
      bindings: [
        DoctorsDetailsBinding(),
      ],
    ),
    GetPage(
      name: labTestsAndDoctorConsultantScreen,
      page: () => LabTestsAndDoctorConsultantScreen(),
      bindings: [
        LabTestsAndDoctorConsultantBinding(),
      ],
    ),
    GetPage(
      name: allHealthRecordScreen,
      page: () => AllHealthRecordScreen(),
      bindings: [
        AllHealthRecordBinding(),
      ],
    ),
    GetPage(
      name: bookAppointmentScreen,
      page: () => BookAppointmentScreen(),
      bindings: [
        BookAppointmentBinding(),
      ],
    ),
    GetPage(
      name: paymentPageTabContainerScreen,
      page: () => PaymentPageTabContainerScreen(),
      bindings: [
        PaymentPageTabContainerBinding(),
      ],
    ),
    GetPage(
      name: previousAppointmentsScreen,
      page: () => PreviousAppointmentsScreen(),
      bindings: [
        PreviousAppointmentsBinding(),
      ],
    ),
    GetPage(
      name: homeMedicationNewTabContainerScreen,
      page: () => HomeMedicationNewTabContainerScreen(),
      bindings: [
        HomeMedicationNewTabContainerBinding(),
      ],
    ),
    
    GetPage(
      name: addMedicineScreen,
      page: () => AddMedicineScreen(),
      bindings: [
        AddMedicineBinding(),
      ],
    ),
    GetPage(
      name: medicineDetailsScreen,
      page: () => MedicineDetailsScreen(),
      bindings: [
        MedicineDetailsBinding(),
      ],
    ),
    GetPage(
      name: myCartScreen,
      page: () => MyCartScreen(),
      bindings: [
        MyCartBinding(),
      ],
    ),
    GetPage(
      name: addPrescriptionScreen,
      page: () => AddPrescriptionScreen(),
      bindings: [
        AddPrescriptionBinding(),
      ],
    ),
    GetPage(
      name: addPrescriptionUploadScreen,
      page: () => AddPrescriptionUploadScreen(),
      bindings: [
        AddPrescriptionUploadBinding(),
      ],
    ),
    GetPage(
      name: androidLargeFourteenScreen,
      page: () => AndroidLargeFourteenScreen(),
      bindings: [
        AndroidLargeFourteenBinding(),
      ],
    ),
    GetPage(
      name: addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      bindings: [
        AddNewAddressBinding(),
      ],
    ),
    GetPage(
      name: chooseDeliveryLocationScreen,
      page: () => ChooseDeliveryLocationScreen(),
      bindings: [
        ChooseDeliveryLocationBinding(),
      ],
    ),
    GetPage(
      name: checkoutPageScreen,
      page: () => CheckoutPageScreen(),
      bindings: [
        CheckoutPageBinding(),
      ],
    ),
    GetPage(
      name: trackingScreen,
      page: () => TrackingScreen(),
      bindings: [
        TrackingBinding(),
      ],
    ),
    GetPage(
      name: homeHealthTabContainerScreen,
      page: () => HomeHealthTabContainerScreen(),
      bindings: [
        HomeHealthTabContainerBinding(),
      ],
    ),
    GetPage(
      name: homeHomeCareScreen,
      page: () => HomeHomeCareScreen(),
      bindings: [
        HomeHomeCareBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    )
  ];
}
