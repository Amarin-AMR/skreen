class AppAsset {
  AppAsset._init();
  static AppAsset? _instace;

  static AppAsset get instance => _instace ??= AppAsset._init();

  //Icon
  String get calendar => toIconPng('calendar');
  String get time => toIconPng('time');
  String get add => toIconPng('add');
  String get edit => toIconPng('edit');
  String get bin => toIconPng('bin');
  String get addProduct => toIconPng('add_product');
  String get search => toIconPng('search');
  String get checkCircle => toIconPng('check_circle');
  String get checkWarning => toIconPng('check_warning');
  String get checkIn => toIconPng('check_in');
  String get close => toIconPng('close');
  String get keyboardArrowDown => toIconPng('keyboard_arrow_down');
  String get questionCircle => toIconPng('question_circle');
  String get minus => toIconPng('minus');
  String get filter => toIconPng('filter');
  String get attachFile => toIconPng('attach_file');
  String get removeCircle => toIconPng('remove_circle');
  String get comment => toIconPng('comment');
  String get checkOut => toIconPng('check_out');
  String get deliveryTracking => toIconPng('delivery_tracking');
  String get mapMarker => toIconPng('map_marker');
  String get arrowBack => toIconPng('arrow_back');
  String get arrowForward => toIconPng('arrow_forward');
  String get visibility => toIconPng('visibility');
  String get visibilityOff => toIconPng('visibility_off');
  String get notification => toIconPng('notification');
  String get editButton => toIconPng('edit_button');

  //Image
  String get product => toImagePng('product');
  String get map => toImagePng('map');
  String get cancel => toImagePng('cancel');
  String get checkin => toImagePng('checkin');
  String get planner => toImagePng('planner');
  String get logo => toImagePng('logo');
  String get loginBG => toImagePng('login_bg');
  String get noPlanner => toImagePng('no_plan');
  String get schedulePlanning => toImagePng('schedule_planning');
  String get splashscreen => toImagePng('splashscreen');
  String get forgetPassword => toImagePng('forget_password');
  String get changePassword => toImagePng('change_password');

  String toIconPng(String name) => 'asset/icons/$name.png';
  String toImagePng(String name) => 'asset/images/$name.png';
}
