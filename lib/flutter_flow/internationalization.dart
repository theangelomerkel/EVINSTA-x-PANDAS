import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['de', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? deText = '',
    String? enText = '',
  }) =>
      [deText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // S1_Login_andSignUp
  {
    'gg53n7vj': {
      'de': 'Sign In',
      'en': '',
    },
    'byybrou7': {
      'de': 'Email Address',
      'en': '',
    },
    'dec221bu': {
      'de': 'Password',
      'en': '',
    },
    '3act9iiy': {
      'de': 'Login',
      'en': '',
    },
    '8e4959t8': {
      'de': 'Forgot Password?',
      'en': '',
    },
    'yo8z7hh6': {
      'de': 'Sign Up',
      'en': '',
    },
    '031fz47i': {
      'de': 'Email Address',
      'en': '',
    },
    'kciizean': {
      'de': 'Password',
      'en': '',
    },
    'oh6o7md4': {
      'de': 'Confirm Password',
      'en': '',
    },
    'hjjyohu6': {
      'de': 'Create Account',
      'en': '',
    },
    '6pcbm2s8': {
      'de': 'Or use a social account to login',
      'en': '',
    },
    'j0h1yw8t': {
      'de': 'I agree with ',
      'en': '',
    },
    'ocutpyvm': {
      'de': 'terms of use',
      'en': '',
    },
  },
  // S3EventDataPublic
  {
    'xk0u5q5q': {
      'de': 'About',
      'en': '',
    },
    'zjbbn0ok': {
      'de': 'Wishlist',
      'en': '',
    },
    'ln9cd88q': {
      'de': 'Accept',
      'en': '',
    },
    'sgtrykvn': {
      'de': 'Decline',
      'en': '',
    },
    'lnmfbno3': {
      'de': 'Home',
      'en': '',
    },
  },
  // S3EventData_IntroPage
  {
    '9yai16u4': {
      'de': 'Home',
      'en': '',
    },
  },
  // S2_HomePage
  {
    '2e8i9atd': {
      'de': 'Your Events',
      'en': '',
    },
    'gokt7fb5': {
      'de': ' Events this month',
      'en': '',
    },
    'iislesy2': {
      'de': 'Create new event in your city',
      'en': '',
    },
    'cqenysv5': {
      'de': 'Create Article',
      'en': '',
    },
    'daip9flv': {
      'de': 'Feedback',
      'en': '',
    },
    'j19xfw2k': {
      'de': 'Invited Events',
      'en': '',
    },
  },
  // S6chatMain
  {
    'jlpk1vzn': {
      'de': 'All Chats',
      'en': '',
    },
    '51td9b7r': {
      'de': 'Chats',
      'en': '',
    },
  },
  // S5searchEvents
  {
    'zw30dijp': {
      'de': 'Search',
      'en': '',
    },
    '7w4dk0co': {
      'de': 'Search',
      'en': '',
    },
    '57q549v4': {
      'de': 'Home',
      'en': '',
    },
  },
  // propertyReview
  {
    'cb1t68a1': {
      'de': '# of Ratings',
      'en': '',
    },
    'mk9yg1rf': {
      'de': 'Avg. Rating',
      'en': '',
    },
    'bzvuksri': {
      'de': 'Reviews',
      'en': '',
    },
    'kbos8rnz': {
      'de': 'Home',
      'en': '',
    },
  },
  // S7chatDetails
  {
    '8llpfj94': {
      'de': 'Home',
      'en': '',
    },
  },
  // S8ProfilePage
  {
    'vjvs8tsh': {
      'de': 'Switch to Dark Mode',
      'en': '',
    },
    '0bq0e96j': {
      'de': 'Switch to Light Mode',
      'en': '',
    },
    '1uvmbwsk': {
      'de': 'Account Details',
      'en': '',
    },
    'gbqeeyzi': {
      'de': 'Edit Profile',
      'en': '',
    },
    'wbjxhjhr': {
      'de': 'Payment Information',
      'en': '',
    },
    'c6vd2cxc': {
      'de': 'Change Password',
      'en': '',
    },
    '9nmdx78a': {
      'de': 'Terms of Service',
      'en': '',
    },
    'deqqaxn6': {
      'de': 'Delete Account',
      'en': '',
    },
    'e1jljue0': {
      'de': 'Log Out',
      'en': '',
    },
  },
  // S8_NR1_paymentInfo
  {
    'eckgl4cd': {
      'de': 'Save Changes',
      'en': '',
    },
    'yxslh3rr': {
      'de': 'Payment Information',
      'en': '',
    },
    'ewumx04q': {
      'de': 'Home',
      'en': '',
    },
  },
  // S8_NR2_editProfile
  {
    'sgg4nzau': {
      'de': 'Change Photo',
      'en': '',
    },
    '4hoiv8bt': {
      'de': 'Full Name',
      'en': '',
    },
    'xsrhbgs7': {
      'de': 'Your full name...',
      'en': '',
    },
    'wsd3xip0': {
      'de': 'Email Address',
      'en': '',
    },
    'n9mcckvq': {
      'de': 'Your email..',
      'en': '',
    },
    'iuyx0as4': {
      'de': 'Phone Number',
      'en': '',
    },
    '9uk7rapl': {
      'de': 'Your full name...',
      'en': '',
    },
    'db4jnorx': {
      'de': 'Bio',
      'en': '',
    },
    'uccd7dsx': {
      'de': 'A little about you...',
      'en': '',
    },
    'epxprmyl': {
      'de': 'Save Changes',
      'en': '',
    },
    '3yjdjuhi': {
      'de': 'Edit Profile',
      'en': '',
    },
    'k9bkr9j0': {
      'de': 'Home',
      'en': '',
    },
  },
  // S9_NR1_createEvent
  {
    '571l3qmi': {
      'de': 'Main image*',
      'en': '',
    },
    'tvycbpw3': {
      'de': 'upload',
      'en': '',
    },
    'j4je90mb': {
      'de': 'Background image*',
      'en': '',
    },
    '8vf1yg65': {
      'de': 'upload',
      'en': '',
    },
    '5obwhgcb': {
      'de': 'Event NAME*',
      'en': '',
    },
    'da9i7djw': {
      'de': 'New event name',
      'en': '',
    },
    'u421tamd': {
      'de': 'Event DATE*',
      'en': '',
    },
    'c4u78p8s': {
      'de': 'PROPERTY ADDRESS*',
      'en': '',
    },
    'zc6awm83': {
      'de': '123 Disney way here…',
      'en': '',
    },
    'zvi34yc7': {
      'de': 'or select Location',
      'en': '',
    },
    't3r9hfqj': {
      'de': 'Description*',
      'en': '',
    },
    'bzw2opt8': {
      'de': 'BSP: Extra Description',
      'en': '',
    },
    'k5rlz77b': {
      'de': 'Property neighborhood',
      'en': '',
    },
    'jqhwbbpl': {
      'de': '123 Disney way here…',
      'en': '',
    },
    'x6gyyupl': {
      'de': 'Phone Number',
      'en': '',
    },
    '4idmuyqz': {
      'de': 'phone number',
      'en': '',
    },
    'fdid7ezg': {
      'de': 'Amount persons',
      'en': '',
    },
    'mvv0np2v': {
      'de': '20',
      'en': '',
    },
    'amhgz9hs': {
      'de': 'STEP',
      'en': '',
    },
    're9ouv5a': {
      'de': '1/3',
      'en': '',
    },
    'f658j3wt': {
      'de': 'NEXT',
      'en': '',
    },
    'qefjzyes': {
      'de': 'Spotify URL',
      'en': '',
    },
    'yrjh3l2s': {
      'de': 'add url',
      'en': '',
    },
    'jwxwddqy': {
      'de': 'Public event',
      'en': '',
    },
    'b7kekkzz': {
      'de': 'Free event',
      'en': '',
    },
    'w7l5zdyd': {
      'de': 'PRICE/Ticket Sale',
      'en': '',
    },
    'tc2ilp05': {
      'de': '\$ Price',
      'en': '',
    },
    '1bqj90wb': {
      'de': 'PayPal URL',
      'en': '',
    },
    'i5h0jczd': {
      'de': 'add url',
      'en': '',
    },
    'vh42oc5x': {
      'de': 'Add friends',
      'en': '',
    },
    'ic3vdsrm': {
      'de': 'search',
      'en': '',
    },
    'hqu7ma7k': {
      'de': 'STEP',
      'en': '',
    },
    'h7w4f91v': {
      'de': '2/3',
      'en': '',
    },
    'af317qro': {
      'de': 'NEXT',
      'en': '',
    },
    'yqq28orl': {
      'de': 'CREATE YOUR LINEUP',
      'en': '',
    },
    'msx7uomf': {
      'de': 'add Artist or soundcloud link',
      'en': '',
    },
    '77vqn45n': {
      'de': 'STEP',
      'en': '',
    },
    'kx76imla': {
      'de': '3/3',
      'en': '',
    },
    '4h2g4ok0': {
      'de': 'FINISH',
      'en': '',
    },
    'uh6qe90z': {
      'de': 'Field is required',
      'en': '',
    },
    'jtjtafjb': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'czyrdu2z': {
      'de': 'Field is required',
      'en': '',
    },
    'n49iae23': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '4cvfbwp8': {
      'de': 'Field is required',
      'en': '',
    },
    'oq8mnzjh': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'j2d28ctl': {
      'de': 'Field is required',
      'en': '',
    },
    '16xnc713': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'e0ux8v4a': {
      'de': 'Field is required',
      'en': '',
    },
    'pqytyj97': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '1ruw0qmn': {
      'de': 'Field is required',
      'en': '',
    },
    'btsz4el9': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'g5nt4e9z': {
      'de': 'Field is required',
      'en': '',
    },
    '5piv2kd1': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'r3h0pguf': {
      'de': 'Field is required',
      'en': '',
    },
    'jyjdi6dj': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '98zkkxj1': {
      'de': 'Field is required',
      'en': '',
    },
    'rwr2o43c': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '0ml0rvhg': {
      'de': 'Field is required',
      'en': '',
    },
    '4wu8d9fo': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'vrhgvpf5': {
      'de': 'Field is required',
      'en': '',
    },
    'kg8da7ib': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ta0lm4iw': {
      'de': 'Field is required',
      'en': '',
    },
    'ki2ll2q8': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'wq6spjkf': {
      'de': 'Field is required',
      'en': '',
    },
    'r0yza1o1': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '6pb8jdwc': {
      'de': 'Field is required',
      'en': '',
    },
    'b8opjlgs': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ryx237pz': {
      'de': 'Field is required',
      'en': '',
    },
    'o17uvjlz': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '0i2axb91': {
      'de': 'Field is required',
      'en': '',
    },
    'yv4spedz': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'b0mifsbf': {
      'de': 'Field is required',
      'en': '',
    },
    'wxno8f5u': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '8k7c3fsg': {
      'de': 'Field is required',
      'en': '',
    },
    '8qku1psj': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'h0wkwhgc': {
      'de': 'Create Event',
      'en': '',
    },
    'f7c8kaud': {
      'de': 'Home',
      'en': '',
    },
  },
  // S9_NR3_createArticle
  {
    '4lqlixud': {
      'de': 'Create Article',
      'en': '',
    },
    'owp6g1uz': {
      'de': 'Main image*',
      'en': '',
    },
    '7va4tdpe': {
      'de': 'Article title *',
      'en': '',
    },
    '3gas4km3': {
      'de': 'title',
      'en': '',
    },
    '1q8g2yen': {
      'de': 'Description*',
      'en': '',
    },
    '86q87x03': {
      'de': 'BSP: Extra Description',
      'en': '',
    },
    '3kp6wzw6': {
      'de': 'Field is required',
      'en': '',
    },
    'n8wubfjy': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fsl6ktzf': {
      'de': 'Field is required',
      'en': '',
    },
    'pqut0vnj': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hfy7y2zb': {
      'de': 'Create',
      'en': '',
    },
    '0izugpa6': {
      'de': 'Home',
      'en': '',
    },
  },
  // TemplateOptioCalendar
  {
    'i920tls2': {
      'de': 'Daily',
      'en': '',
    },
    't4l940h0': {
      'de': 'Events',
      'en': '',
    },
    '0wluergx': {
      'de': 'Home',
      'en': '',
    },
  },
  // TermsofService
  {
    'hvl7cs4s': {
      'de':
          'Terms of Service\n\nWelcome to Evinsta, please read these Terms of Use (\"Terms\") carefully as they contain important information about your legal rights, remedies, and obligations. By accessing or using our Evinsta, you agree to comply with and be bound by these Terms.\n\n1. ACCEPTANCE OF TERMS\n\nBy downloading, accessing or using Evinsta, you represent that you have read, understood, and agreed to be bound by these Terms. If you do not agree to these Terms, please do not use or access Evinsta.\n\n2. PRIVACY\n\nOur Privacy Policy describes our practices concerning data that you provide or that we may collect about you through Evinsta, and you consent to our use of data in compliance with the Privacy Policy.\n\n3. USE OF THE SERVICES\n\nYou agree to use our services only for purposes that are permitted by (a) the Terms and (b) any applicable law, regulation or generally accepted practices in the relevant jurisdictions.\n\n4. USER CONTENT\n\nBy posting, uploading, inputting, providing or submitting your content, you are granting Evinsta, its affiliated companies and necessary sublicensees permission to use your content in connection with the operation of their Internet businesses including, without limitation, the rights to copy, distribute, transmit, publicly display, publicly perform, reproduce, edit, translate and reformat your content.\n\n5. INTELLECTUAL PROPERTY\n\nAll intellectual property rights in Evinsta belong to us or our licensors. Except as expressly set out in these Terms, you have no rights in respect of any intellectual property rights belonging to us or our licensors.\n\n6. TERMINATION\n\nWe may terminate your access to and use of Evinsta, at our sole discretion, at any time and without notice to you.\n\n7. LIMITATION OF LIABILITY\n\nIn no event will Evinsta be liable for any direct, indirect, incidental, special, consequential or punitive damages resulting from your access to or use of, or inability to access or use, the services, whether based on warranty, contract, tort (including negligence), statute or any other legal theory.\n\n8. CHANGES TO THE TERMS\n\nWe reserve the right to modify these Terms at any time. If we make changes to these Terms, we will provide notice of such changes. Your continued use of [App Name] following the posting of any changes constitutes acceptance of those changes.\n\n9. GOVERNING LAW AND JURISDICTION\n\nThese Terms are governed by the laws of Germany, without regard to its conflict of laws principles. You and Evinsta agree to submit to the exclusive jurisdiction of Germany to resolve any dispute arising out of these Terms or Evinsta.\n\n10. CONTACT US\n\nIf you have any questions about these Terms, please contact us at evinsta@gmail.com.\n\n',
      'en': '',
    },
    '2pih28vd': {
      'de': 'Terms of Services Link',
      'en': '',
    },
  },
  // Deleteaccount
  {
    'gwwn6gkg': {
      'de':
          '\nAccount Deletion\n\nPlease note, deleting your account is irreversible:\nDeletion will permanently remove all data and may take up to 30 days. For queries, contact evinsta@gmail.com.',
      'en': '',
    },
    '1hhjn6se': {
      'de': 'Delete Account',
      'en': '',
    },
  },
  // S8NR3_change_password
  {
    'uwg7chwk': {
      'de': 'Email Address',
      'en': '',
    },
    'rx2nr0b9': {
      'de': 'Your email..',
      'en': '',
    },
    '9k6awa7d': {
      'de':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en': '',
    },
    'r4ulzvtb': {
      'de': 'Send Reset Link',
      'en': '',
    },
    'irjlom3v': {
      'de': 'Change Password',
      'en': '',
    },
    'e0er3k11': {
      'de': 'Home',
      'en': '',
    },
  },
  // S9_NR1_editEvent
  {
    'dwn6irw4': {
      'de': 'Main image*',
      'en': '',
    },
    '9zszih0g': {
      'de': 'upload',
      'en': '',
    },
    'n8n9nf03': {
      'de': 'Background image*',
      'en': '',
    },
    '1zbb7zjm': {
      'de': 'upload',
      'en': '',
    },
    'ioznypg2': {
      'de': 'Event NAME*',
      'en': '',
    },
    'tq2o2bzo': {
      'de': 'New event name',
      'en': '',
    },
    'x8xumltz': {
      'de': 'Event DATE*',
      'en': '',
    },
    'lrp6uvvn': {
      'de': 'PROPERTY ADDRESS*',
      'en': '',
    },
    'xkyt5is7': {
      'de': '123 Disney way here…',
      'en': '',
    },
    'm21w96zk': {
      'de': 'or select Location',
      'en': '',
    },
    'd6ltggcb': {
      'de': 'Description*',
      'en': '',
    },
    'ypom6n2u': {
      'de': 'Property neighborhood',
      'en': '',
    },
    '9vqpmbip': {
      'de': '123 Disney way here…',
      'en': '',
    },
    'qxtco68a': {
      'de': 'Phone Number',
      'en': '',
    },
    'gcomwi0j': {
      'de': 'phone number',
      'en': '',
    },
    'va6krh5q': {
      'de': 'Amount persons',
      'en': '',
    },
    'eluj8qjy': {
      'de': '20',
      'en': '',
    },
    'e7aenfe1': {
      'de': 'STEP',
      'en': '',
    },
    'mkhkaxt4': {
      'de': '1/3',
      'en': '',
    },
    'o252rcym': {
      'de': 'NEXT',
      'en': '',
    },
    'rph6ijc8': {
      'de': 'EDIT YOUR WISHLIST',
      'en': '',
    },
    'gkptb197': {
      'de': 'add item',
      'en': '',
    },
    'ol2pxwf9': {
      'de': 'STEP',
      'en': '',
    },
    'sq6yupq7': {
      'de': '2/3',
      'en': '',
    },
    'tdakq9ah': {
      'de': 'BACK',
      'en': '',
    },
    'jp1ugzul': {
      'de': 'NEXT',
      'en': '',
    },
    'ztnkf63o': {
      'de': 'Spotify URL',
      'en': '',
    },
    'sjycvlhl': {
      'de': 'add url',
      'en': '',
    },
    '0uoloer6': {
      'de': 'Public event',
      'en': '',
    },
    '4pqgbzjt': {
      'de': 'Free event',
      'en': '',
    },
    '46obx59m': {
      'de': 'PRICE/Ticket Sale',
      'en': '',
    },
    'zyhzfm7i': {
      'de': '\$ Price',
      'en': '',
    },
    'awqqm6y6': {
      'de': 'PayPal URL',
      'en': '',
    },
    '4wb7oevj': {
      'de': 'add url',
      'en': '',
    },
    'qtzjpq9t': {
      'de': 'Add friends',
      'en': '',
    },
    'q76yxu5m': {
      'de': 'search',
      'en': '',
    },
    'zq4x9qve': {
      'de': 'Dradt',
      'en': '',
    },
    'v202ic1b': {
      'de': 'Delete event',
      'en': '',
    },
    '526art1g': {
      'de': 'STEP',
      'en': '',
    },
    'ck241orx': {
      'de': '3/3',
      'en': '',
    },
    '081ehwt9': {
      'de': 'BACK',
      'en': '',
    },
    'ewq3negg': {
      'de': 'FINISH',
      'en': '',
    },
    'p8ib03on': {
      'de': 'Field is required',
      'en': '',
    },
    'qd28nwbl': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'vmnuj0vu': {
      'de': 'Field is required',
      'en': '',
    },
    'lio7e8aj': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fes37pfg': {
      'de': 'Field is required',
      'en': '',
    },
    'ew0cbf81': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '2gchw7rd': {
      'de': 'Field is required',
      'en': '',
    },
    'l1eucsur': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    's8m1bgec': {
      'de': 'Field is required',
      'en': '',
    },
    '27tv3k9d': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '8pjewae1': {
      'de': 'Field is required',
      'en': '',
    },
    'q557tzkj': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ksw85c19': {
      'de': 'Field is required',
      'en': '',
    },
    'jhzzxmlv': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'zq6pjiwk': {
      'de': 'Field is required',
      'en': '',
    },
    'qf4q1nk1': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '9m1f0zu8': {
      'de': 'Field is required',
      'en': '',
    },
    'wluej63y': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ysjq1gq0': {
      'de': 'Field is required',
      'en': '',
    },
    'ynrc6u4p': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'ijfp8hj3': {
      'de': 'Field is required',
      'en': '',
    },
    'i4du7fur': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'git5o1kj': {
      'de': 'Field is required',
      'en': '',
    },
    '0mop8rvu': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'p8qln4u3': {
      'de': 'Field is required',
      'en': '',
    },
    'p1u62pqt': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'jmay637z': {
      'de': 'Field is required',
      'en': '',
    },
    'zseuvn9q': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '4cp4dkgg': {
      'de': 'Field is required',
      'en': '',
    },
    'sx8ok2gq': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mtssx7qu': {
      'de': 'Field is required',
      'en': '',
    },
    'pu0z5mus': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'q73xirm5': {
      'de': 'Field is required',
      'en': '',
    },
    'bouwc7hq': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'y9i4r97j': {
      'de': 'Field is required',
      'en': '',
    },
    '8avzm0cg': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fld07s9u': {
      'de': 'Edit Event',
      'en': '',
    },
    't9cxrxt3': {
      'de': 'Home',
      'en': '',
    },
  },
  // forgotpassword
  {
    'peseuhg5': {
      'de': 'Forgot Password',
      'en': '',
    },
    'wbflei35': {
      'de': 'Email',
      'en': '',
    },
    'yw8asg8v': {
      'de': 'Enter your email',
      'en': '',
    },
    '7j7h4lbw': {
      'de': 'Send Reset Link',
      'en': '',
    },
  },
  // raguide
  {
    '9r0jmqhc': {
      'de': 'Home',
      'en': '',
    },
  },
  // articlePage
  {
    'lnw4j5mf': {
      'de': 'Go to events page',
      'en': '',
    },
    '2xbe14y0': {
      'de': 'Edit article',
      'en': '',
    },
    'h5na0p1z': {
      'de': 'Home',
      'en': '',
    },
  },
  // S9_NR3_editArticle
  {
    'ryrpfl1a': {
      'de': 'Edit Article',
      'en': '',
    },
    'p8n25y1u': {
      'de': 'Main image*',
      'en': '',
    },
    '5i1aiatu': {
      'de': 'Article title *',
      'en': '',
    },
    'n2w85lpe': {
      'de': 'title',
      'en': '',
    },
    'huckkfol': {
      'de': 'Description*',
      'en': '',
    },
    'mmnged3r': {
      'de': 'BSP: Extra Description',
      'en': '',
    },
    '5jgs457n': {
      'de': 'Field is required',
      'en': '',
    },
    'httwk0uo': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    '38kyo240': {
      'de': 'Field is required',
      'en': '',
    },
    'fhlpa55h': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
    'my0llguf': {
      'de': 'Edit',
      'en': '',
    },
    'b658guga': {
      'de': 'Delete',
      'en': '',
    },
    'l1r8l9ko': {
      'de': 'Home',
      'en': '',
    },
  },
  // eventpage
  {
    'qkfmcll8': {
      'de': 'Popular Events',
      'en': '',
    },
    '4xvhw97l': {
      'de': 'Check out the hottest events happening around you!',
      'en': '',
    },
    'zi39cxau': {
      'de':
          'Join us for an unforgettable experience with live music, food, and entertainment.',
      'en': '',
    },
    'ox7moh3x': {
      'de': 'Date: Jan 20, 2023',
      'en': '',
    },
    '7mb56dpw': {
      'de': 'Learn More',
      'en': '',
    },
    'm90165kj': {
      'de': 'Now Playing',
      'en': '',
    },
    'f5y7pzh0': {
      'de': 'Live Concert - The Classics',
      'en': '',
    },
  },
  // locationselect
  {
    'uxywpj9h': {
      'de': 'Select City',
      'en': '',
    },
    '90gek3ed': {
      'de': 'Hamburg',
      'en': '',
    },
    '7306jlgs': {
      'de': 'Munich',
      'en': '',
    },
    '39m000o6': {
      'de': 'Cologne',
      'en': '',
    },
    'bsyrnbct': {
      'de': 'Berlin',
      'en': '',
    },
    '2np5xlmt': {
      'de': 'Frankfurt',
      'en': '',
    },
    'icoljp30': {
      'de': 'Stuttgart',
      'en': '',
    },
    '6q0pabix': {
      'de': 'Düsseldorf',
      'en': '',
    },
    'koceu1w7': {
      'de': 'Dortmund',
      'en': '',
    },
    'rq6wm7u1': {
      'de': 'Essen',
      'en': '',
    },
    'rh3cyye8': {
      'de': 'Leipzig',
      'en': '',
    },
    '9ddmxelv': {
      'de': 'Bremen',
      'en': '',
    },
    'xwiuudix': {
      'de': 'Dresden',
      'en': '',
    },
    'fr1z9kq3': {
      'de': 'Hannover',
      'en': '',
    },
    'mveqqjmx': {
      'de': 'Nuremberg',
      'en': '',
    },
    '7plxb185': {
      'de': 'Dashboard',
      'en': '',
    },
  },
  // adminpanel
  {
    'ecqi9uth': {
      'de': 'Evinsta',
      'en': '',
    },
    'mevrm0x9': {
      'de': 'Home',
      'en': '',
    },
  },
  // raguideCopy
  {
    'wy63m4rt': {
      'de': 'Home',
      'en': '',
    },
  },
  // raguideCopy2
  {
    'xkqc4t8d': {
      'de': 'Home',
      'en': '',
    },
  },
  // raguideCopy3
  {
    'kfy2y3hr': {
      'de': 'Home',
      'en': '',
    },
  },
  // raguideFrankfurt
  {
    '3qfr7vjw': {
      'de': 'Home',
      'en': '',
    },
  },
  // raguideCopy4
  {
    'fv06335s': {
      'de': 'Home',
      'en': '',
    },
  },
  // bottomSheet
  {
    'hnnykqmw': {
      'de': 'Session Booked!',
      'en': '',
    },
    '4w8l2tvj': {
      'de': 'You have successfully booked a session on:',
      'en': '',
    },
    'ux2zgkgl': {
      'de': 'Mon, Dec 11 - 2021',
      'en': '',
    },
  },
  // total
  {
    'hk3ma3in': {
      'de': 'Order Total',
      'en': '',
    },
    '1rt229cd': {
      'de':
          'Your order total is a summary of all items in your order minus any fees and taxes associated with your purchase.',
      'en': '',
    },
    'f8zd56cd': {
      'de': 'Okay',
      'en': '',
    },
  },
  // changePhoto
  {
    '2mh9mx58': {
      'de': 'Change Profile Photo',
      'en': '',
    },
    'x0oytae3': {
      'de': 'Upload Photo',
      'en': '',
    },
    '6v4ann7y': {
      'de': 'Save Photo',
      'en': '',
    },
  },
  // reviewTrip
  {
    'v3enwgia': {
      'de': 'Rate Your Trip',
      'en': '',
    },
    '5w2ij7po': {
      'de': 'Let us know what you thought of the place below!',
      'en': '',
    },
    'gny537e5': {
      'de': 'How would you rate it?',
      'en': '',
    },
    'pzj8ef6w': {
      'de': 'Please leave a description of the place...',
      'en': '',
    },
    '29j1e1oe': {
      'de': 'Submit Review',
      'en': '',
    },
  },
  // changeMainPhoto
  {
    'rto14y7f': {
      'de': 'Change Main Photo',
      'en': '',
    },
    '2rqkax0c': {
      'de': 'Upload Photo',
      'en': '',
    },
    'otzwlyrf': {
      'de': 'Save Photo',
      'en': '',
    },
  },
  // cancelTripHOST
  {
    'dru3qdny': {
      'de': 'Cancel Trip',
      'en': '',
    },
    'wmuc7f15': {
      'de':
          'If you want to cancel your tripl please leave a note below to send to the host.',
      'en': '',
    },
    '4czbackw': {
      'de': 'Your reason for cancelling...',
      'en': '',
    },
    '18p4dxhe': {
      'de': 'Yes, Cancel Trip',
      'en': '',
    },
    'fo7ird6b': {
      'de': 'Never Mind',
      'en': '',
    },
  },
  // eventApBar
  {
    'mgzk0s9i': {
      'de': 'Whishlist',
      'en': '',
    },
    '4ci9sr12': {
      'de': 'Guestlist',
      'en': '',
    },
    '3btiga8b': {
      'de': 'Decline',
      'en': '',
    },
    'il5volap': {
      'de': 'Accept',
      'en': '',
    },
  },
  // reviewCopy
  {
    '7w34g5qa': {
      'de': '...',
      'en': '',
    },
    'epexv9lm': {
      'de': 'Write your comment',
      'en': '',
    },
  },
  // answer
  {
    'aqzl7z3j': {
      'de': 'Answer',
      'en': '',
    },
    'scjswsf2': {
      'de': 'Field is required',
      'en': '',
    },
    'quyrwmj0': {
      'de': 'Minumum 1 symbols',
      'en': '',
    },
    'o8glxh65': {
      'de': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // reviewNew
  {
    'jajk2a3k': {
      'de': 'Rate event',
      'en': '',
    },
    '8ytt5r75': {
      'de': 'Message',
      'en': '',
    },
    'o5agmakt': {
      'de': 'Write your review',
      'en': '',
    },
    'kuythf6u': {
      'de': 'Send review',
      'en': '',
    },
  },
  // registration
  {
    'vx8fwepk': {
      'de': 'Sign In',
      'en': '',
    },
    'i40apl8p': {
      'de': 'Email Address',
      'en': '',
    },
    'dax38yrn': {
      'de': 'Password',
      'en': '',
    },
    'f7gid8uq': {
      'de': 'Login',
      'en': '',
    },
    'y5h7ur06': {
      'de': 'Forgot Password?',
      'en': '',
    },
    'tourdfba': {
      'de': 'Sign Up',
      'en': '',
    },
    'od0dy8qo': {
      'de': 'Email Address',
      'en': '',
    },
    'd2y38vmr': {
      'de': 'Password',
      'en': '',
    },
    'kryd8j7n': {
      'de': 'Confirm Password',
      'en': '',
    },
    'usajujqg': {
      'de': 'Create Account',
      'en': '',
    },
    'cumfm8ps': {
      'de': 'Or use a social account to login',
      'en': '',
    },
    'sv3m7ocz': {
      'de': 'I agree with ',
      'en': '',
    },
    '1uw8usr3': {
      'de': 'terms of use',
      'en': '',
    },
  },
  // emptyreview
  {
    'jq8ps6s5': {
      'de': 'No reviews',
      'en': '',
    },
  },
  // emptyAsnwers
  {
    'ockomfom': {
      'de': 'No answers',
      'en': '',
    },
  },
  // calendar
  {
    'j3ncwud6': {
      'de': 'Events',
      'en': '',
    },
  },
  // apbar
  {
    'rswsmc2b': {
      'de': 'Welcome',
      'en': '',
    },
    'kblv9vr3': {
      'de': 'Checkout news and highlights below.',
      'en': '',
    },
  },
  // emptyEvents
  {
    '8zxon5w9': {
      'de': 'No events in this date',
      'en': '',
    },
    'q97hfxdk': {
      'de': 'Add event',
      'en': '',
    },
  },
  // wishlist
  {
    'p2cabu8h': {
      'de': ' Wishlist',
      'en': '',
    },
    'lpr8nfym': {
      'de': 'Check the boxes for the items you intend to bring in',
      'en': '',
    },
    '8iwbppk0': {
      'de': 'You can untick the checkboxes at any time',
      'en': '',
    },
    '5f5d1svv': {
      'de': 'Save',
      'en': '',
    },
  },
  // guestlist
  {
    '0tqp3odg': {
      'de': 'Guest List',
      'en': '',
    },
    '58omfz6l': {
      'de': 'Here you can see a list of people who plan to visit',
      'en': '',
    },
    '5p79b9kh': {
      'de': 'Confirmed',
      'en': '',
    },
    '4dundfju': {
      'de': 'Rejected',
      'en': '',
    },
  },
  // profileUser
  {
    '1t0zm57s': {
      'de': 'Events',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'zv17qdo6': {
      'de': '',
      'en': '',
    },
    'gun111k0': {
      'de': '',
      'en': '',
    },
    'qlak09lh': {
      'de': '',
      'en': '',
    },
    '86erjlac': {
      'de': 'In order to add events to your calendar.',
      'en': '',
    },
    '21fiy29b': {
      'de': '',
      'en': '',
    },
    '318lvjhi': {
      'de': '',
      'en': '',
    },
    'bgr5gsjs': {
      'de': '',
      'en': '',
    },
    'sknyxtzj': {
      'de': '',
      'en': '',
    },
    '3vwgeg4g': {
      'de': '',
      'en': '',
    },
    'xhffmmmx': {
      'de': '',
      'en': '',
    },
    '0sxk57wv': {
      'de': '',
      'en': '',
    },
    'kp1lp96h': {
      'de': '',
      'en': '',
    },
    'r6an2gir': {
      'de': '',
      'en': '',
    },
    'oldemq2j': {
      'de': '',
      'en': '',
    },
    '0zrvai5g': {
      'de': '',
      'en': '',
    },
    'anuy1whw': {
      'de': '',
      'en': '',
    },
    '9m5wkts5': {
      'de': '',
      'en': '',
    },
    'y0ud0bzt': {
      'de': '',
      'en': '',
    },
    '5ps1csyk': {
      'de': '',
      'en': '',
    },
    '6528krv8': {
      'de': '',
      'en': '',
    },
    'o4q56a2o': {
      'de': '',
      'en': '',
    },
    'renxyue9': {
      'de': '',
      'en': '',
    },
    'ytuskcpq': {
      'de': '',
      'en': '',
    },
    'pj8yeecd': {
      'de': '',
      'en': '',
    },
    'tohfxxjp': {
      'de': '',
      'en': '',
    },
    'aqbby0g5': {
      'de': '',
      'en': '',
    },
    '6pie8wn1': {
      'de': '',
      'en': '',
    },
    'b7slgrnk': {
      'de': '',
      'en': '',
    },
    'enlix346': {
      'de': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
