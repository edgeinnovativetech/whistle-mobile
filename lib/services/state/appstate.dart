import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:whistle_mobile/gen/assets.gen.dart';
import 'package:whistle_mobile/screens/dashboard/category.dart';
import 'package:whistle_mobile/screens/dashboard/community/community.dart';
import 'package:whistle_mobile/screens/dashboard/dashboard-handler.dart';
import 'package:whistle_mobile/screens/dashboard/home/home.dart';
import 'package:whistle_mobile/screens/dashboard/invite/invite.dart';

class AppState extends ChangeNotifier {
  // Booleans
  bool isDataHomeEmpty = true;

  //Integers
  int dashboardCurrIndex = 0;

  // Controllers
  final PageController onboardindSlideController =
      PageController(initialPage: 0);

  // Signup Flow Controllers
  final signupEmail = TextEditingController();
  final signupFirstname = TextEditingController();
  final signupLastname = TextEditingController();
  final signupPassword = TextEditingController();
  final signupSafetyEmail = TextEditingController();
  final signupEmergencyContact1 = TextEditingController();
  final signupEmergencyContact2 = TextEditingController();

  // Login Flow Controllers
  final loginEmail = TextEditingController();
  final loginPassword = TextEditingController();

  // Recovery
  final recoveryEmail = TextEditingController();
  final recoveryNewPassword = TextEditingController();
  final recoveryConfirmPassword = TextEditingController();

  // Invite Generation
  final visitorName = TextEditingController();
  final contactNumber = TextEditingController();
  final invitePurpose = TextEditingController();
  final inviteDate = TextEditingController();
  final inviteTime = TextEditingController();

  // Schedule Invite
  final invitationType = TextEditingController();
  final expectedTime = TextEditingController();
  final days = TextEditingController();
  final startDate = TextEditingController();
  final endDate = TextEditingController();

  //Maps
  List onboardingData = [
    {
      'title': "Welcome to Whistle",
      'description':
          "Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus volutpat nibh. Fermentum sit enim maecenas tincidunt",
      'imagePath': Assets.images.slide1,
      'imageType': "svg"
    },
    {
      'title': "Enhance Home Security",
      'description':
          "Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus volutpat nibh. Fermentum sit enim maecenas tincidunt",
      'imagePath': Assets.images.slide2.path,
      'imageType': "png"
    },
    {
      'title': "Build Community Interaction",
      'description':
          "Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus volutpat nibh. Fermentum sit enim maecenas tincidunt",
      'imagePath': Assets.images.slide3,
      'imageType': "svg"
    },
    {
      'title': "Effortless Utility payments",
      'description':
          "Lorem ipsum dolor sit amet consectetur. Nec volutpat nunc lectus vivamus dolor. Dolor ultricies lacus volutpat nibh. Fermentum sit enim maecenas tincidunt",
      'imagePath': Assets.images.slide4,
      'imageType': "svg"
    },
  ];

  //Lists
  List registrationWidgetsData = [];

  List navbarItems = [];

  List dashboardPages = [
    {
      "index": 0,
      "route": const Home(),
    },
    {
      "index": 1,
      "route": const Community(),
    },
    {
      "index": 2,
      "route": const DashboardHandler(),
    },
    {
      "index": 3,
      "route": const Invite(),
    },
    {
      "index": 4,
      "route": const Categories(),
    },
  ];

  // Functions
  void navigate(BuildContext context, Widget destination, bool replace) {
    replace
        ? Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => destination,
            ),
            (route) => false,
          )
        : Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => destination,
            ),
          );
  }

  void inlineNavigate(int index) {
    dashboardCurrIndex = navbarItems[index]['index'];
    navbarItems[index]['isActive'] = !navbarItems[index]['isActive'];
    navbarItems.forEach(
      (element) {
        if (element['index'] != index) {
          element['isActive'] = false;
          notifyListeners();
        }
      },
    );
    notifyListeners();
  }

  Future<void> setInvitationDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        Duration(days: 365),
      ),
      currentDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    inviteDate.text = DateFormat.yMMMd().format(pickedDate!);
  }

  Future<void> setInvitationTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    inviteTime.text = pickedTime!.format(context);
  }

  void initialize() async {
    navbarItems = [
      {
        "index": 0,
        "label": "Home",
        "imgPath": Assets.images.home,
        "imgInactive": Assets.images.homeInactive,
        "isActive": true,
      },
      {
        "index": 1,
        "label": "Community",
        "imgPath": Assets.images.community,
        "imgInactive": Assets.images.communityInactive,
        "isActive": false,
      },
      {
        "index": 2,
        "label": "",
        "imgPath": Assets.images.call,
        "imgInactive": Assets.images.inviteInactive,
        "isActive": false,
      },
      {
        "index": 3,
        "label": "Invite",
        "imgPath": Assets.images.invite,
        "imgInactive": Assets.images.inviteInactive,
        "isActive": false,
      },
      {
        "index": 4,
        "label": "WhistlePay",
        "imgPath": Assets.images.pay,
        "imgInactive": Assets.images.payInactive,
        "isActive": false,
      },
    ];
    registrationWidgetsData = [
      {
        "index": 1,
        "controller": signupEmail,
        "prefixIconPath": Assets.images.sms,
        "placeholder": "Enter email",
        "suffixIconPath": Assets.images.cancel
      },
      {
        "index": 2,
        "controller": signupFirstname,
        "prefixIconPath": Assets.images.profile,
        "placeholder": "First name",
        "suffixIconPath": Assets.images.cancel
      },
      {
        "index": 3,
        "controller": signupLastname,
        "prefixIconPath": Assets.images.profile,
        "placeholder": "Last name",
        "suffixIconPath": Assets.images.cancel
      },
    ];
    print(dashboardPages);
    notifyListeners();
  }
}
