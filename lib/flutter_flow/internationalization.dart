import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'km'];

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
    String? enText = '',
    String? kmText = '',
  }) =>
      [enText, kmText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login_page
  {
    '3p97u62u': {
      'en': 'Welcome!',
      'km': 'សូមស្វាគមន៍!',
    },
    'xkz4xjo6': {
      'en': 'Use the form below to access your account.',
      'km': 'បំពេញព័ត៌មានខាងក្រោមដើម្បីចូលប្រើប្រាស់គណនីរបស់អ្នកឡើងវិញ។',
    },
    'jqzapru8': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    '33aifa5z': {
      'en': '  *',
      'km': '*',
    },
    'k9u5spqi': {
      'en': '',
      'km': 'អាស័យដ្ឋានអ៊ីមែល',
    },
    'f4xxyrqv': {
      'en': '',
      'km': 'បញ្ចូលអ៊ីមែលរបស់អ្នកនៅទីនេះ...',
    },
    'kme6k48z': {
      'en': 'Password',
      'km': 'ពាក្យសម្ងាត់',
    },
    '0losy87s': {
      'en': '  *',
      'km': '*',
    },
    'lfzvgi5q': {
      'en': '',
      'km': 'ពាក្យសម្ងាត់',
    },
    'wt8sx5du': {
      'en': '',
      'km': 'បញ្ចូលពាក្យសម្ងាត់របស់អ្នកនៅទីនេះ...',
    },
    '14ck6jzx': {
      'en': 'Forget Password ?',
      'km': 'ភ្លេចពាក្យសម្ងាត់?',
    },
    'm9klj9ah': {
      'en': 'Login',
      'km': 'ចូលប្រើប្រាស់',
    },
    'zy328lg7': {
      'en': 'Use a social platform to continue',
      'km': 'ភ្ជាប់គណនីប្រើប្រាស់ជាមួយបណ្ដាញសង្គមខាងក្រោម',
    },
    'tcu0c8bu': {
      'en': 'Don\'t have an account?',
      'km': 'មិនមានគណនីប្រើប្រាស់?',
    },
    'kk2rdqi2': {
      'en': 'Create Account',
      'km': 'បង្កើតគណនីថ្មី',
    },
    'kfm1khsu': {
      'en': 'Field is required​​ ',
      'km': 'តម្រូវបំពេញតម្លៃ ',
    },
    'p7rdh4r8': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'ud7wd8di': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'bwbzfuju': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'iha5socs': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
  },
  // forget_password_page
  {
    '3hcuc8v6': {
      'en': 'Forgot Password',
      'km': 'ភ្លេចពាក្យសម្ងាត់',
    },
    'sjjd1jb9': {
      'en':
          'Don\'t remember your password? Enter the email associated with your account below and we will send you a new link.',
      'km':
          'មិនចាំពាក្យសម្ងាត់? បញ្ចូលអ៊ីមែលដែលបានភ្ជាប់ជាមួយគណនីរបស់អ្នកនៅខាងក្រោម ហើយយើងនឹងផ្ញើតំណភ្ជាប់ថ្មីមួយ។',
    },
    '6molgwgm': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    'hfkfb53r': {
      'en': '  *',
      'km': '*',
    },
    'b7er5pp3': {
      'en': '',
      'km': 'អាស័យដ្ឋានអ៊ីមែល',
    },
    'elbpjfvc': {
      'en': '',
      'km': 'សូមបញ្ចូលអ៊ីមែលដែលមានសុពលភាព...',
    },
    '3sdzjivm': {
      'en': 'Send Reset Link',
      'km': 'ផ្ញើតំណកំណត់ឡើងវិញ',
    },
    '8p6xd6cl': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
  },
  // register_page
  {
    'l2xxy1gf': {
      'en': 'Getting Start',
      'km': 'ចាប់ផ្តើម',
    },
    '1trtlgx5': {
      'en': 'UserName',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'hxk2fwvo': {
      'en': '  *',
      'km': '  *',
    },
    'as7y82d2': {
      'en': '',
      'km': '',
    },
    '05m5io2o': {
      'en': '',
      'km': '',
    },
    'w3ke64fk': {
      'en': 'Gender',
      'km': 'ភេទ',
    },
    'dmatb9mx': {
      'en': '  *',
      'km': '  *',
    },
    'c5mapn9i': {
      'en': 'Male',
      'km': 'ប្រុស',
    },
    'z9f3bebh': {
      'en': 'Female',
      'km': 'ស្រី',
    },
    'ey85ualt': {
      'en': 'Others',
      'km': 'ផ្សេងៗ',
    },
    'ck3wwf4l': {
      'en': '',
      'km': '',
    },
    '73k4gjfk': {
      'en': 'Search...',
      'km': 'ស្វែងរក',
    },
    'uvpdn59c': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    'jmvzkqrl': {
      'en': '  *',
      'km': '  *',
    },
    'f4056o95': {
      'en': '',
      'km': '',
    },
    '03v68udv': {
      'en': '',
      'km': '',
    },
    '6mhtjoue': {
      'en': 'Phone Number',
      'km': 'លេខទូរស័ព្ទ',
    },
    'nrqol29m': {
      'en': '  *',
      'km': '  *',
    },
    'jd2pj7py': {
      'en': '',
      'km': '',
    },
    '435c5jmr': {
      'en': 'Password',
      'km': 'ពាក្យសម្ងាត់',
    },
    '7iwsrcqt': {
      'en': '  *',
      'km': '  *',
    },
    '842cdgdd': {
      'en': '',
      'km': '',
    },
    'n4wh5tdq': {
      'en': '',
      'km': '',
    },
    '8cky5375': {
      'en': 'Confirm Password',
      'km': 'បញ្ជាក់ពាក្យសម្ងាត់',
    },
    'n7jzvkxd': {
      'en': '​  *',
      'km': '  *',
    },
    'kx2trk1o': {
      'en': '',
      'km': 'បញ្ជាក់ពាក្យសម្ងាត់',
    },
    'k8c3y3u7': {
      'en': '',
      'km': 'បញ្ចូលពាក្យសម្ងាត់បញ្ជាក់របស់អ្នកនៅទីនេះ...',
    },
    '4bmcyorh': {
      'en': 'Departments',
      'km': 'នាយកដ្ឋាន',
    },
    'sstmtjif': {
      'en': 'Ai',
      'km': '',
    },
    'e50b0x2o': {
      'en': '',
      'km': '',
    },
    'stugoy1x': {
      'en': 'Search...',
      'km': '',
    },
    'lzb2fk51': {
      'en': 'Address',
      'km': 'អាស័យដ្ឋាន',
    },
    'p5mxtwf2': {
      'en': '  *',
      'km': '  *',
    },
    'lmnrge2i': {
      'en': '',
      'km': '',
    },
    'vcc6oszb': {
      'en': '',
      'km': '',
    },
    '29ut49wi': {
      'en': 'Create Account',
      'km': 'បង្កើតគណនីថ្មី',
    },
    'dl4qhfod': {
      'en': 'Please input user name is require!',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    '3jaqvhtx': {
      'en': 'Invalid UserName !',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់មិនត្រឹមត្រូវ !',
    },
    'd16udkub': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    '1vbz39cr': {
      'en': 'Please input Email is require!',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'rfvesdy4': {
      'en': 'Invalid Email input !',
      'km': 'អ៊ីមែលដែលបានបញ្ចូលមិនត្រឹមត្រូវ !',
    },
    'j34oif5x': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    '4jfrslt7': {
      'en': 'Please input Phone Number is require!',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'cvgpbi6q': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'c55uvnn2': {
      'en': 'Please input Password is require!',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'fvvqwvo3': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'cyr6b7x5': {
      'en': 'Please input Confirm Password is require!',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'x2bmalfz': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'kp5srsa6': {
      'en': 'Please input Address is require!',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    '5lchmt0q': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    '07gxzzhq': {
      'en': 'Use a social platform to continue',
      'km': 'ប្រើប្រាស់បណ្ដាញសង្គមដើម្បីបន្ត',
    },
    'ysqhbhpe': {
      'en': 'Already have an account?',
      'km': 'មានគណនីប្រើប្រាស់រួចហើយ? ',
    },
    'ud92zl8z': {
      'en': 'Log In',
      'km': 'ចូលប្រើប្រាស់',
    },
    'zuuuklky': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
  },
  // home_page
  {
    '6c58brtw': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
    'ksn08pdc': {
      'en': 'All',
      'km': 'ទាំងអស់',
    },
    'v3c80fyv': {
      'en': 'All documents in the system',
      'km': 'ឯកសារទាំងអស់នៅក្នុងប្រព័ន្ធ',
    },
    'mofpz8ip': {
      'en': '+30.0% than last week',
      'km': '30.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'sigebxd9': {
      'en': 'Inbox',
      'km': 'ប្រអប់សំបុត្រ',
    },
    'ornitsxz': {
      'en': 'New documents awaiting review',
      'km': 'ឯកសារថ្មីកំពុងរង់ចាំការពិនិត្យ',
    },
    'sxi3a678': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'jbfvv4eq': {
      'en': 'Send out',
      'km': 'ផ្ញើចេញ',
    },
    '9glj7g2f': {
      'en': 'Documents submitted, awaiting or requiring approval',
      'km': 'ឯកសារដែលបានដាក់ស្នើ ឬរង់ចាំការអនុញ្ញាត',
    },
    'jpkkrmtf': {
      'en': '+7.0% than last week',
      'km': '+7.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'ago09cox': {
      'en': 'Favorite',
      'km': 'ចូលចិត្ត',
    },
    '8kpk0sg4': {
      'en': 'Quick access to priority files',
      'km': 'ចូលប្រើឯកសារដែលអ្នកបានចូលចិត្ត',
    },
    '95k7wv8w': {
      'en': '+5.0% than last week',
      'km': '+5.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    '6i4d1x84': {
      'en': 'Folders',
      'km': 'ថតឯកសារ',
    },
    'n2heeocs': {
      'en': 'Your favorite folders',
      'km': 'ថតឯកសារដែលអ្នកចូលចិត្ត',
    },
    '28i18uhq': {
      'en': 'See All',
      'km': 'មើលទាំងអស់',
    },
    '7zosl5h5': {
      'en': 'របាយការណ៍',
      'km': 'របាយការណ៍',
    },
    '2g4jrz1z': {
      'en': '1.3',
      'km': '1.3',
    },
    's03ndk7c': {
      'en': ' MB',
      'km': 'MB',
    },
    'w363w6rn': {
      'en': ' .',
      'km': '.',
    },
    'pn9cr0l5': {
      'en': '1',
      'km': '1',
    },
    '0sthur0g': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    '44faargl': {
      'en': 'លិខិតស្នើរសុំ',
      'km': 'លិខិតស្នើរសុំ',
    },
    'ceorsi8u': {
      'en': '5.4',
      'km': '5.4',
    },
    'z0yakwza': {
      'en': ' MB',
      'km': 'MB',
    },
    'ikona19p': {
      'en': ' .',
      'km': '.',
    },
    '8ut4j81i': {
      'en': '1',
      'km': '1',
    },
    'nk36zyho': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    '7830myvd': {
      'en': 'សារាចរណ៍',
      'km': 'សារាចរណ៍',
    },
    '0xh0plj2': {
      'en': '0.0',
      'km': '0.0',
    },
    'luon3qyn': {
      'en': ' MB',
      'km': 'MB',
    },
    'pv09l66i': {
      'en': ' .',
      'km': '.',
    },
    '8033iww7': {
      'en': '0',
      'km': '0',
    },
    'jlxfm4mf': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    '9y2kqcdx': {
      'en': 'សេចក្ដីណែនាំ',
      'km': 'សេចក្តីណែនាំ',
    },
    '0s1ockp9': {
      'en': '0.0',
      'km': '0.0',
    },
    'vkjd7ojb': {
      'en': ' MB',
      'km': 'MB',
    },
    'k5bbgols': {
      'en': ' .',
      'km': '.',
    },
    '4mnapsy7': {
      'en': '0',
      'km': '0',
    },
    '4as5kvgp': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    '1abmahsw': {
      'en': 'សេចក្ដីសម្រេច',
      'km': 'សេចក្តីសម្រេច',
    },
    'xpjcdzkj': {
      'en': '10.4',
      'km': '10.4',
    },
    '70rr78zb': {
      'en': ' MB',
      'km': 'MB',
    },
    'yfqyee0z': {
      'en': ' .',
      'km': '.',
    },
    'pu4t9n37': {
      'en': '1',
      'km': '1',
    },
    '526z3lyh': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    '0uuemeza': {
      'en': 'ប្រកាស',
      'km': 'ប្រកាស',
    },
    'nl0x0lsx': {
      'en': '0',
      'km': '0',
    },
    'u48uga1h': {
      'en': ' MB',
      'km': 'MB',
    },
    'oqfoupa1': {
      'en': ' .',
      'km': '.',
    },
    'lcm4ypdn': {
      'en': '0',
      'km': '0',
    },
    'ckvpuyp2': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    'wildj3a7': {
      'en': 'Document Type',
      'km': 'ប្រភេទឯកសារ',
    },
    '3d2ndmlu': {
      'en': 'All document type %',
      'km': 'ប្រភេទឯកសារទាំងអស់ %',
    },
    'nqm983zh': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'u7i3magu': {
      'en': 'Yesterday',
      'km': 'ម្សិលមិញ',
    },
    'cvmd1yg1': {
      'en': 'Last Week',
      'km': 'សប្តាហ៍មុន',
    },
    '5tvdkhzu': {
      'en': 'Two Week ago',
      'km': 'ពីរសប្តាហ៍មុន',
    },
    '09f5oo3m': {
      'en': 'Last Month',
      'km': 'ខែមុន',
    },
    'dtep8sjz': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'oly1omzb': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'gtkxa208': {
      'en': 'របាយការណ៍',
      'km': '',
    },
    'cpo4irym': {
      'en': 'Upload File',
      'km': 'បញ្ចូលឯកសារ',
    },
    'wlo1ydtn': {
      'en': 'Recent files',
      'km': 'ឯកសារថ្មីៗ',
    },
    '5cidb0ew': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    'qsguvel7': {
      'en': 'See all',
      'km': 'មើលទាំងអស់គ្នា',
    },
    'nzl2hzz4': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'uvidwo4h': {
      'en': '3.5 GB',
      'km': '3.5 ជីកាបៃ',
    },
    'm5h1e5z3': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': 'ថ្ងៃទី 19 ខែកញ្ញា ឆ្នាំ 2024 ម៉ោង 2:30 រសៀល',
    },
    '8r7rlivz': {
      'en': '+4',
      'km': '+4',
    },
    '6tx4rngs': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'zy5rnu98': {
      'en': '3.5 GB',
      'km': '3.5 ជីកាបៃ',
    },
    'jysv3zlb': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': 'ថ្ងៃទី 19 ខែកញ្ញា ឆ្នាំ 2024 ម៉ោង 2:30 រសៀល',
    },
    'ptnftfag': {
      'en': '+4',
      'km': '+4',
    },
    'xucd0ddf': {
      'en': 'All',
      'km': '',
    },
    'roocr6j1': {
      'en': 'All documents in the system.',
      'km': '',
    },
    '4azw6jiq': {
      'en': '+30.0% than last week',
      'km': '',
    },
    '40c367he': {
      'en': 'Inbox',
      'km': '',
    },
    'egq4v96n': {
      'en': 'New documents awaiting review.',
      'km': '',
    },
    '1ecqxb4b': {
      'en': '+18.0% than last week',
      'km': '',
    },
    'ma7pb6jr': {
      'en': 'Send out',
      'km': '',
    },
    '1braj0qk': {
      'en': 'Documents submitted, awaiting or requiring approval.',
      'km': '',
    },
    'wq32mwy1': {
      'en': '+7.0% than last week',
      'km': '',
    },
    'pypg1mbj': {
      'en': 'Favorite',
      'km': '',
    },
    'yq280qua': {
      'en': 'Quick access to priority files.',
      'km': '',
    },
    'h9yhtg8d': {
      'en': '+5.0% than last week',
      'km': '',
    },
    'axeyu97r': {
      'en': 'Folders',
      'km': '',
    },
    'vomv3o7z': {
      'en': 'Your favorite folders',
      'km': '',
    },
    '2uh7xd9u': {
      'en': 'See All',
      'km': '',
    },
    'z6dq2bif': {
      'en': 'ប្រកាស',
      'km': '',
    },
    'xohozn03': {
      'en': '0',
      'km': '',
    },
    '40e794yx': {
      'en': ' MB',
      'km': '',
    },
    'bcjw4yqd': {
      'en': ' .',
      'km': '',
    },
    'pg5dbfb5': {
      'en': '0',
      'km': '',
    },
    'pw9cxswq': {
      'en': ' files',
      'km': '',
    },
    'vek4ms1e': {
      'en': 'សេចក្ដីសម្រេច',
      'km': '',
    },
    'po9c6y0u': {
      'en': '10.4',
      'km': '',
    },
    '8gh93f1a': {
      'en': ' MB',
      'km': '',
    },
    'rupxyctm': {
      'en': ' .',
      'km': '',
    },
    '8z5ut4og': {
      'en': '1',
      'km': '',
    },
    'g7yg6eg2': {
      'en': ' files',
      'km': '',
    },
    'vm4qhxgc': {
      'en': 'សេចក្ដីណែនាំ',
      'km': '',
    },
    'qnol9jk6': {
      'en': '0.0',
      'km': '',
    },
    '2xdik8pq': {
      'en': ' MB',
      'km': '',
    },
    'hqmq30g3': {
      'en': ' .',
      'km': '',
    },
    'jaenk3jr': {
      'en': '0',
      'km': '',
    },
    'gzdwllun': {
      'en': ' files',
      'km': '',
    },
    '00assvql': {
      'en': 'សារាចរណ៍',
      'km': '',
    },
    'jwxant7n': {
      'en': '0.0',
      'km': '',
    },
    'jjz0z2si': {
      'en': ' MB',
      'km': '',
    },
    'mxtjvdqw': {
      'en': ' .',
      'km': '',
    },
    'lyt86b0y': {
      'en': '0',
      'km': '',
    },
    '4xkivq13': {
      'en': ' files',
      'km': '',
    },
    'jazddu4n': {
      'en': 'លិខិតស្នើរសុំ',
      'km': '',
    },
    '2m89h67y': {
      'en': '5.4',
      'km': '',
    },
    'om3bin5l': {
      'en': ' MB',
      'km': '',
    },
    '1ir7lo92': {
      'en': ' .',
      'km': '',
    },
    'w8b6tyn9': {
      'en': '1',
      'km': '',
    },
    'kfpay8y8': {
      'en': ' files',
      'km': '',
    },
    'f7zwtk3r': {
      'en': 'របាយការណ៍',
      'km': '',
    },
    'vzmfnv9f': {
      'en': '1.3',
      'km': '',
    },
    'pch58w98': {
      'en': ' MB',
      'km': '',
    },
    't0ldg0bn': {
      'en': ' .',
      'km': '',
    },
    'htkw64x8': {
      'en': '1',
      'km': '',
    },
    'z8ued60g': {
      'en': ' files',
      'km': '',
    },
    'awx3rmnw': {
      'en': 'Document Type',
      'km': '',
    },
    '9uk2y33d': {
      'en': 'All document type %',
      'km': '',
    },
    'gfm8vad6': {
      'en': 'Today',
      'km': '',
    },
    '0y4g00o9': {
      'en': 'Yesterday',
      'km': '',
    },
    'rdxmnoux': {
      'en': 'Last Week',
      'km': '',
    },
    'xzome387': {
      'en': 'Two Week ago',
      'km': '',
    },
    'uy26wh25': {
      'en': 'Last Month',
      'km': '',
    },
    'yjspghln': {
      'en': 'Today',
      'km': '',
    },
    'gwn1j4oc': {
      'en': 'Search...',
      'km': '',
    },
    'pt6ddez0': {
      'en': 'របាយការណ៍',
      'km': '',
    },
    'h8d0r0jy': {
      'en': 'Recent files',
      'km': '',
    },
    'mwanx4jv': {
      'en': 'Latest 30 days',
      'km': '',
    },
    'l7uiwm72': {
      'en': 'See all',
      'km': '',
    },
    'wg8cgtvz': {
      'en': 'Reports Staff of 2024',
      'km': '',
    },
    '3ytiwl3w': {
      'en': '3.5 GB',
      'km': '',
    },
    'lyu0gha6': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': '',
    },
    'n25wkd3m': {
      'en': '+4',
      'km': '',
    },
    'ouabgkwn': {
      'en': 'Reports Staff of 2024',
      'km': '',
    },
    'wzpk3c1x': {
      'en': '3.5 GB',
      'km': '',
    },
    '6ah49221': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': '',
    },
    'rl9wzonf': {
      'en': '+4',
      'km': '',
    },
    'm32pyppf': {
      'en': 'Upload File',
      'km': '',
    },
    'y24lcr13': {
      'en': 'Dashboard',
      'km': 'ផ្ទាំងគ្រប់គ្រង',
    },
    'xdxbdj20': {
      'en': '__',
      'km': '__',
    },
  },
  // pgSign-NotUse
  {
    'n99lg1qh': {
      'en': 'Sign',
      'km': 'សញ្ញា',
    },
    'uacnxbrb': {
      'en': 'Search',
      'km': 'ស្វែងរក',
    },
    'y87muteg': {
      'en': 'Notification',
      'km': 'សារជូនដំណឹង',
    },
    'r2aseko0': {
      'en': 'FAQ',
      'km': 'សំណួរគេសួរញឹកញាប់',
    },
    'b4324xdd': {
      'en': 'Upload',
      'km': 'ផ្ទុកឡើង',
    },
    'xn9ztkvk': {
      'en': 'Quick sign your document',
      'km': 'ចុះហត្ថលេខាលើឯកសាររបស់អ្នក។',
    },
    'bpheagsg': {
      'en': 'Actions',
      'km': 'សកម្មភាព',
    },
    'zrvvcox8': {
      'en': 'Document Name',
      'km': 'ឈ្មោះឯកសារ',
    },
    '2sll8wed': {
      'en': 'Create By',
      'km': 'បង្កើតដោយ',
    },
    '2fupd6s2': {
      'en': 'Recipients Email',
      'km': 'អ៊ីមែលអ្នកទទួល',
    },
    'mmhtgpqf': {
      'en': 'Recipients Name',
      'km': 'ឈ្មោះអ្នកទទួល',
    },
    'fq582owf': {
      'en': 'Create Date',
      'km': 'បង្កើតកាលបរិច្ឆេទ',
    },
    'b1rtzbd5': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
    'esbn3zzx': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    'n3rk94cm': {
      'en': 'Randy Peterson',
      'km': 'Randy Peterson',
    },
    'o2iznvy5': {
      'en': 'Business Name',
      'km': 'ឈ្មោះអាជីវកម្ម',
    },
    'rsiszwxl': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    '7k5rpwid': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    '2n18z6n5': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    'n1iybx00': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    'edv1jc9f': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    'v4kh4gho': {
      'en': 'Randy Peterson',
      'km': 'Randy Peterson',
    },
    '3ssvev6n': {
      'en': 'Business Name',
      'km': 'ឈ្មោះអាជីវកម្ម',
    },
    '9et9mm8d': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'mk2n6dyh': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    '4fq3h4ci': {
      'en': '03-09-2024',
      'km': '03-09-2024',
    },
    'ifktubbn': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    'arvl0o9h': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    'c29d82yq': {
      'en': 'Randy Peterson',
      'km': 'Randy Peterson',
    },
    's57txj49': {
      'en': 'Business Name',
      'km': 'ឈ្មោះអាជីវកម្ម',
    },
    '9i5uq25c': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    '0x03qidm': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    '9k56ggth': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    '14zhp4uc': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    'tit9al7y': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    '2hbe3j5w': {
      'en': 'Randy Peterson',
      'km': 'Randy Peterson',
    },
    'qzabufpw': {
      'en': 'Business Name',
      'km': 'ឈ្មោះអាជីវកម្ម',
    },
    '7e9az73b': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'b83y1va4': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'bp66oxmw': {
      'en': '03-09-2024',
      'km': '03-09-2024',
    },
    'x2ky2ct8': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    'd5704c15': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'h8i1ujpn': {
      'en': 'Randy Peterson',
      'km': 'Randy Peterson',
    },
    '8awmt12d': {
      'en': 'Business Name',
      'km': 'ឈ្មោះអាជីវកម្ម',
    },
    'om5t9miq': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'o6b88jlb': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'i836uvue': {
      'en': '03-09-2024',
      'km': '03-09-2024',
    },
    'zdda1wpe': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    'c4ingv5t': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    '6ymm9fyk': {
      'en': 'Randy Peterson',
      'km': 'Randy Peterson',
    },
    'xjyjekvb': {
      'en': 'Business Name',
      'km': 'ឈ្មោះអាជីវកម្ម',
    },
    'yaz64oyz': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    '9xgnvdx6': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'g63v7s3i': {
      'en': '03-09-2024',
      'km': '03-09-2024',
    },
    'lspqhiqz': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    '9rhoo7rt': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    'hvth20xs': {
      'en': 'Randy Peterson',
      'km': 'Randy Peterson',
    },
    '9utwhdkm': {
      'en': 'Business Name',
      'km': 'ឈ្មោះអាជីវកម្ម',
    },
    '0mffunga': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'x0ietf41': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'erwxscn7': {
      'en': '03-09-2024',
      'km': '03-09-2024',
    },
    'y2gqz8s3': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    '4ft29frv': {
      'en': 'Report request permission',
      'km': 'រាយការណ៍ស្នើសុំការអនុញ្ញាត',
    },
    'bs5isk1h': {
      'en': 'Thlang Penglay',
      'km': 'ថ្លឹង ប៉េងឡាយ',
    },
    'b41aoniv': {
      'en': '.UAT',
      'km': '.UAT',
    },
    '62zxapi4': {
      'en': 'penglay.thlang@oone.bz',
      'km': 'penglay.thlang@oone.bz',
    },
    'qf6w82o8': {
      'en': 'penglay.thlang',
      'km': 'penglay.thlang',
    },
    '8des4xwh': {
      'en': '01-09-2024',
      'km': '03-09-2024',
    },
    'wtyewxhu': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'fcyoodds': {
      'en': 'Customers',
      'km': 'អតិថិជន',
    },
    '3ourv2w9': {
      'en': '__',
      'km': '__',
    },
  },
  // report_page
  {
    '4h88trkp': {
      'en': 'Contracts',
      'km': 'កិច្ចសន្យា',
    },
    '279qzn35': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    '3wzoyp6a': {
      'en': 'Activity Log',
      'km': 'កំណត់ហេតុសកម្មភាព',
    },
    'ng00ucl3': {
      'en': 'Activity Log',
      'km': 'កំណត់ហេតុសកម្មភាព',
    },
    '6v3p15yz': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'cafrk2vz': {
      'en': 'Last 7 days',
      'km': '7 ថ្ងៃចុងក្រោយ',
    },
    '4z0tealw': {
      'en': 'Last 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    'al95fllw': {
      'en': 'Custom Date',
      'km': 'កំណត់ថ្ងៃបរិច្ឆេទ',
    },
    'p3ektpq1': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'mepgqcla': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'e33rpgnx': {
      'en': '',
      'km': '',
    },
    'wm0ry9ko': {
      'en': 'All Event',
      'km': 'គ្រប់ព្រឹត្តិការណ៍',
    },
    '6w8gfr5m': {
      'en': 'Create Account',
      'km': 'បង្កើតគណនី',
    },
    'g6s65h7y': {
      'en': 'Login/Logout',
      'km': 'ចូល/ចាកចេញ',
    },
    '4y8pj5fn': {
      'en': 'Sign',
      'km': 'ហត្ថលេខា',
    },
    'ihahd9wf': {
      'en': 'Upload',
      'km': 'បញ្ចូល',
    },
    'loltc1hw': {
      'en': 'Delete',
      'km': 'លុប',
    },
    'fqbxax46': {
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    '932cm0vi': {
      'en': 'Draft',
      'km': 'ព្រាងទុក',
    },
    'whgutchx': {
      'en': 'Share',
      'km': 'ចែករំលែក',
    },
    'nk8u85ng': {
      'en': 'Complete',
      'km': 'បញ្ចប់',
    },
    'm5gt6iiz': {
      'en': 'All Event',
      'km': 'ព្រឹត្តិការណ៍ទាំងអស់',
    },
    'ymp726rb': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'n8i91k1h': {
      'en': 'All Team',
      'km': 'គ្រប់ក្រុម',
    },
    '3mnhknzo': {
      'en': 'Frontier',
      'km': 'Frontier',
    },
    'xke8vafz': {
      'en': 'UAT',
      'km': 'UAT',
    },
    'p9nz2w46': {
      'en': 'Dev',
      'km': 'Dev',
    },
    'i7yhb75j': {
      'en': 'All Team',
      'km': 'គ្រប់ក្រុម',
    },
    '0kfoox9s': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'vxoyuzle': {
      'en': 'PDF',
      'km': 'PDF',
    },
    '4h8qvo0e': {
      'en': 'CSV',
      'km': 'CSV',
    },
    '97hgiz40': {
      'en': 'Excel',
      'km': 'Excel',
    },
    '4vmci56v': {
      'en': 'Export',
      'km': 'ទាញយក',
    },
    'c88o7ywk': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'v7xt9lkn': {
      'en': 'Activity By',
      'km': 'សកម្មភាពដោយ',
    },
    'zrhbcha2': {
      'en': 'Event',
      'km': 'ព្រឹត្តិការណ៍',
    },
    'ff8k38lb': {
      'en': 'Date time',
      'km': 'ពេលវេលាកាលបរិច្ឆេទ',
    },
    'z1tngx62': {
      'en': 'Team',
      'km': 'ក្រុម',
    },
    'c9wcxkhr': {
      'en': 'User Role',
      'km': 'តួនាទីអ្នកប្រើប្រាស់',
    },
    'wbilyjv6': {
      'en': 'Device Name',
      'km': 'ឈ្មោះឧបករណ៍',
    },
    'bqjveg70': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '24oy4deo': {
      'en': 'Login system',
      'km': 'ប្រព័ន្ធចូល',
    },
    'odw2ifld': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'sjo10zxm': {
      'en': 'Frontier',
      'km': 'Frontier',
    },
    'n9v1157x': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'ci37qyc2': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'bmqk3laf': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'chse9kr6': {
      'en': 'Login system',
      'km': 'ប្រព័ន្ធចូល',
    },
    'yivugqww': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '4kyvpa70': {
      'en': 'Frontier',
      'km': 'Frontier',
    },
    'hc6r7gw0': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'peym1zku': {
      'en': 'iPhone 16 Pro max',
      'km': 'iPhone 16 Pro max',
    },
    'pvkpuyny': {
      'en': 'Soa Soksovan',
      'km': 'Soa Soksovan',
    },
    '5qzhy1km': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    '1ov5s88b': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    'q82l5arh': {
      'en': 'UAT',
      'km': 'UAT',
    },
    'hgbaoqd8': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'yzernrzl': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'eluhe39y': {
      'en': 'Sok Pisey',
      'km': 'Sok Pisey',
    },
    'e4z66cdr': {
      'en': 'Document successfully signed',
      'km': 'ឯកសារបានចុះហត្ថលេខាដោយជោគជ័យ',
    },
    'jkl7or9o': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    'vo1zehpl': {
      'en': 'Dev',
      'km': 'Dev',
    },
    '8dd0lsvh': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'djz3faga': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '56kteguv': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'uhbcnekp': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    'z6c5a4l2': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    '8169red6': {
      'en': 'UAT',
      'km': 'UAT',
    },
    'qv17ctt0': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'rv3ypatc': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'm8rx1dkp': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'bbjdwqo6': {
      'en': 'Document has been deleted',
      'km': 'ឯកសារត្រូវបានលុប',
    },
    '74wt676p': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    '0u7vug1q': {
      'en': 'HR',
      'km': 'HR',
    },
    'ow7a7v41': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'bnq7dkxz': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'dzwlpqmm': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'hppcfxye': {
      'en': 'Document has been deleted',
      'km': 'ឯកសារត្រូវបានលុប',
    },
    'l94euq6n': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    '2bktqdb6': {
      'en': 'HR',
      'km': 'HR',
    },
    'q3t1rbdm': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'ggwy1pzo': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'f7isjwqt': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'xshin5i4': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    '5wrhtbeo': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    'w7mjhpx5': {
      'en': 'Frontier',
      'km': 'Frontier',
    },
    '28krnll4': {
      'en': 'Admin',
      'km': 'Admin',
    },
    '1kdvh0nx': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '985ycfy8': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'djzl0hya': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    'd5w9tgbz': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    '10lxch8b': {
      'en': 'HR',
      'km': 'HR',
    },
    'vjefkxqo': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'lpl5d3p0': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'hnz4qjr7': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'gyfzw7c3': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    'lq55pxce': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    'wq2d1m7c': {
      'en': 'HR',
      'km': 'HR',
    },
    'yqpfy6gl': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'ztkucpyn': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'kc7aezs7': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'w9f3apok': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    '4n2qb2ix': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    'dvq15fio': {
      'en': 'HR',
      'km': 'HR',
    },
    'ekp798cn': {
      'en': 'Admin',
      'km': 'Admin',
    },
    '7yquso0t': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'xxcmr1yb': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'gjmy8sk7': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    'jnvoekf3': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    '1bywgjbu': {
      'en': 'HR',
      'km': 'HR',
    },
    '8n3ikcc0': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'yru6u8ao': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'y74iyvsp': {
      'en': 'Sok San',
      'km': 'Desktop-Dell',
    },
    'w9ccqehr': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    '3pdm940e': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    '4sdia306': {
      'en': 'HR',
      'km': 'HR',
    },
    'ndg6ti1c': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'itp4zq70': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '3w7wlw2v': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'bzwbz9hg': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    '472nwgmn': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    'ghi9l382': {
      'en': 'HR',
      'km': 'HR',
    },
    'lycpwymh': {
      'en': 'Admin',
      'km': 'Admin',
    },
    '5l8ut3gs': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'fmhtecwn': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'n1qsfdmg': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    'gv3gxcnx': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    't982ml50': {
      'en': 'HR',
      'km': 'HR',
    },
    '1l1t60aw': {
      'en': 'Admin',
      'km': 'Admin',
    },
    '39ofekli': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'u4wucwn6': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'ba39hfp4': {
      'en': 'Document has been drafted',
      'km': 'ឯកសារត្រូវបានព្រាងទុក',
    },
    'vget975w': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 am',
    },
    '6q0bqshh': {
      'en': 'HR',
      'km': 'HR',
    },
    's5ijanuf': {
      'en': 'Admin',
      'km': 'Admin',
    },
    'kxasw4b2': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'y6u0fqul': {
      'en': 'Executive Summary',
      'km': 'សេចក្តីសង្ខេបប្រតិបត្តិ',
    },
    'j08eiorc': {
      'en': '__',
      'km': '__',
    },
  },
  // PageDocuments
  {
    'gdov02bf': {
      'en': 'Documents',
      'km': 'ឯកសារ',
    },
    'fsl77xe1': {
      'en': 'New',
      'km': 'បង្កើតថ្មី',
    },
    '3yfub21r': {
      'en': 'Filter',
      'km': 'តម្រងរក',
    },
    '7k055vec': {
      'en': 'Show/HideColumn',
      'km': 'បង្ហាញ / លាក់​ តារាង',
    },
    'vtpqtkiz': {
      'en': 'My Folder ',
      'km': 'ថតឯកសាររបស់ខ្ញុំ',
    },
    'nvpv1o4l': {
      'en': 'My Folder',
      'km': 'ថតឯកសាររបស់ខ្ញុំ',
    },
    'o111dyl2': {
      'en': 'File',
      'km': 'ឯកសារ',
    },
    'sgo1mrr8': {
      'en': 'My Folder',
      'km': 'ថតឯកសាររបស់ខ្ញុំ',
    },
    '3479p09t': {
      'en': 'Back',
      'km': '',
    },
    '08jtfjl2': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    '2j4tk4sk': {
      'en': 'Owner',
      'km': 'ម្ចាស់កម្មសិទ្ធិ',
    },
    'p73x0o3b': {
      'en': 'LastModify',
      'km': 'ការកែប្រែចុងក្រោយ',
    },
    'jj43cwgq': {
      'en': 'FileSize',
      'km': 'ទំហំឯកសារ',
    },
    'expql791': {
      'en': 'No File or Folder here!',
      'km': '',
    },
    '5bmqbyg0': {
      'en': 'Click \"New\" button to Upload file or folder!',
      'km': '',
    },
    '9hyxjmkj': {
      'en': 'Shared with me',
      'km': 'ចែករំលែក',
    },
    '9fs33upp': {
      'en': 'Share with me',
      'km': 'ចែករំលែក',
    },
    'ue61483s': {
      'en': 'File',
      'km': 'ឯកសារ',
    },
    'gjqgna7t': {
      'en': 'Share with me',
      'km': '',
    },
    '0pb4xb8o': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    'jv7uovdc': {
      'en': 'ShareBy',
      'km': 'ចែករំលែកដោយ',
    },
    'w9n64dc1': {
      'en': 'ShareDate',
      'km': 'កាលបរិច្ឆេទចែករំលែក',
    },
    'ucbrwb23': {
      'en': 'Favorites',
      'km': 'ចូលចិត្ត',
    },
    'g533fxgn': {
      'en': 'No Favorite File!',
      'km': 'មិនមានឯកសារចូលចិត្ត',
    },
    'z0xkrjr8': {
      'en': 'Add favorite file that you want to easily find it later!',
      'km': 'បន្ថែមឯកសារដែលអ្នកចូលចិត្តដើម្បីងាយស្រួលស្វែងរកនៅពេលក្រោយ!',
    },
    '4a69aa7c': {
      'en': 'Trash',
      'km': 'ធុងសំរាម',
    },
    'hq69jrza': {
      'en': 'Trash',
      'km': 'ធុងសំរាម',
    },
    'edbef2qz': {
      'en': 'File',
      'km': '',
    },
    '51b666jj': {
      'en': 'Trash',
      'km': '',
    },
    'zd8epvwn': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    'e4uzdgv3': {
      'en': 'Owner',
      'km': 'ម្ចាស់កម្មសិទ្ធិ',
    },
    '3rn0j3gj': {
      'en': 'LastModify',
      'km': 'កែប្រែចុងក្រោយ',
    },
    'vsdkcbdk': {
      'en': 'FileSize',
      'km': 'ទំហំឯកសារ',
    },
    'i90wurk5': {
      'en': 'No File or Folder here!',
      'km': '',
    },
    'ckw7xs35': {
      'en': 'Click \"New\" button to Upload file or folder!',
      'km': '',
    },
    'smtxdnbn': {
      'en': '__',
      'km': '__',
    },
  },
  // pgSignEdit-NotUse
  {
    'z6711yw8': {
      'en': 'Sign',
      'km': 'សញ្ញា',
    },
    'jsbsw1ec': {
      'en': 'Prepare Signature',
      'km': 'រៀបចំហត្ថលេខា',
    },
    '1zp7cere': {
      'en': 'Thlang Penglay',
      'km': 'ថ្លឹង ប៉េងឡាយ',
    },
    'r5wjxxq6': {
      'en': 'penglay.thlang@oone.bz',
      'km': 'penglay.thlang@oone.bz',
    },
    '90d6u6wg': {
      'en': '',
      'km': '',
    },
    'jqc270lv': {
      'en': 'Document Name',
      'km': 'ឈ្មោះឯកសារ',
    },
    '71ehvnam': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'ftsohkmn': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    '1000khvj': {
      'en': 'Sign',
      'km': 'សញ្ញា',
    },
    'xv55snol': {
      'en': 'Sign',
      'km': 'សញ្ញា',
    },
    '3rfw8ncg': {
      'en': 'Approve',
      'km': 'យល់ព្រម',
    },
    'jk85bylu': {
      'en': 'Assign Member',
      'km': 'ចាត់តាំងសមាជិក',
    },
    'ltj120ww': {
      'en': 'Void Document',
      'km': 'ឯកសារឥតបានការ',
    },
    'rf0my27k': {
      'en': '',
      'km': '',
    },
    'u21w4jnf': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'lfk1n1nl': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'owgkrrrm': {
      'en': 'Schedule sent email',
      'km': 'កាលវិភាគផ្ញើអ៊ីមែល',
    },
    'eejjmlck': {
      'en': 'Schedule',
      'km': 'កាលវិភាគ',
    },
    'u062nn9n': {
      'en': 'Sent Now',
      'km': 'បានផ្ញើឥឡូវនេះ',
    },
    'lw5znap1': {
      'en': 'Decline',
      'km': 'បដិសេធ',
    },
    'mwep4ny0': {
      'en': 'Approve',
      'km': 'យល់ព្រម',
    },
    'hv7ctsfj': {
      'en': 'Assign Members',
      'km': 'ចាត់តាំងសមាជិក',
    },
    'k7q5vco1': {
      'en': 'Void Document',
      'km': 'ឯកសារឥតបានការ',
    },
    'trbu72jo': {
      'en':
          'Recipients can no longer view or sign documents, but will receive an email notification',
      'km':
          'អ្នកទទួលមិនអាចមើល ឬចុះហត្ថលេខាលើឯកសារបានទៀតទេ ប៉ុន្តែនឹងទទួលបានការជូនដំណឹងតាមអ៊ីមែល',
    },
    'ujdfrtcj': {
      'en': 'Edit Document',
      'km': 'កែសម្រួលឯកសារ',
    },
    'j1s9z0w8': {
      'en': 'Left Rotation',
      'km': 'ការបង្វិលឆ្វេង',
    },
    '1rzw9g57': {
      'en': 'Right Rotation',
      'km': 'ការបង្វិលស្តាំ',
    },
    '3ho1pics': {
      'en': 'Zoom In',
      'km': 'ពង្រីក',
    },
    'i75sdfkk': {
      'en': 'Zoom Out',
      'km': 'ពង្រីក',
    },
    'tqbxkabk': {
      'en': 'Download this Document',
      'km': 'ទាញយកឯកសារនេះ។',
    },
    'xn04bd1s': {
      'en': 'Print this Document',
      'km': 'បោះពុម្ពឯកសារនេះ។',
    },
    'ly6vyk4b': {
      'en': 'Full Screen',
      'km': 'ពេញអេក្រង់',
    },
    '59wlg8qu': {
      'en': ' ',
      'km': '',
    },
    '0uxyhlq2': {
      'en': 'Customers',
      'km': 'អតិថិជន',
    },
    'abdnmrmj': {
      'en': '__',
      'km': '__',
    },
  },
  // PageHome_20240912211400
  {
    'gqiuwimc': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
    'x0gf2gqs': {
      'en': 'Below is a summary of your teams activity.',
      'km': 'ខាងក្រោមនេះគឺជាសេចក្តីសង្ខេបនៃសកម្មភាពក្រុមរបស់អ្នក។',
    },
    '3y7jujy4': {
      'en': 'Card-1',
      'km': 'កាត-១',
    },
    'w7kv3gd5': {
      'en': '24',
      'km': '២៤',
    },
    'mdr4a43s': {
      'en': 'Card-2',
      'km': 'កាត-២',
    },
    'xlj9lrth': {
      'en': '3,200',
      'km': '៣.២០០',
    },
    '4i4j89bd': {
      'en': 'Card-3',
      'km': 'កាត-៣',
    },
    'psbamu00': {
      'en': '4300',
      'km': '៤៣០០',
    },
    'tvbgcng7': {
      'en': 'UI Design Team',
      'km': 'ក្រុមរចនា UI',
    },
    '9gmm5ltv': {
      'en': '4 Members',
      'km': '4 សមាជិក',
    },
    'zh9ubtl2': {
      'en': 'Contract Activity',
      'km': 'សកម្មភាពកិច្ចសន្យា',
    },
    '52y1zbhs': {
      'en': 'Below is an a summary of activity.',
      'km': 'ខាងក្រោមនេះគឺជាសេចក្តីសង្ខេបនៃសកម្មភាព។',
    },
    'j4r0jpxs': {
      'en': 'Customer Activity',
      'km': 'សកម្មភាពអតិថិជន',
    },
    'y4lv69rp': {
      'en': 'Below is an a summary of activity.',
      'km': 'ខាងក្រោមនេះគឺជាសេចក្តីសង្ខេបនៃសកម្មភាព។',
    },
    'za9e295w': {
      'en': 'Contract Activity',
      'km': 'សកម្មភាពកិច្ចសន្យា',
    },
    'zmgysst3': {
      'en': 'Below is an a summary of activity.',
      'km': 'ខាងក្រោមនេះគឺជាសេចក្តីសង្ខេបនៃសកម្មភាព។',
    },
    'cggjl7uc': {
      'en': 'Customer Activity',
      'km': 'សកម្មភាពអតិថិជន',
    },
    'zyza90bf': {
      'en': 'Below is an a summary of activity.',
      'km': 'ខាងក្រោមនេះជាសេចក្តីសង្ខេបនៃសកម្មភាព។',
    },
    'z4cx0usi': {
      'en': 'Dashboard',
      'km': 'ផ្ទាំងគ្រប់គ្រង',
    },
    'o3zruhx1': {
      'en': '__',
      'km': '__',
    },
  },
  // PageWorkflowProcess
  {
    'ax13aos2': {
      'en': 'Document Flow',
      'km': 'លំហូរឯកសារ',
    },
    'j2igaibn': {
      'en': 'Document Flow',
      'km': 'លំហូរឯកសារ',
    },
    'w27j05qf': {
      'en': 'លិខិតលេខ_១២៣_ផ_ប_ក_ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
      'km': 'លិខិតលេខ_១២៣_ផ_ប_ក_ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
    },
    'gwy7tvmw': {
      'en': 'លិខិតដាក់ជូនលោកនាយក',
      'km': 'លិខិតដាក់ជូនលោកនាយក',
    },
    '7zewm9w5': {
      'en': 'លិខិតលេខ ១២៣ ក.ណ ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
      'km': 'លិខិតលេខ ១២៣ ក.ណ ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
    },
    'avm4d2wb': {
      'en': 'Receive NO',
      'km': 'ឈ្មោះ',
    },
    'lazwzvbf': {
      'en': 'Send NO',
      'km': 'ឈ្មោះ',
    },
    '7stleola': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    'ywg3lp0r': {
      'en': 'Folder',
      'km': 'ថតឯកសារ',
    },
    'xtr68xk5': {
      'en': '',
      'km': '',
    },
    'tiyqqrey': {
      'en': 'My Folder',
      'km': 'ថតឯកសាររបស់ខ្ញុំ',
    },
    'tmanw9ob': {
      'en': 'Add To Folder',
      'km': 'បន្ថែមទៅថតឯកសារ',
    },
    '5r3v0u8w': {
      'en': 'Search...',
      'km': 'ស្វែករក...',
    },
    'duvsmwry': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    's864zn0b': {
      'en': '',
      'km': '',
    },
    'axynpm8e': {
      'en': 'Urgent',
      'km': 'បន្ទាន់',
    },
    'tbz0lgog': {
      'en': 'High',
      'km': 'ខ្ពស់',
    },
    'waw5xqh4': {
      'en': 'Medium',
      'km': 'មធ្យម',
    },
    '5xep6okw': {
      'en': 'Low',
      'km': 'កម្រិតទាប',
    },
    'k5nevedm': {
      'en': 'Select Priority',
      'km': 'ជ្រើសរើសអាទិភាព',
    },
    '43tw4exi': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '1e2uuj99': {
      'en': 'Sensitivity',
      'km': 'ឯកជនភាព',
    },
    'ktt5netr': {
      'en': '',
      'km': '',
    },
    'brvr23qc': {
      'en': 'Normal',
      'km': 'ធម្មតា',
    },
    'kkr7om96': {
      'en': 'Personal',
      'km': 'ផ្ទាល់ខ្លួន',
    },
    '9gfbqkba': {
      'en': 'Private',
      'km': 'ឯកជនភាព',
    },
    'tqgus76c': {
      'en': 'Confidential',
      'km': 'សម្ងាត់',
    },
    '5b9uwttd': {
      'en': 'Select Sensitivity',
      'km': 'ជ្រើសរើសឯកជនភាព',
    },
    'iz9laera': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '5wbfq62e': {
      'en': 'Category',
      'km': 'ប្រភេទ',
    },
    'spwcppa8': {
      'en': 'Contracts',
      'km': '',
    },
    'mr1dqi16': {
      'en': 'Contracts',
      'km': 'កិច្ចសន្យា',
    },
    '033ebcxn': {
      'en': 'Invoices',
      'km': 'វិក័យប័ត្រ',
    },
    'c4d5bqam': {
      'en': 'Proposals',
      'km': 'សំណើ',
    },
    'e91fqxi1': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    'sqbqhnsk': {
      'en': 'Select Category',
      'km': 'ជ្រើសរើសប្រភេទ',
    },
    'hwtbnwwz': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'a5zcepci': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    '8hm57f1a': {
      'en': 'Description for  documents.',
      'km': 'ការពណ៌នាសម្រាប់ឯកសារ',
    },
    'xwiv6j0b': {
      'en': 'Note',
      'km': 'ចំណាំ',
    },
    'v80qkkjh': {
      'en': ' Note',
      'km': 'ចំណាំ',
    },
    'k8e8266z': {
      'en': 'Add Field',
      'km': 'បន្ថែម',
    },
    '730eu169': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    '3vngcf37': {
      'en': 'Next',
      'km': 'បន្ទាប់',
    },
    '20mk73jr': {
      'en': 'Please input value!',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    '7fk4ax7x': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '911pbh1a': {
      'en': 'Please input value!',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    'pmu5wrfq': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'm1nupm5q': {
      'en': 'Please input value!',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    'le30xruf': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'z02d4ybc': {
      'en': 'Field is required',
      'km': '',
    },
    'gyd8qpsw': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'qxescb6s': {
      'en': 'Field is required',
      'km': '',
    },
    'tiugm5ml': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'ewx53cn1': {
      'en': 'Please input value!',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    'nzdd83mn': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'pf8gmgqv': {
      'en': 'Field is required',
      'km': '',
    },
    '2g01u5mu': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '7r89by5h': {
      'en': 'Field is required',
      'km': '',
    },
    '6oe2lczq': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'ka3elsly': {
      'en': 'Field is required',
      'km': '',
    },
    'fb18iivv': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'its7mru4': {
      'en': 'Customers',
      'km': 'អតិថិជន',
    },
    '0y5lu0qn': {
      'en': '__',
      'km': '__',
    },
  },
  // PageReportsV1
  {
    'kf5jjs8f': {
      'en': 'Contracts',
      'km': 'កិច្ចសន្យា',
    },
    'dn73rdld': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    'adbc64f2': {
      'en': 'Activity Log',
      'km': 'កំណត់ហេតុសកម្មភាព',
    },
    'hqdtucpp': {
      'en': 'Document Status',
      'km': 'ស្ថានភាពឯកសារ',
    },
    'l38mflhf': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'kqb5vg5m': {
      'en': 'Declined',
      'km': 'បានបដិសេធ',
    },
    'eskvgku5': {
      'en': 'Recalled',
      'km': 'បានរំលឹកឡើងវិញ',
    },
    'u3hf4dor': {
      'en': 'In progress',
      'km': 'កំពុងដំណើរការ',
    },
    '7yar0s68': {
      'en': 'Expired',
      'km': 'ផុតកំណត់',
    },
    'sysp28bt': {
      'en': 'Document tag',
      'km': 'ស្លាកឯកសារ',
    },
    'n88nes7k': {
      'en': 'Fail Access',
      'km': 'ការចូលដំណើរការបរាជ័យ',
    },
    '6nz0fwig': {
      'en': 'Document validity',
      'km': 'សុពលភាពឯកសារ',
    },
    'tx1mc7q1': {
      'en': 'Activity Log',
      'km': 'កំណត់ហេតុសកម្មភាព',
    },
    'fgpnel0l': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'ujmw10x8': {
      'en': 'Last 7 days',
      'km': '7 ថ្ងៃចុងក្រោយ',
    },
    'ktm1yo0s': {
      'en': 'Last 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    'ccsdziux': {
      'en': 'Custom date',
      'km': 'កាលបរិច្ឆេទផ្ទាល់ខ្លួន',
    },
    'yu5hk9i5': {
      'en': 'Last 7 days',
      'km': '7 ថ្ងៃចុងក្រោយ',
    },
    'qdms7eoy': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'zjzio1zf': {
      'en': '',
      'km': '',
    },
    'kimnf8gr': {
      'en': 'PDF',
      'km': 'PDF',
    },
    'oqq2cnkb': {
      'en': 'CSV',
      'km': 'CSV',
    },
    'm2zkpvmw': {
      'en': 'XLXS',
      'km': 'XLXS',
    },
    'dm4dimx3': {
      'en': 'Export as',
      'km': 'នាំចេញជា',
    },
    'x7t0vl06': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'cdiy0f5j': {
      'en': 'Performed By',
      'km': 'សម្តែងដោយ',
    },
    'jdlqzb9o': {
      'en': 'Activity',
      'km': 'សកម្មភាព',
    },
    'zh4yo54f': {
      'en': 'Performed on',
      'km': 'បានសម្តែងនៅលើ',
    },
    '56yjdyzr': {
      'en': 'Time of activity',
      'km': 'ពេលវេលានៃសកម្មភាព',
    },
    'w7ojrtcj': {
      'en': 'hel.pech@gmail.com.kh',
      'km': 'hel.pech@gmail.com.kh',
    },
    '5yj7ll53': {
      'en': 'Document has been drafted',
      'km': 'ឯកសារត្រូវបានព្រាង',
    },
    '1bkae155': {
      'en': 'Request Form',
      'km': 'ទម្រង់ស្នើសុំ',
    },
    '865t52z3': {
      'en': 'Sep 09, 2024 10:00am',
      'km': 'ថ្ងៃទី 09 ខែកញ្ញាឆ្នាំ 2024 ម៉ោង 10:00 ព្រឹក',
    },
    'vu1s0ep7': {
      'en': 'hin.seanghai@gmail.com.kh',
      'km': 'hin.seanghai@gmail.com.kh',
    },
    'er5sip52': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានផ្ទុកឡើង',
    },
    'gls3ef6i': {
      'en': 'Request Form',
      'km': 'ទម្រង់ស្នើសុំ',
    },
    'yorvl7wv': {
      'en': 'Sep 09, 2024 10:00am',
      'km': 'ថ្ងៃទី 09 ខែកញ្ញាឆ្នាំ 2024 ម៉ោង 10:00 ព្រឹក',
    },
    '4ncxl7m5': {
      'en': 'hel.pech@gmail.com.kh',
      'km': 'hel.pech@gmail.com.kh',
    },
    'eeah7eer': {
      'en': 'Document successfully signed',
      'km': 'ឯកសារត្រូវបានចុះហត្ថលេខាដោយជោគជ័យ',
    },
    'dj3gq7zc': {
      'en': 'Form Request 09/2024',
      'km': 'ទម្រង់បែបបទស្នើសុំ ០៩/២០២៤',
    },
    '1hsbfen0': {
      'en': 'Sep 09, 2024 10:00am',
      'km': 'ថ្ងៃទី 09 ខែកញ្ញាឆ្នាំ 2024 ម៉ោង 10:00 ព្រឹក',
    },
    'h57ybxyc': {
      'en': 'sam.thanu@gmail.com.kh',
      'km': 'sam.thanu@gmail.com.kh',
    },
    '0bthwdqb': {
      'en': 'Document has been drafted',
      'km': 'ឯកសារត្រូវបានព្រាង',
    },
    'f9r3dew3': {
      'en': 'Contract E-Water W00',
      'km': 'កិច្ចសន្យា E-Water W00',
    },
    '1ifx6ckt': {
      'en': 'Sep 09, 2024 10:00am',
      'km': 'ថ្ងៃទី 09 ខែកញ្ញាឆ្នាំ 2024 ម៉ោង 10:00 ព្រឹក',
    },
    '76rq8unf': {
      'en': 'leng.pichsangva@gmail.com.kh',
      'km': 'leng.pichsangva@gmail.com.kh',
    },
    'iou0dglg': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានផ្ទុកឡើង',
    },
    'o6v6jxck': {
      'en': 'User Manual RTSWP',
      'km': 'សៀវភៅណែនាំអ្នកប្រើប្រាស់ RSWP',
    },
    'kzlxhnaa': {
      'en': 'Aug 07, 2024 09:00am',
      'km': 'ថ្ងៃទី 07 ខែសីហា ឆ្នាំ 2024 ម៉ោង 09:00 ព្រឹក',
    },
    'o6t0eag4': {
      'en': 'leng.pichsangva@gmail.com.kh',
      'km': 'leng.pichsangva@gmail.com.kh',
    },
    'os22vumt': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុម័ត',
    },
    'c0oz1trt': {
      'en': 'Report Filnal RTSWP',
      'km': 'រាយការណ៍ RTSWP ចុងក្រោយ',
    },
    'b8j85pul': {
      'en': 'Aug 05, 2024 10:00am',
      'km': 'ថ្ងៃទី 05 ខែសីហា ឆ្នាំ 2024 ម៉ោង 10:00 ព្រឹក',
    },
    '76dqicei': {
      'en': 'preab.chivin@gmail.com.kh',
      'km': 'preab.chivin@gmail.com.kh',
    },
    'hw09dpej': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានផ្ទុកឡើង',
    },
    '39bpbc4k': {
      'en': 'Change Log v7.2.2',
      'km': 'ផ្លាស់ប្តូរកំណត់ហេតុ v7.2.2',
    },
    'npb0thkv': {
      'en': 'Aug 05, 2024 10:00am',
      'km': 'ថ្ងៃទី 05 ខែសីហា ឆ្នាំ 2024 ម៉ោង 10:00 ព្រឹក',
    },
    'kf2vx3mk': {
      'en': 'hel.pech@gmail.com.kh',
      'km': 'hel.pech@gmail.com.kh',
    },
    'wk7h0dk7': {
      'en': 'Document has been deleted',
      'km': 'ឯកសារត្រូវបានលុប',
    },
    '16z1izlf': {
      'en': 'Sign off new feature v9',
      'km': 'បិទមុខងារថ្មី v9',
    },
    '8y2r6py3': {
      'en': 'Aug 05, 2024 10:00am',
      'km': 'ថ្ងៃទី 05 ខែសីហា ឆ្នាំ 2024 ម៉ោង 10:00 ព្រឹក',
    },
    'oyxpw4vk': {
      'en': 'sam.thanu@gmail.com.kh',
      'km': 'sam.thanu@gmail.com.kh',
    },
    'hz48bvf8': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានផ្ទុកឡើង',
    },
    'gdyeg1jv': {
      'en': 'Contract E-Water W00',
      'km': 'កិច្ចសន្យា E-Water W00',
    },
    'cv5w2xre': {
      'en': 'Aug 05, 2024 10:00am',
      'km': 'ថ្ងៃទី 05 ខែសីហា ឆ្នាំ 2024 ម៉ោង 10:00 ព្រឹក',
    },
    'rq4lhgeu': {
      'en': '__',
      'km': '__',
    },
  },
  // PageHome_20240913140500
  {
    'afdq46vu': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
    'x9j7jyqb': {
      'en': 'Status tracker',
      'km': 'កម្មវិធីតាមដានស្ថានភាព',
    },
    '8eicuij0': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    '35x8jhur': {
      'en': 'Folders',
      'km': 'ថតឯកសារ',
    },
    'o1q6n1nd': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    '1s2pd6zs': {
      'en': 'View all',
      'km': 'មើលទាំងអស់។',
    },
    's14puinx': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះ​ថត',
    },
    '9drll3hc': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'e4w1arlo': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    '82s0r9oq': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'tm59mifc': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'mpjo0vye': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    'epoeayxy': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'cpexi36i': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'o1rcdjjg': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    'rvo3mn8o': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'r7z1x3gb': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'gvyvcadi': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    '3hvlwy2c': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះ​ថត',
    },
    's1vbshf6': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'kxoq1mdz': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    '6u3p4q88': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'wz0fdmpy': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'iq3boymd': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    'tlz3fqzm': {
      'en': 'Recent files',
      'km': 'ឯកសារថ្មីៗ',
    },
    'iotc34k7': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    'n58bpuma': {
      'en': 'View all',
      'km': 'មើលទាំងអស់។',
    },
    'fz6w1dxg': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    'paadtkun': {
      'en': 'Size',
      'km': 'ទំហំ',
    },
    '2jb45jo2': {
      'en': 'Last edit',
      'km': 'ការកែសម្រួលចុងក្រោយ',
    },
    '015zfef5': {
      'en': 'Letter from EDC',
      'km': 'លិខិតពី EDC',
    },
    'ncvuy0nl': {
      'en': '3 MB',
      'km': '3 មេកាបៃ',
    },
    'vp1vpjeq': {
      'en': '13-Sep-24 10:00 AM',
      'km': '13-កញ្ញា-24 ម៉ោង 10:00 ព្រឹក',
    },
    'jpqss51v': {
      'en': 'Proposal DMS',
      'km': 'សំណើរ DMS',
    },
    'l59x8xxh': {
      'en': '3 MB',
      'km': '3 មេកាបៃ',
    },
    'z3gxe6bm': {
      'en': '13-Sep-24 10:00 AM',
      'km': '13-កញ្ញា-24 ម៉ោង 10:00 ព្រឹក',
    },
    'ofaelda2': {
      'en': 'Letter from EAC',
      'km': 'លិខិតរបស់ EAC',
    },
    'd6f9taqn': {
      'en': '3 MB',
      'km': '3 មេកាបៃ',
    },
    'zegsjz03': {
      'en': '13-Sep-24 10:00 AM',
      'km': '13-កញ្ញា-24 ម៉ោង 10:00 ព្រឹក',
    },
    'c3lskicy': {
      'en': 'Preview file',
      'km': 'មើលឯកសារជាមុន',
    },
    'przlc25g': {
      'en': 'Proposal DMS',
      'km': 'សំណើរ DMS',
    },
    'lgr4ghyh': {
      'en': '09-Sep-24 10:00 AM',
      'km': '០៩-កញ្ញា-២៤ ម៉ោង ១០:០០ ព្រឹក',
    },
    '5vclhb3w': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'hqdsa0ok': {
      'en':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'km': 'Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។',
    },
    '4reg6b1a': {
      'en': 'Tags',
      'km': 'ស្លាក',
    },
    'vptd0ibn': {
      'en': 'proposal',
      'km': 'សំណើ',
    },
    'syjuh1gj': {
      'en': 'Dashboard',
      'km': 'ផ្ទាំងគ្រប់គ្រង',
    },
    '0lzknyup': {
      'en': '__',
      'km': '__',
    },
  },
  // Overview
  {
    'f0bjp7dq': {
      'en': 'Quick Start Guide',
      'km': 'ចំណុចចាប់ផ្តីម',
    },
    'jt1lbf5c': {
      'en':
          'OONE Power Technology is one of the professional service and software development company in Cambodia which developed Enterprise Systems for Utility Billing System and Online Payment Gateways.\n\n',
      'km':
          'OONE Power Technology គឺជាក្រុមហ៊ុនមួយក្នុងចំនោមក្រុមហ៊ុនជំនាញផ្នែកសេវាកម្ម និងកម្មវិធីអភិវឌ្ឍន៍នៅក្នុងប្រទេសកម្ពុជា ដែលបានបង្កើតប្រព័ន្ធសហគ្រាសសម្រាប់ប្រព័ន្ធវិក្កយបត្រឧបករណ៍ប្រើប្រាស់ និងមធ្យោបាយទូទាត់តាមអ៊ីនធឺណិត។',
    },
    '25713xa8': {
      'en': 'Below is a features of what our Oone will provide:',
      'km':
          'ខាង​ក្រោម​នេះ​ជា​លក្ខណៈ​ពិសេស​នូវអ្វី​ដែល Oone របស់​យើង​នឹង​ផ្តល់​ជូន៖',
    },
    '7pv44zqv': {
      'en': 'What Features do we have?',
      'km': 'តើយើងមានលក្ខណៈពិសេសអ្វីខ្លះ?',
    },
    '4i5dysyp': {
      'en': '1.Home',
      'km': '1. ទំព័រដើម',
    },
    'ieh28nty': {
      'en':
          'Home page of a website serves as the primary entry point and introduction to the site\'s content. It typically includes a header with navigation links to essential sections like About, Services, and Contact. At its core, the home page often features a hero section, which is a visually impactful area displaying a headline, subheadline, and a call-to-action (CTA) button that encourages visitors to take the next step, such as learning more or making a purchase.',
      'km':
          'ទំព័រដើមនៃសេវាកម្មគេហទំព័រជាចំណុចចូលចម្បង និងការណែនាំអំពីខ្លឹមសារនៃគេហទំព័រ។ ជាធម្មតាវារួមបញ្ចូលបឋមកថាជាមួយនឹងតំណភ្ជាប់រុករកទៅកាន់ផ្នែកសំខាន់ៗដូចជាអំពី សេវាកម្ម និងទំនាក់ទំនង។ ជាស្នូលរបស់វា ទំព័រដើមជាញឹកញាប់មានផ្នែកវីរបុរស ដែលជាតំបន់ដែលមានឥទ្ធិពលដែលមើលឃើញបង្ហាញចំណងជើង ចំណងជើងរង និងប៊ូតុងអំពាវនាវឱ្យធ្វើសកម្មភាព (CTA) ដែលលើកទឹកចិត្តអ្នកទស្សនាឱ្យបោះជំហានបន្ទាប់ ដូចជាការស្វែងយល់បន្ថែម ឬ ធ្វើការទិញ។',
    },
    '64lkjxxq': {
      'en': '2.Document',
      'km': '2. ឯកសារ',
    },
    '9z73uk9d': {
      'en':
          'Document page on a website is designed to present important information in a structured and organized format, making it easy for users to access and navigate. It often includes a table of contents to help users jump to specific sections, and the content is divided into clear, labeled parts using headings and bullet points for improved readability.',
      'km':
          'ទំព័រឯកសារនៅលើគេហទំព័រត្រូវបានរចនាឡើងដើម្បីបង្ហាញព័ត៌មានសំខាន់ៗក្នុងទម្រង់ជារចនាសម្ព័ន្ធ និងការរៀបចំ ដែលធ្វើឱ្យវាងាយស្រួលសម្រាប់អ្នកប្រើប្រាស់ក្នុងការចូលប្រើ និងរុករក។ ជារឿយៗវារួមបញ្ចូលតារាងមាតិកាដើម្បីជួយអ្នកប្រើប្រាស់លោតទៅផ្នែកជាក់លាក់ ហើយខ្លឹមសារត្រូវបានបែងចែកទៅជាផ្នែកដែលមានស្លាកបង្ហាញច្បាស់លាស់រួមជាមួយចំណងជើង និងធ្វើអោយការអានអោយមានភាពប្រសើរឡើង។',
    },
    'rads892k': {
      'en': '3.Sign',
      'km': '3. ចុះហត្ថលេខា',
    },
    'ej6jndji': {
      'en':
          'Sign page on a website, focused on signatures, typically allows users to electronically sign documents or agreements. This page usually includes an area where users can either draw their signature using a mouse or stylus, upload an image of their signature, or use a pre-generated digital signature. ',
      'km':
          'ទំព័រចុះហត្ថលេខានៅលើគេហទំព័រ ផ្ដោតលើហត្ថលេខា ជាធម្មតាអនុញ្ញាតឱ្យអ្នកប្រើប្រាស់ចុះហត្ថលេខាលើឯកសារ ឬកិច្ចព្រមព្រៀងតាមអេឡិចត្រូនិក។ ទំព័រនេះជាធម្មតារួមបញ្ចូលតំបន់ដែលអ្នកប្រើប្រាស់អាចគូរហត្ថលេខារបស់ពួកគេដោយប្រើប្រដាប់ចុចបញ្ជាកុំព្យូទ័រ ឬស្ទីល បង្ហោះរូបភាពនៃហត្ថលេខារបស់ពួកគេ ឬប្រើហត្ថលេខាឌីជីថលដែលបានបង្កើតជាមុន។',
    },
    'fe9ddbfh': {
      'en': '4.Report',
      'km': '4. របាយការណ៍',
    },
    'zu9kjj7w': {
      'en':
          ' Report page on a website is typically used to present structured, detailed information or data about a specific topic, project, or analysis. It often includes key sections such as an introduction, methodology, findings, and conclusions, which help to guide the reader through the report. ',
      'km':
          'ទំព័ររបាយការណ៍នៅលើគេហទំព័រត្រូវបានប្រើជាធម្មតាដើម្បីបង្ហាញរចនាសម្ព័ន្ធ ព័ត៌មានលម្អិត ឬទិន្នន័យអំពីប្រធានបទ គម្រោង ឬការវិភាគជាក់លាក់មួយ។ ជារឿយៗវារួមបញ្ចូលផ្នែកសំខាន់ៗដូចជា សេចក្ដីផ្ដើម វិធីសាស្រ្ត ការរកឃើញ និងការសន្និដ្ឋាន ដែលជួយណែនាំអ្នកអានតាមរយៈរបាយការណ៍។',
    },
    're40g6lu': {
      'en': '5.Setting',
      'km': '5. ការកំណត់',
    },
    'dbe4c3em': {
      'en':
          'Setting page on a website allows users to customize their experience by configuring various preferences and account options. It typically includes sections for personal information, such as updating the username, email address, and password.',
      'km':
          'ការកំណត់ទំព័រនៅលើគេហទំព័រអនុញ្ញាតឱ្យអ្នកប្រើប្រាស់ប្ដូរបទពិសោធន៍របស់ពួកគេតាមបំណងដោយកំណត់រចនាសម្ព័ន្ធចំណូលចិត្តផ្សេងៗ និងជម្រើសគណនី។ ជាធម្មតាវារួមបញ្ចូលផ្នែកសម្រាប់ព័ត៌មានផ្ទាល់ខ្លួន ដូចជាការធ្វើបច្ចុប្បន្នភាពឈ្មោះអ្នកប្រើប្រាស់ អាស័យដ្ឋានអ៊ីមែល និងពាក្យសម្ងាត់។',
    },
    'r4wfozwq': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
  },
  // PageReportsActivityLog
  {
    '1x6kdkbh': {
      'en': 'Contracts',
      'km': 'កិច្ចសន្យា',
    },
    '44fy1l4w': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    '7r9nxs0i': {
      'en': 'Activity Log',
      'km': 'កំណត់ហេតុសកម្មភាព',
    },
    'x0ubjz1k': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'tlbgbonp': {
      'en': 'Last 7 days',
      'km': '7 ថ្ងៃចុងក្រោយ',
    },
    'fc16pldu': {
      'en': 'Last 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    '5z5ybwq1': {
      'en': 'Custom Date',
      'km': '',
    },
    'os7h2mum': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    't3h3izmk': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'b98dqein': {
      'en': 'All Event',
      'km': 'ព្រឹត្តិការណ៍ទាំងអស់។',
    },
    '6b8nyeta': {
      'en': 'Create Account',
      'km': 'បង្កើតគណនី',
    },
    'yi4afjkf': {
      'en': 'Login/Logout',
      'km': 'ចូល/ចេញ',
    },
    'wa4v6eq5': {
      'en': 'Sign',
      'km': 'សញ្ញា',
    },
    'ubi6ly11': {
      'en': 'Upload',
      'km': 'ផ្ទុកឡើង',
    },
    '35i79tzc': {
      'en': 'Delete',
      'km': 'លុប',
    },
    'ome0pejm': {
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    'o8rcdot9': {
      'en': 'Draft',
      'km': 'សេចក្តីព្រាង',
    },
    'kgba7nkz': {
      'en': 'Share',
      'km': 'ចែករំលែក',
    },
    '0h07t1bp': {
      'en': 'Complete',
      'km': 'បញ្ចប់',
    },
    '5pgdl1w4': {
      'en': 'All Event',
      'km': 'ព្រឹត្តិការណ៍ទាំងអស់។',
    },
    'gd1nor95': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '9oz755tw': {
      'en': 'All Team',
      'km': 'ក្រុមទាំងអស់។',
    },
    'tuzodfj0': {
      'en': 'Frontier',
      'km': 'ព្រំដែន',
    },
    'hsljqdxg': {
      'en': 'UAT',
      'km': 'UAT',
    },
    'gmi0olgp': {
      'en': 'Dev',
      'km': 'Dev',
    },
    '31x0ketz': {
      'en': 'All Team',
      'km': 'ក្រុមទាំងអស់។',
    },
    'tag82sro': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '7k4bgevn': {
      'en': 'PDF',
      'km': 'PDF',
    },
    'f1gnijbg': {
      'en': 'CSV',
      'km': 'CSV',
    },
    'zug5tkzy': {
      'en': 'Excel',
      'km': 'Excel',
    },
    'z7wupcbv': {
      'en': 'Export',
      'km': 'នាំចេញ',
    },
    'avsssohf': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'z3r2ynw1': {
      'en': 'Activity By',
      'km': 'សកម្មភាពដោយ',
    },
    '28906o5w': {
      'en': 'Event',
      'km': 'ព្រឹត្តិការណ៍',
    },
    '0p39ntvc': {
      'en': 'Date time',
      'km': 'កាលបរិច្ឆេទ',
    },
    'ltqxg2zq': {
      'en': 'Team',
      'km': 'ក្រុម',
    },
    'h98hb0p0': {
      'en': 'User Role',
      'km': 'តួនាទីអ្នកប្រើប្រាស់',
    },
    'c3t6zakd': {
      'en': 'Device Name',
      'km': 'ឈ្មោះឧបករណ៍',
    },
    'zyh4hinw': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '9wcs86uq': {
      'en': 'Login system',
      'km': 'ប្រព័ន្ធចូល',
    },
    '030qkqjw': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'fxrus0fw': {
      'en': 'Frontier',
      'km': 'Frontier',
    },
    'fsiuljlq': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '6ke4eqwc': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'kx2joprq': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '225mlevm': {
      'en': 'Login system',
      'km': 'ប្រព័ន្ធចូល',
    },
    'nxe1jmpf': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '3hvb5vol': {
      'en': 'Frontier',
      'km': 'Frontier',
    },
    '80sfgkkt': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'qvki29kj': {
      'en': 'iPhone 16 Pro max',
      'km': 'iPhone 16 Pro max',
    },
    'jy8l861d': {
      'en': 'Soa Soksovan',
      'km': 'Soa Soksovan',
    },
    'euuiimun': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    'y3i5nd91': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'wfk5d9yg': {
      'en': 'UAT',
      'km': 'UAT',
    },
    'ctn7yj94': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'ig7fmaue': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'iz8eyp4c': {
      'en': 'Sok Pisey',
      'km': 'Sok Pisey',
    },
    'hkq2zd1j': {
      'en': 'Document successfully signed',
      'km': 'ឯកសារបានចុះហត្ថលេខាដោយជោគជ័យ',
    },
    'sk0ywk98': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'czvfg9fd': {
      'en': 'Dev',
      'km': 'Dev',
    },
    's2zi0j65': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'u2kbbyxz': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '37hm4xh5': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'nmufb0tb': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    'oi25qfs3': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '4h6ztyco': {
      'en': 'UAT',
      'km': 'UAT',
    },
    '4gy6bnwy': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '5dh0u0g0': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '4z0giuoe': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '74izdhcp': {
      'en': 'Document has been deleted',
      'km': 'ឯកសារត្រូវបានលុប',
    },
    '679i2t5t': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'h89oblkh': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'wr9ldu2n': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'z7do7ywv': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'if97upha': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'ldl1f42t': {
      'en': 'Document has been deleted',
      'km': 'ឯកសារត្រូវបានលុប',
    },
    '89f2hx42': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'gv9ogt17': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'gggh0vmj': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'surhc93x': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'rxlfi0j1': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '56k5igex': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    'c0a5umre': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '7b60r5lm': {
      'en': 'Frontier',
      'km': 'Frontier',
    },
    '2bxs0bsq': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '960jhuam': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '1fcqvakm': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'i07e5sxr': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    'eblk8nzz': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '1hnxtx6q': {
      'en': 'HR',
      'km': 'HR',
    },
    '7ls3zeis': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '9sm0tcfc': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'qi0tczoe': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'k8cakx8b': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    'dmqh4jzr': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '28104qbx': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'ye3gzdd8': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '0vmtd4x1': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'nz5vf7wq': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '0ceotfbs': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    'v5ltaq9i': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '9gbbtst2': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'f0scygpc': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'cy6sif0y': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'vzednb2l': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'gd6eh7yc': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    'rejzwzaw': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'wczdahuo': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'gdd9zu4t': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'tgp28w69': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '9j0hpw2e': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'ins338ka': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    '62cd6o87': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    's9kshsn9': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'x19hdxpv': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'tfoqk3pg': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '8prmz2o3': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'cww370j6': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    '5tu20kow': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '0q3a839y': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'ulir48m8': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'f6h54tuw': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'q3jhba1c': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'a8wrwecn': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    'nvkge6pz': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'k9ow0z58': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'tpn0zdw1': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '1o0n35ly': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '190lf7av': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '9vfi9jts': {
      'en': 'Document has been approval',
      'km': 'ឯកសារត្រូវបានអនុញ្ញាត',
    },
    'p420stj8': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'ma2nz2rb': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'tnrlivqu': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'ui6lxktw': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'g56o5vur': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'mpvb43dd': {
      'en': 'Document successfully signed',
      'km': 'ឯកសារបានចុះហត្ថលេខាដោយជោគជ័យ',
    },
    '8p3xcxl3': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '2uuqowpi': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    '5nbuge01': {
      'en': 'Manager',
      'km': 'អ្នកចាត់ចែង',
    },
    'caa3lfyo': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '2p2a49f6': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '2cgni5zp': {
      'en': 'Document successfully signed',
      'km': 'ឯកសារបានចុះហត្ថលេខាដោយជោគជ័យ',
    },
    'm0u5qvuq': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    '7c6yipka': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'h0cmd4e2': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '9a2569oc': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'xcr3hfiz': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'ymiwbjhs': {
      'en': 'Document has been upload',
      'km': 'ឯកសារត្រូវបានបញ្ចូល',
    },
    '1pilhn6x': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'zqk431ys': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'tnngjela': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '2n5i8zhn': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'gfax97tk': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    '6zu47p6d': {
      'en': 'Document successfully signed',
      'km': 'ឯកសារបានចុះហត្ថលេខាដោយជោគជ័យ',
    },
    'z3gwhjgb': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'g5nvlwte': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'nnqi8rg3': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'wy4bwnj3': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    'nrqxlf3f': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'jbc4kceb': {
      'en': 'Document successfully signed',
      'km': 'ឯកសារបានចុះហត្ថលេខាដោយជោគជ័យ',
    },
    '2g94ofae': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'agomszyf': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    'l2ge9so5': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'oyoq7y5l': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '3k9rmzg1': {
      'en': 'Sok San',
      'km': 'Sok San',
    },
    'oix9yp3i': {
      'en': 'Document has been drafted',
      'km': 'ឯកសារត្រូវបានព្រាងទុក',
    },
    'dpohqst4': {
      'en': '12/09/2024 11:56:01 am',
      'km': '12/09/2024 11:56:01 ព្រឹក',
    },
    'o9y0y3p7': {
      'en': 'HR',
      'km': 'មន្ត្រីធនធានមនុស្ស',
    },
    '3l2sgh6h': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'qryy4knh': {
      'en': 'Desktop-Dell',
      'km': 'Desktop-Dell',
    },
    '4bu8bv59': {
      'en': '__',
      'km': '__',
    },
  },
  // PageReportsV2
  {
    '8s2a513k': {
      'en': 'Contracts',
      'km': 'កិច្ចសន្យា',
    },
    '9m138e2k': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    'x1u2k63k': {
      'en': 'Executive Summary',
      'km': 'សង្ខេបប្រតិបត្តិ',
    },
    'atulgefe': {
      'en': '01 Sep,  2024',
      'km': 'ថ្ងៃទី 01 ខែកញ្ញា ឆ្នាំ 2024',
    },
    'jkt3ncm1': {
      'en': 'Comparison',
      'km': 'ការប្រៀបធៀប',
    },
    '0j3vpngd': {
      'en': 'PDF',
      'km': 'PDF',
    },
    'mz7y60m2': {
      'en': 'CSV',
      'km': 'CSV',
    },
    'dp7e8cc1': {
      'en': 'Export',
      'km': 'ទាញចេញ',
    },
    '7furfqbv': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'rtlcm4jx': {
      'en': 'Executive Summary',
      'km': 'សង្ខេបប្រតិបត្តិ',
    },
    'ls4yswed': {
      'en': '01 Sep, 2024',
      'km': 'ថ្ងៃទី 01 ខែកញ្ញា ឆ្នាំ 2024',
    },
    'ybzdd0hu': {
      'en': 'Document Status',
      'km': 'ស្ថានភាពឯកសារ',
    },
    'tewz0djs': {
      'en': '18',
      'km': '១៨',
    },
    'p9682c2o': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'wob40j63': {
      'en': '4',
      'km': '៤',
    },
    'v2l8jpid': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    'y3za057m': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'wrwirnrp': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    '97t1nt3t': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    '30hb3zpy': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    'mm3qdj5u': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'ius8v2x1': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '8kj34bvm': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'jl04bzps': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'cijp3b4k': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'urhnpb05': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    'k9bhn3tf': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'nrxuyre9': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    'bt8xx2b0': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'yj1hkgv9': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    '7esmcz9i': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'd6331i0i': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    'qak18g5r': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'j04fthug': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកប្រចាំឆ្នាំ 2024',
    },
    '7jv54n47': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'rqr4fi4d': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'kkw8lawv': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'nwgyonrq': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    'njbkshr2': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'y7c65tx4': {
      'en': 'In progress',
      'km': 'កំពុងដំណើរការ',
    },
    'vb5u3x6g': {
      'en': '8',
      'km': '៨',
    },
    'jj7ndrie': {
      'en': 'Draft',
      'km': 'សេចក្តីព្រាង',
    },
    'zdyqytuo': {
      'en': '5',
      'km': '៥',
    },
    'uk1zgh4b': {
      'en': 'Schedule Send',
      'km': 'កាលវិភាគផ្ញើ',
    },
    'oo6xaeyr': {
      'en': '1',
      'km': '១',
    },
    'lc19x3bb': {
      'en': 'Declined',
      'km': 'បានបដិសេធ',
    },
    '6ywx504l': {
      'en': '0',
      'km': '0',
    },
    'yv6ccl01': {
      'en': 'Expired',
      'km': 'បានផុតកំណត់',
    },
    '4302o0i5': {
      'en': '0',
      'km': '0',
    },
    '8s0kcfkg': {
      'en': 'Acitivity log',
      'km': 'កំណត់ហេតុសកម្មភាព',
    },
    'rluvfw50': {
      'en': 'Declined',
      'km': 'បានបដិសេធ',
    },
    '9frqgimt': {
      'en': 'Document type',
      'km': 'ប្រភេទឯកសារ',
    },
    'azlhaud9': {
      'en': '__',
      'km': '__',
    },
  },
  // Home
  {
    'jkq8t5ja': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
    'l53qm3c5': {
      'en':
          'Home page of a website serves as the primary entry point and introduction to the site\'s content. It typically includes a header with navigation links to essential sections like About, Services, and Contact. At its core, the home page often features a hero section, which is a visually impactful area displaying a headline, subheadline, and a call-to-action (CTA) button that encourages visitors to take the next step, such as learning more or making a purchase.',
      'km':
          'ទំព័រដើមនៃសេវាកម្មគេហទំព័រជាចំណុចចូលចម្បង និងការណែនាំអំពីខ្លឹមសារនៃគេហទំព័រ។ ជាធម្មតាវារួមបញ្ចូលមកថាជាមួយនឹងតំណភ្ជាប់រុករកទៅកាន់ផ្នែកសំខាន់ៗដូចជាអំពី សេវាកម្ម និងទំនាក់ទំនង។ ជាស្នូលរបស់វា ទំព័រដើមជាញឹកញាប់មានផ្នែក ដែលជាតំបន់ដែលមានឥទ្ធិពលដែលមើលឃើញបង្ហាញចំណងជើង ចំណងជើងរង និងប៊ូតុងអំពាវនាវឱ្យធ្វើសកម្មភាព (CTA) ដែលលើកទឹកចិត្តអ្នកទស្សនាឱ្យបោះជំហានបន្ទាប់ ដូចជាការស្វែងយល់បន្ថែម ឬ ធ្វើការបញ្ជាទិញ។',
    },
    't3jpmbc9': {
      'en': 'There are five main menus of Home Screen',
      'km': 'មានមុខងារសំខាន់ៗចំនួនប្រាំនៃអេក្រង់ទំព័រដើម',
    },
    'iec3i45y': {
      'en': '1.',
      'km': '១.',
    },
    'z245572a': {
      'en': 'Status Tracker',
      'km': 'កម្មវិធីតាមដានស្ថានភាព',
    },
    'c4gpuy6j': {
      'en': '2.',
      'km': '២.',
    },
    'gv52k40z': {
      'en': 'Folders',
      'km': 'ថតផ្ទុកឯកសារ',
    },
    'nzyc7ajh': {
      'en': '3.',
      'km': '៣.',
    },
    '3oun5bi0': {
      'en': 'Recent Files',
      'km': 'ឯកសារថ្មីៗ',
    },
    'lfahugky': {
      'en': '4.',
      'km': '៤.',
    },
    'fkq0cj6n': {
      'en': 'Preview Files',
      'km': 'មើលឯកសារជាមុន',
    },
    'jlk84jjt': {
      'en': '1. Status Tracker',
      'km': '1. កម្មវិធីតាមដានស្ថានភាព',
    },
    'jdpfk37y': {
      'en': 'Status Tracker Overview',
      'km': 'ទិដ្ឋភាពទូទៅនៃកម្មវិធីតាមដានស្ថានភាព',
    },
    'hcy7gz1q': {
      'en':
          'The Status Tracker on the Home screen dashboard is a visual representation that provides insights into recent activities within the system over the last 30 days. It helps users quickly understand their progress and the status of tasks or documents. Here\'s a detailed breakdown:',
      'km':
          'កម្មវិធីតាមដានស្ថានភាពនៅលើផ្ទាំងគ្រប់គ្រងអេក្រង់ទំព័រដើម គឺជាការបង្ហាញដែលមើលឃើញដែលផ្ដល់នូវការយល់ដឹងអំពីសកម្មភាពថ្មីៗនៅក្នុងប្រព័ន្ធក្នុងរយៈពេល 30 ថ្ងៃចុងក្រោយនេះ។ វាជួយអ្នកប្រើប្រាស់ឱ្យយល់បានយ៉ាងឆាប់រហ័សអំពីវឌ្ឍនភាពរបស់ពួកគេ និងស្ថានភាពនៃកិច្ចការ ឬឯកសារ។ នេះជាការវិភាគលម្អិត៖',
    },
    '5m0ouwob': {
      'en': 'What \'s Status Trucker?',
      'km': 'តើ កម្មវិធីតាមដានស្ថានភាព ជាអ្វី?',
    },
    'ul54allt': {
      'en':
          'The Status Tracker is a circular chart that displays the distribution of tasks or document statuses over the past month.',
      'km':
          'កម្មវិធីតាមដានស្ថានភាពគឺជាតារាងរាងជារង្វង់ដែលបង្ហាញការបែងចែកកិច្ចការ ឬស្ថានភាពឯកសារកាលពីខែមុនកន្លងមក។',
    },
    'epmagedz': {
      'en':
          'Each segment of the chart is color-coded and corresponds to a specific status or activity.',
      'km':
          'ផ្នែកនីមួយៗនៃគំនូសតាងត្រូវបានសរសេរជាកូដពណ៌ ហើយត្រូវគ្នាទៅនឹងស្ថានភាព ឬសកម្មភាពជាក់លាក់មួយ។',
    },
    'h9yvla2s': {
      'en':
          'It visually represents the percentage or amount of work associated with each status.',
      'km':
          'វាតំណាងឱ្យភាគរយ ឬបរិមាណនៃការងារដែលភ្ជាប់ជាមួយស្ថានភាពនីមួយៗដោយមើលឃើញ។',
    },
    'n76yn5sl': {
      'en': ' Purpose of the Status Tracker',
      'km': 'គោលបំណងនៃកម្មវិធីតាមដានស្ថានភាព',
    },
    'v00jcjhe': {
      'en':
          ' Its primary purpose is to Monitor progress on tasks or documents at a glance, Track completion rates or pending actions to ensure timely action, Identify bottlenecks or areas where tasks may be stalled and It serves as a quick way to assess the overall productivity and health of your document workflow.',
      'km':
          'គោលបំណងចម្បងរបស់វាគឺដើម្បីតាមដានវឌ្ឍនភាពនៃកិច្ចការ ឬឯកសារបណ្ដោះអាសន្ន តាមដានអត្រាបញ្ចប់ ឬសកម្មភាពដែលមិនទាន់សម្រេច ដើម្បីធានាបាននូវសកម្មភាពទាន់ពេលវេលា កំណត់បញ្ហារាំងស្ទះ ឬតំបន់ដែលកិច្ចការអាចនឹងជាប់គាំង ហើយវាមានតួនាទីជាមធ្យោបាយរហ័សក្នុងការវាយតម្លៃផលិតភាព និងតុល្យភាពទាំងមូលរបស់ដំណើរការឯកសាររបស់អ្នក។',
    },
    'urk8jzal': {
      'en': 'Elements of the Status Tracker',
      'km': 'ធាតុគោលនៃកម្មវិធីតាមដានស្ថានភាព',
    },
    'hdnt3nkv': {
      'en':
          '\nIn the Status Tracker displayed in the image, there are six color-coded sections, each representing a different status or activity over the last 30 days. These colors correspond to different categories or task statuses. Here\'s what each color might represent based on the chart',
      'km':
          'នៅក្នុងកម្មវិធីតាមដានស្ថានភាពដែលបង្ហាញក្នុងរូបភាព មានផ្នែកកូដពណ៌ចំនួនប្រាំមួយ ដែលនីមួយៗតំណាងឱ្យស្ថានភាព ឬសកម្មភាពផ្សេងៗគ្នាក្នុងរយៈពេល 30 ថ្ងៃចុងក្រោយ។ ពណ៌ទាំងនេះត្រូវទៅនឹងប្រភេទផ្សេងគ្នា ឬតាមស្ថានភាពកិច្ចការ។ នេះជាអ្វីដែលពណ៌នីមួយៗអាចតំណាងដោយផ្អែកលើគំនូសតាង',
    },
    'yksfz3d3': {
      'en':
          'Red (8.5%) - Typically used to represent urgent or overdue tasks that need immediate attention.',
      'km':
          'ក្រហម (8.5%) - ជាធម្មតាត្រូវបានប្រើដើម្បីតំណាងឱ្យកិច្ចការបន្ទាន់ ឬហួសកាលកំណត់ដែលត្រូវការការយកចិត្តទុកដាក់ជាបន្ទាន់។',
    },
    'stasxcbp': {
      'en':
          'Black (7.8%) - Could indicate critical tasks or tasks that are awaiting review or approval.',
      'km':
          'ខ្មៅ (7.8%) - អាចបង្ហាញពីកិច្ចការសំខាន់ៗ ឬកិច្ចការដែលកំពុងរង់ចាំការពិនិត្យឡើងវិញ ឬការយល់ព្រម។',
    },
    'ccuo8aa6': {
      'en':
          'Purple (7.1%) - This might represent in progress tasks that are currently being worked on.',
      'km': 'ពណ៌ស្វាយ (7.1%) - នេះអាចតំណាងឱ្យការងារដែលកំពុងដំណើរការ។',
    },
    'e769kfjp': {
      'en':
          'Green (4.2%) - Commonly represents completed tasks or those that have been successfully finished.',
      'km':
          'បៃតង (4.2%) - ជាទូទៅតំណាងឱ្យកិច្ចការដែលបានបញ្ចប់ ឬការងារដែលបញ្ចប់ដោយជោគជ័យ។',
    },
    'tptgsxjd': {
      'en':
          'Yellow (8.3%) - This could indicate tasks that are pending, on hold, or not yet started.',
      'km':
          'ពណ៌លឿង (8.3%) - នេះអាចបង្ហាញពីកិច្ចការដែលកំពុងរង់ចាំ ផ្អាក ឬមិនទាន់ចាប់ផ្ដើម។',
    },
    'zy2sq4na': {
      'en':
          'Blue (7.8%) - Could represent tasks that are in a draft state or have been saved for later.',
      'km':
          'ពណ៌ខៀវ (7.8%) - អាចតំណាងឱ្យកិច្ចការដែលស្ថិតក្នុងស្ថានភាពព្រាងទុក ឬត្រូវបានរក្សាទុកសម្រាប់ពេលក្រោយ។',
    },
    '3f70zunr': {
      'en': 'Elements of the Status Tracker',
      'km': 'ធាតុនៃកម្មវិធីតាមដានស្ថានភាព',
    },
    '1a67kl0a': {
      'en': '2. Folders',
      'km': '2. ថតផ្ទុកឯកសារ',
    },
    'o8zt0o9r': {
      'en': 'What \'s Folders?',
      'km': 'តើ Folders ជាអ្វី?',
    },
    'wmppmhrs': {
      'en':
          'The Status Tracker on the Home screen dashboard is a visual representation that provides insights into recent activities within the system over the last 30 days. It helps users quickly understand their progress and the status of tasks or documents. Here\'s a detailed breakdown:',
      'km':
          'កម្មវិធីតាមដានស្ថានភាពនៅលើផ្ទាំងគ្រប់គ្រងអេក្រង់ទំព័រដើម គឺជាការបង្ហាញអាចមើលឃើញនិងផ្ដល់នូវការយល់ដឹងអំពីសកម្មភាពថ្មីៗនៅក្នុងប្រព័ន្ធក្នុងរយៈពេល 30 ថ្ងៃចុងក្រោយ។ វាជួយអ្នកប្រើប្រាស់ឱ្យយល់បានយ៉ាងឆាប់រហ័សអំពីវឌ្ឍនភាពរបស់ពួកគេ និងស្ថានភាពនៃកិច្ចការ ឬឯកសារ។ នេះជាការវិភាគលម្អិត៖',
    },
    'wn1tpyxv': {
      'en': '',
      'km': '',
    },
    'cdnwbqcf': {
      'en': '',
      'km': '',
    },
    'kdhq4ony': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
  },
  // setting_page
  {
    'obk09rcn': {
      'en': 'Settings',
      'km': 'ការកំណត់',
    },
    'rz09jpyy': {
      'en': 'General',
      'km': 'ការកំណត់ទូទៅ',
    },
    '7spdcf13': {
      'en': 'Account',
      'km': 'គណនី',
    },
    'um3ir4vq': {
      'en':
          'The area where users can manage various aspects of their personal account.',
      'km':
          'ទីតាំងដែលអ្នកប្រើប្រាស់អាចកំណត់រចនាសម្ព័ន្ធទូទៅ នៃគណនីផ្ទាល់ខ្លួនរបស់ពួកគេ។',
    },
    '4qtbwlfj': {
      'en': 'Team',
      'km': 'ក្រុម',
    },
    'efimjs7g': {
      'en':
          'Team members, roles, account security, authorized apps, and shared resources.',
      'km':
          'សមាជិកក្រុម តួនាទី សុវត្ថិភាពរបស់គណនី កម្មវិធីដែលមានការអនុញ្ញាត និងធនធានដែលត្រូវបានចែករំលែក។',
    },
    '0wo9fn6u': {
      'en': 'Business',
      'km': 'អាជីវកម្ម',
    },
    '2fnw3th2': {
      'en':
          'Business, organization, company, branch details, Public info, Legal entity, and more.',
      'km':
          'អាជីវកម្ម ស្ថាប័ន ក្រុមហ៊ុន ព័ត៌មានលម្អិតអំពីសាខា ព័ត៌មានសាធារណៈ នីតិបុគ្គល និងច្រើនទៀត។',
    },
    'bbu6apxm': {
      'en': 'Version',
      'km': 'កំណែទម្រង់',
    },
    'w1aotrhf': {
      'en':
          'The current version of the software or application that is installed or being used.',
      'km':
          'កំណែទម្រង់បច្ចុប្បន្ននៃកម្មវិធី ឬកម្មវិធីដែលត្រូវបានដំឡើង ឬកំពុងប្រើប្រាស់។',
    },
    'zivw9g20': {
      'en': 'V - 1.0.0',
      'km': 'V- 1.0.0',
    },
    '92rpqxsi': {
      'en': 'Product',
      'km': 'ការកំណត់កម្មវិធី',
    },
    '8eurohgj': {
      'en': 'Account Management',
      'km': 'ការគ្រប់គ្រងគណនី',
    },
    'kdy8qgt7': {
      'en': 'Available only Admin user.',
      'km': 'អាចប្រើបានតែអ្នកគ្រប់គ្រងប៉ុណ្ណោះ។',
    },
    'eltxlpmk': {
      'en': 'User Authorization',
      'km': '',
    },
    'k0ed883l': {
      'en': 'Admin',
      'km': '',
    },
    'ym11tfr0': {
      'en': 'User',
      'km': '',
    },
    'j4w8o2ud': {
      'en': 'Configuration',
      'km': 'ការកំណត់រចនាសម្ព័ន្ធ',
    },
    'osnngz4c': {
      'en':
          'Adjust settings and preferences to match your business/organization requirements.',
      'km':
          'កែសម្រួលការកំណត់ និងចំណូលចិត្ត ដើម្បីផ្គូផ្គងតម្រូវការអាជីវកម្ម/ស្ថាប័នរបស់អ្នក។',
    },
    'd6aeo8h8': {
      'en': 'Customization',
      'km': 'ការផ្លាស់ប្តូរទម្រង់',
    },
    'f1c48rwr': {
      'en':
          'Personalize the product with flexible tools that let you modify workflows, custom fields to your specific needs.',
      'km':
          'កំណត់ផលិតផលផ្ទាល់ខ្លួនដោយប្រើឧបករណ៍ដែលអាចបត់បែនបាន ដែលអនុញ្ញាតឱ្យអ្នកកែប្រែលំហូរការងារ ផ្ទាល់ខ្លួនទៅនឹងតម្រូវការជាក់លាក់របស់អ្នក។',
    },
    '7zodye5b': {
      'en': 'Mobile Apps',
      'km': 'កម្មវិធីទូរស័ព្ទ',
    },
    'feir8sub': {
      'en':
          'Enable on-the-go access through fully integrated mobile apps for iOS and Android devices.',
      'km':
          'អាចចូលប្រើភ្លាមៗតាមរយៈកម្មវិធីទូរស័ព្ទដែលរួមបញ្ចូលគ្នាយ៉ាងពេញលេញសម្រាប់ឧបករណ៍ iOS និង Android ។',
    },
    'twa9898b': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    'gfemyou4': {
      'en':
          'Generate custom reports, activity Report, visualize data, export reports to various formats.',
      'km':
          'បង្កើតការកំណត់របាយការណ៍ សកម្មភាពរបាយការណ៍ មើលឃើញទិន្នន័យ នាំចេញរបាយការណ៍ទៅជាទម្រង់ផ្សេងៗ។',
    },
    '4tyk9wbf': {
      'en': 'Advanced',
      'km': 'បច្ចេកវិទ្យាថ្មី',
    },
    'v57aphnb': {
      'en': 'Administrator',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '1y1j6p83': {
      'en':
          'Admin dashboard, data, manage team, manage users, manage devices, available offline.',
      'km':
          'ផ្ទាំងគ្រប់គ្រង  ទិន្នន័យ  គ្រប់គ្រងក្រុម​  គ្រប់គ្រងអ្នកប្រើប្រាស់  គ្រប់គ្រងឧបករណ៍  អាចប្រើបានក្រៅបណ្ដាញ។',
    },
    'lf9q2mpw': {
      'en': 'Integrations',
      'km': 'ការរួមបញ្ចូល',
    },
    'hkwjy3qj': {
      'en':
          'Internal integrations, External Integrations, APIs, Webhooks, Identity and Access Management.',
      'km':
          'ការរួមបញ្ចូលផ្ទៃក្នុង ការរួមបញ្ចូលខាងក្រៅ ការបញ្ជូនទិន្នន័យ​តាមរយះ APIs Webhooks អត្តសញ្ញាណ និងការគ្រប់គ្រងការចូលប្រើប្រាស់។',
    },
    '92o3ayne': {
      'en': 'Migrations',
      'km': 'ការផ្ទេរ',
    },
    'ahd4xigq': {
      'en':
          'Migrate from Google, Migrate from Dropbox, Migrate from Microsoft, Datacenter Migration.',
      'km':
          'ផ្ទេរពី Google, ផ្ទេរពី Dropbox, ផ្ទេរពី Microsoft, ផ្ទេរពី Datacenter។',
    },
    'k5h5n77o': {
      'en': 'AI',
      'km': 'បញ្ញាសិប្បនិម្មិត',
    },
    '52hs91hq': {
      'en':
          'Artificial Intelligence (AI) designed to offer advanced capabilities and automation across applications.',
      'km':
          'បញ្ញាសិប្បនិម្មិត(AI) បានរចនាឡើងដើម្បីផ្តល់នូវសមត្ថភាពកម្រិតខ្ពស់ និងស្វ័យប្រវត្តិកម្មនៅទូទាំងកម្មវិធី។',
    },
    'fd93hxgo': {
      'en': '__',
      'km': '__',
    },
  },
  // account_setting_page
  {
    '722ntm86': {
      'en': 'settings',
      'km': 'ការកំណត់',
    },
    'dl2fwh6g': {
      'en': 'Account',
      'km': 'គណនី',
    },
    '325hoyn4': {
      'en': 'Profile',
      'km': 'ប្រវត្តិរូប',
    },
    '3ovj18g2': {
      'en': 'Profile Details',
      'km': 'ព័ត៌មានលំអិតអំពីប្រវត្តិរូប',
    },
    'zu7izux2': {
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    '0p1ij7ql': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    '27pte8ta': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'cd3eovcr': {
      'en': 'UserName',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'xsuglobf': {
      'en': 'Gender',
      'km': 'ភេទ',
    },
    'dn8xhixz': {
      'en': 'Male',
      'km': 'ប្រុស',
    },
    'lc8qzetx': {
      'en': 'Female',
      'km': 'ស្រី',
    },
    'oq1w6ik8': {
      'en': 'Others',
      'km': 'ផ្សេងៗ',
    },
    'vhsako4z': {
      'en': 'Select Gender',
      'km': 'ជ្រើសរើសភេទ',
    },
    '8hqpnxky': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'zcb86j63': {
      'en': 'Email',
      'km': 'អ៊ីម៉ែល',
    },
    'gs0a80cx': {
      'en': 'Phone Number',
      'km': 'លេខទូរស័ព្ទ',
    },
    'gcr9esk9': {
      'en': 'Address',
      'km': 'អាស័យដ្ឋាន',
    },
    'amiami79': {
      'en': 'Log out',
      'km': 'ចេញ',
    },
    'gjspgdwx': {
      'en': 'Please input first name  is required!',
      'km': 'សូមបញ្ចូលឈ្មោះដំបូងគឺចាំបាច់!',
    },
    'thnmfhnm': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'g7lxyshj': {
      'en': 'Please input last name  is required!',
      'km': 'សូមបញ្ចូលនាមត្រកូលគឺចាំបាច់!',
    },
    'b6ue8kah': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'wdg4953l': {
      'en': 'Please input last name  is required!',
      'km': 'សូមបញ្ចូលនាមត្រកូលគឺចាំបាច់!',
    },
    'n6t0qpci': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    's876fpf2': {
      'en': 'Please input Phone number   is required!',
      'km': 'សូមបញ្ចូលលេខទូរស័ព្ទគឺចាំបាច់!',
    },
    'mhmjp5xi': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '7lldvt9c': {
      'en': 'Please input Email  is required!',
      'km': 'សូមបញ្ចូលអ៊ីមែលគឺចាំបាច់!',
    },
    '03fopczm': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'wea1k3yv': {
      'en': 'Please input Address  is required!',
      'km': 'សូមបញ្ចូលអាសយដ្ឋានត្រូវបានទាមទារ!',
    },
    'esoioj6s': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'jrtr7mvt': {
      'en': 'Please input Address  is required!',
      'km': 'សូមបញ្ចូលអាសយដ្ឋានត្រូវបានទាមទារ!',
    },
    'omcexnjh': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'w4mgdrr0': {
      'en': 'Security',
      'km': 'សុវត្ថិភាព',
    },
    '2h9br091': {
      'en': 'Reset Password',
      'km': 'កំណត់ពាក្យសម្ងាត់ឡើងវិញ',
    },
    '69788c2j': {
      'en': 'Reset your password by change the password.',
      'km': 'កំណត់ពាក្យសម្ងាត់របស់អ្នកឡើងវិញដោយផ្លាស់ប្តូរពាក្យសម្ងាត់។',
    },
    'o5yeyzk6': {
      'en': 'Email',
      'km': 'អ៊ីម៉ែល',
    },
    'd7quc568': {
      'en': '  *',
      'km': '',
    },
    'dkac5chs': {
      'en': '',
      'km': '',
    },
    'ln8cih0w': {
      'en': 'Next',
      'km': 'បន្ទាប់',
    },
    'qk2dowq5': {
      'en': 'Two factor authentication',
      'km': 'ការបញ្ជាក់អត្តសញ្ញាណពីរជំហាន',
    },
    'sj3vaugx': {
      'en': 'Enable two factor authentication to make it secure your account.',
      'km':
          'បើកការបញ្ជាក់អត្តសញ្ញាណពីរជំហានដើម្បីធ្វើឱ្យគណនីរបស់អ្នកមានសុវត្ថិភាព',
    },
    's9a2xjtm': {
      'en': 'Notifications',
      'km': 'ការជូនដំណឹង',
    },
    '407kfkx8': {
      'en': 'Enable or disable email notifications.',
      'km': 'បើកឬបិទការជូនដំណឹងតាមអ៊ីម៉ែល។',
    },
    'fm40w02o': {
      'en': 'Notifications',
      'km': 'ការជូនដំណឹង',
    },
    'gw6komo5': {
      'en': 'Enable or disable notifications.',
      'km': 'បើកឬបិទការជូនដំណឹង។',
    },
    'kzk3qz2s': {
      'en': 'Invite',
      'km': 'អញ្ជើញ',
    },
    'bvw4vmj7': {
      'en': 'You are invited to a team',
      'km': 'អ្នកត្រូវបានអញ្ជើញឱ្យចូលរួមក្នុងក្រុម',
    },
    'mrdpoxs0': {
      'en': 'Share',
      'km': 'ចែករំលែក',
    },
    'j5kh80w4': {
      'en': 'Someone has individually shared a file or folder with you.',
      'km': 'មាននរណាម្នាក់បានចែករំលែកឯកសារ ឬថតឯកសារជាលក្ខណៈបុគ្គលជាមួយអ្នក។',
    },
    '9iger0tm': {
      'en': 'Comments',
      'km': 'មតិយោបល់',
    },
    'zyh5tign': {
      'en': 'Someone has mentioned you in a comment',
      'km': 'មាននរណាម្នាក់បានលើកឡើងពីអ្នកនៅក្នុងមតិយោបល់',
    },
    'jkvzcf70': {
      'en': 'Request Access',
      'km': 'ស្នើសុំការចូលប្រើ',
    },
    'wxg35vkp': {
      'en':
          'Someone has requested access from you to a file or folder in your My Folders or in a Team Folder. You can click SHARE, if needed.',
      'km':
          'មាននរណាម្នាក់បានស្នើសុំការចូលប្រើពីអ្នកទៅកាន់ឯកសារ ឬថតឯកសារនៅក្នុងថតឯកសាររបស់ខ្ញុំ ឬនៅក្នុងថតឯកសារក្រុម។ អ្នកអាចចុច SHARE ប្រសិនបើចាំបាច់។',
    },
    '7acanz7e': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'nsjrzbyw': {
      'en': 'Your team admin has accessed your files or shared your file .',
      'km':
          'អ្នកគ្រប់គ្រងក្រុមរបស់អ្នកបានចូលប្រើឯកសាររបស់អ្នក ឬចែករំលែកឯកសាររបស់អ្នក។',
    },
    'u4utjqjx': {
      'en': 'Enable or disable telegram notifications.',
      'km': 'បើកឬបិទសារជូនដំណឹងតាមតេឡេក្រាម។',
    },
    'tjs5hkhx': {
      'en': 'Telegram Notification Functions',
      'km': 'មុខងារសារជូនដំណឹងតាមតេឡេក្រាម',
    },
    'qggk2n0d': {
      'en': 'All access.',
      'km': 'ការចូលប្រើទាំងអស់។',
    },
    '7c8kd2ty': {
      'en': 'Telegram Notification Alerts',
      'km': 'ការជូនដំណឹងតាមតេឡេក្រាម',
    },
    'gxx36mh8': {
      'en': 'Only view',
      'km': 'មើលតែប៉ុណ្ណោះ',
    },
    'fj0r5dw6': {
      'en': 'Preferences',
      'km': 'ចំណូលចិត្ត',
    },
    'xhszwqxx': {
      'en': 'Change Date  Format',
      'km': 'ផ្លាស់ប្ដូរទម្រង់កាលបរិច្ឆេទ',
    },
    '0fsrxarj': {
      'en': 'Select the date format to be used for your DMS account activity.',
      'km':
          'ជ្រើសរើសទម្រង់កាលបរិច្ឆេទដែលត្រូវនិងការប្រើប្រាស់នៅក្នុងគណនី DMS របស់អ្នក។',
    },
    'c7dmdnvc': {
      'en': 'DD/mm/yyyy (22/03/2024)',
      'km': 'DD/mm/yyyy (22/03/2024)',
    },
    'f173wwcm': {
      'en': 'Custom',
      'km': 'ផ្ទាល់ខ្លួន',
    },
    '76yz0afd': {
      'en': 'DD/mm/yyyy (22/03/2024)',
      'km': 'ថ្ងៃ/ខែ/ឆ្នាំ (22/03/2024)',
    },
    'tjinkkox': {
      'en': 'yy/MM/dd (24/03/22)',
      'km': 'ឆ្នាំ/ខែ/ថ្ងៃ (24/03/22)',
    },
    'x5ep8mbw': {
      'en': 'MM/dd/yy (03/22/24)',
      'km': 'ខែ/ថ្ងៃ/ឆ្នាំ (03/22/24)',
    },
    't3898gs0': {
      'en': 'M/d/yy (3/22/24)',
      'km': 'ខែ/ថ្ងៃ/ឆ្នាំ (3/22/24)',
    },
    '34x3o9om': {
      'en': 'MM-dd-yy  (03-22-24)',
      'km': 'ខែ-ថ្ងៃ-ឆ្នាំ (03-22-24)',
    },
    '3frsl50j': {
      'en': 'Select...',
      'km': 'ជ្រើសរើស...',
    },
    'x7ptbh69': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'zn7iww1p': {
      'en': 'Languages',
      'km': 'ភាសា',
    },
    'ig6mw6fi': {
      'en': 'Choose languages base on your country or regions.',
      'km': 'ជ្រើសរើសភាសាដោយផ្អែកលើប្រទេស ឬតំបន់របស់អ្នក។',
    },
    '94k3ewqd': {
      'en': 'Appearances',
      'km': 'ការបង្ហាញ',
    },
    'fp8n9i9c': {
      'en':
          'Update the theme of your application from seleccting one of the options below.',
      'km':
          'ធ្វើបច្ចុប្បន្នភាពការបង្ហាញនៃកម្មវិធីរបស់អ្នកដោយជ្រើសរើសការបង្ហាញណាមួយ។',
    },
    'fvcjnb2m': {
      'en': 'Dark Mode',
      'km': 'ងងឹត',
    },
    'g818gi73': {
      'en': 'Light Mode',
      'km': 'ភ្លឺ',
    },
    'w1yyjw05': {
      'en': 'Terms of Service and Privacy Policy',
      'km': 'លក្ខខណ្ឌនៃសេវាកម្ម និងគោលការណ៍ឯកជនភាព',
    },
    'jrmbllh4': {
      'en': 'Last updated: 19/09/2024',
      'km': 'ការធ្វើកំណែទម្រង់ចុងក្រោយ: 19/09/2024',
    },
    'wyblaehd': {
      'en':
          'Welcome to DMS (Document management system). These Terms of Service (\"Terms\") govern your use of our Document Management System (\"DMS\"), provided by E-power.',
      'km':
          'សូមស្វាគមន៍មកកាន់ DMS (ប្រព័ន្ធគ្រប់គ្រងឯកសារ)។ លក្ខខណ្ឌនៃសេវាកម្មទាំងនេះ (\"លក្ខខណ្ឌ\") គ្រប់គ្រងការប្រើប្រាស់របស់អ្នកនៃប្រព័ន្ធគ្រប់គ្រងឯកសាររបស់យើង (\"DMS\") ដែលផ្តល់ដោយ E-power ។',
    },
    'fuqjxg3d': {
      'en':
          'By accessing or using the DMS, you agree to comply with and be bound by these Terms. If you do not agree to these Terms, you may not use our services.',
      'km':
          'ការចូលប្រើឬប្រើប្រាស់ DMS គឺបង្ហាញពីការយល់ព្រមទទួលយកនិងជាប់ពាក់ព័ន្ធនឹងលក្ខខណ្ឌទាំងនេះ។ ប្រសិនបើអ្នកមិនយល់ព្រមចំពោះលក្ខខណ្ឌទាំងនេះទេ អ្នកមិនអាចប្រើប្រាស់សេវាកម្មរបស់យើងបានទេ។',
    },
    '0xbtzwq7': {
      'en': '1. Use of the Service',
      'km': '1. ការប្រើប្រាស់សេវាកម្ម',
    },
    '9ck645ah': {
      'en':
          '1.1. You are responsible for ensuring that all information and documents you upload, share, or manage via the DMS comply with all applicable laws and regulations.',
      'km':
          '១.១. អ្នកទទួលខុសត្រូវក្នុងការធានាថាព័ត៌មាន និងឯកសារទាំងអស់ដែលអ្នកបង្ហោះ ចែករំលែក ឬគ្រប់គ្រងតាមរយៈ DMS អនុលោមតាមច្បាប់ និងបទប្បញ្ញត្តិជាធរមានទាំងអស់។',
    },
    '6j53h68a': {
      'en':
          '1.2. You agree not to use the DMS for any illegal, harmful, or unauthorized purposes, including but not limited to uploading malware, viruses, or any other harmful content.',
      'km':
          '១.២. អ្នកយល់ព្រមមិនប្រើ DMS សម្រាប់គោលបំណងខុសច្បាប់ គ្រោះថ្នាក់ ឬគ្មានការអនុញ្ញាត រួមទាំងប៉ុន្តែមិនកំណត់ចំពោះការបង្ហោះមេរោគ មេរោគ ឬមាតិកាដែលបង្កគ្រោះថ្នាក់ផ្សេងទៀតទេ។',
    },
    '68akepc3': {
      'en':
          '1.3. You retain ownership of any documents or content you upload to the DMS. However, you grant us a limited, non-exclusive right to access, store, and process your documents solely for providing the service.',
      'km':
          '១.៣. អ្នករក្សាភាពជាម្ចាស់នៃឯកសារ ឬខ្លឹមសារណាមួយដែលអ្នកផ្ទុកឡើងទៅកាន់ DMS ។ ទោះជាយ៉ាងណាក៏ដោយ អ្នកផ្តល់ឱ្យយើងនូវសិទ្ធិមានកំណត់ មិនមែនផ្តាច់មុខក្នុងការចូលប្រើ រក្សាទុក និងដំណើរការឯកសាររបស់អ្នកសម្រាប់តែការផ្តល់សេវាប៉ុណ្ណោះ។',
    },
    'onwfrab7': {
      'en': '2. Account Registration and Security',
      'km': '២. ការចុះឈ្មោះគណនី និងសុវត្ថិភាព',
    },
    '1ezevlb5': {
      'en':
          '2.1. You must register for an account to use the DMS. You agree to provide accurate and complete information during registration.',
      'km':
          '២.១. អ្នកត្រូវតែចុះឈ្មោះសម្រាប់គណនីមួយដើម្បីប្រើ DMS ។ អ្នកយល់ព្រមផ្តល់ព័ត៌មានត្រឹមត្រូវ និងពេញលេញក្នុងអំឡុងពេលចុះឈ្មោះ។',
    },
    'emy80j3r': {
      'en':
          '2.2. You are responsible for safeguarding your password and any activities conducted under your account.',
      'km':
          '២.២. អ្នកទទួលខុសត្រូវក្នុងការការពារពាក្យសម្ងាត់របស់អ្នក និងសកម្មភាពណាមួយដែលធ្វើឡើងនៅក្រោមគណនីរបស់អ្នក។',
    },
    'u7uz2uoy': {
      'en':
          '2.3. You must notify us immediately if you suspect any unauthorized access to your account.',
      'km':
          '២.៣. អ្នកត្រូវតែជូនដំណឹងមកយើងភ្លាមៗ ប្រសិនបើអ្នកសង្ស័យថាមានការចូលប្រើគណនីរបស់អ្នកដោយគ្មានការអនុញ្ញាត។',
    },
    'nr9w8hqf': {
      'en': '3. Fees and Payment',
      'km': '៣. ថ្លៃសេវា និងការទូទាត់',
    },
    'qhntt0zx': {
      'en':
          '3.1. The DMS may offer free or paid tiers of service. If you opt for a paid tier, you agree to pay the applicable fees according to the subscription plan.',
      'km':
          '៣.១. DMS អាចផ្តល់ជូននូវកម្រិតសេវាកម្មឥតគិតថ្លៃ ឬបង់ប្រាក់។ ប្រសិនបើអ្នកជ្រើសរើសកម្រិតដែលបង់ប្រាក់ អ្នកយល់ព្រមបង់ថ្លៃដែលអនុវត្តដោយយោងតាមគម្រោងការជាវ។',
    },
    '68lbvnwe': {
      'en':
          '3.2. All fees are non-refundable unless otherwise stated in writing.',
      'km':
          '៣.២. ថ្លៃសេវាទាំងអស់មិនអាចដកវិញបានទេ លុះត្រាតែមានចែងផ្សេងជាលាយលក្ខណ៍អក្សរ។',
    },
    'qba8k64t': {
      'en': '4. Termination',
      'km': '៤. ការបញ្ចប់',
    },
    'vfktqviy': {
      'en':
          '4.1. You may terminate your account at any time by following the instructions within the DMS platform.',
      'km':
          '៤.១. អ្នកអាចបិទគណនីរបស់អ្នកនៅពេលណាក៏បានដោយធ្វើតាមការណែនាំនៅក្នុងវេទិកា DMS ។',
    },
    '1jjomf0g': {
      'en':
          '4.2. We reserve the right to suspend or terminate your account if you violate these Terms or misuse the DMS.',
      'km':
          '៤.២. យើងរក្សាសិទ្ធិក្នុងការផ្អាក ឬបិទគណនីរបស់អ្នក ប្រសិនបើអ្នកបំពានលក្ខខណ្ឌទាំងនេះ ឬប្រើប្រាស់ DMS ខុស។',
    },
    '7c8ev92j': {
      'en': '5. Liability and Disclaimers',
      'km': '៦. ទំនួលខុសត្រូវ និងការបដិសេធ',
    },
    'r5gefphe': {
      'en':
          '5.1. The DMS is provided \"as is\" without any warranties. We do not guarantee the availability, accuracy, or completeness of the service.',
      'km':
          '៥.១. DMS ត្រូវបានផ្តល់ជូន \"ដូចដែលមាន\" ដោយគ្មានការធានាណាមួយឡើយ។ យើងមិនធានាភាពអាចរកបាន ភាពត្រឹមត្រូវ ឬភាពពេញលេញនៃសេវាកម្មនោះទេ។',
    },
    'mkt7nyg2': {
      'en':
          '5.2. We will not be liable for any indirect, consequential, or special damages resulting from your use of the DMS.',
      'km':
          '៥.២. យើងនឹងមិនទទួលខុសត្រូវចំពោះការខូចខាតដោយប្រយោល ផលវិបាក ឬពិសេសណាមួយដែលបណ្តាលមកពីការប្រើប្រាស់ DMS របស់អ្នក។',
    },
    '86hack4p': {
      'en': '6. Changes to the Terms',
      'km': '៦. ការផ្លាស់ប្តូរលក្ខខណ្ឌ',
    },
    'tz6b9ixf': {
      'en':
          'We reserve the right to update these Terms at any time. The most current version of the Terms will be available on our website, and you are encouraged to review them regularly.',
      'km':
          'យើងរក្សាសិទ្ធិដើម្បីធ្វើបច្ចុប្បន្នភាពលក្ខខណ្ឌទាំងនេះនៅពេលណាក៏បាន។ កំណែបច្ចុប្បន្នបំផុតនៃលក្ខខណ្ឌនឹងមាននៅលើគេហទំព័ររបស់យើង ហើយអ្នកត្រូវបានលើកទឹកចិត្តឱ្យពិនិត្យមើលពួកវាជាប្រចាំ។',
    },
    'n5imwfdi': {
      'en': '7. Governing Law',
      'km': '៧. ច្បាប់គ្រប់គ្រង',
    },
    'ng5vath9': {
      'en':
          'These Terms will be governed by and construed in accordance with the laws of Cambodia.',
      'km':
          'លក្ខខណ្ឌទាំងនេះនឹងត្រូវបានគ្រប់គ្រងដោយ និងបកស្រាយស្របតាមច្បាប់នៃប្រទេសកម្ពុជា។',
    },
    'k7nmwa2i': {
      'en': '__',
      'km': '__',
    },
  },
  // PageReportsV318
  {
    'ut5xavgx': {
      'en': 'Contracts',
      'km': 'កិច្ចសន្យា',
    },
    'in29fgjr': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    '34sfpimm': {
      'en': 'Executive Summary',
      'km': 'សង្ខេបប្រតិបត្តិ',
    },
    'jj3qqw28': {
      'en': '01 Sep,  2024',
      'km': 'ថ្ងៃទី 01 ខែកញ្ញា ឆ្នាំ 2024',
    },
    'uo65fa7h': {
      'en': 'Comparison',
      'km': 'ការប្រៀបធៀប',
    },
    '3ibnly3a': {
      'en': 'PDF',
      'km': 'PDF',
    },
    'ucj7sjh2': {
      'en': 'CSV',
      'km': 'CSV',
    },
    'erckw341': {
      'en': 'Export',
      'km': 'នាំចេញ',
    },
    'syh2jwl7': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'ekpsf8t6': {
      'en': 'Executive Summary',
      'km': 'សង្ខេបប្រតិបត្តិ',
    },
    'nnis5ogm': {
      'en': '01 Sep, 2024',
      'km': 'ថ្ងៃទី 01 ខែកញ្ញា ឆ្នាំ 2024',
    },
    'mszpu8sy': {
      'en': 'Document Status',
      'km': 'ស្ថានភាពឯកសារ',
    },
    'p1xl50vs': {
      'en': '18',
      'km': '១៨',
    },
    '6gklpxe4': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'ojteqy9w': {
      'en': '4',
      'km': '៤',
    },
    '4bhuxt00': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'sjtroupr': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    '21w2wtkh': {
      'en': 'seanghai@oone.bz',
      'km': 'ស៊ាងហៃ@oone.bz',
    },
    'fazhhils': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    '5r91p7cg': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    '02blnokg': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'zfkidf1z': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'm1qjm6zd': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'uvavihwu': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'u53naqe5': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'ws8ndwvs': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    'o7bn54kk': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'wpwfcy7t': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '458tqj2s': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    '0bq7qryr': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'yxtzwwzj': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    '0qikco8m': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    'gw8ae0nj': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'ffzobc8q': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'h0j0pd6r': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'mg08io7z': {
      'en': 'seanghai@oone.bz',
      'km': 'ស៊ាងហៃ@oone.bz',
    },
    'nkhx1tmh': {
      'en': 'seanghai.hin',
      'km': 'seanghai.hin',
    },
    'r4mf4yi4': {
      'en': '03-09-2024',
      'km': '០៣-០៩-២០២៤',
    },
    'mcaccec3': {
      'en': 'Completed',
      'km': 'បានបញ្ចប់',
    },
    'v9w0mk7v': {
      'en': 'In progress',
      'km': 'កំពុងដំណើរការ',
    },
    'siemag4z': {
      'en': '8',
      'km': '៨',
    },
    '39gbovvx': {
      'en': 'Draft',
      'km': 'សេចក្តីព្រាង',
    },
    'ywzaxvmb': {
      'en': '5',
      'km': '៥',
    },
    'acpci65x': {
      'en': 'Schedule Send',
      'km': 'កាលវិភាគផ្ញើ',
    },
    'g59lw20o': {
      'en': '1',
      'km': '១',
    },
    'x70pm6pw': {
      'en': 'Declined',
      'km': 'បានបដិសេធ',
    },
    'l7tbja4o': {
      'en': '0',
      'km': '0',
    },
    '63ezco7z': {
      'en': 'Expired',
      'km': 'ផុតកំណត់',
    },
    'gupzk5y0': {
      'en': '0',
      'km': '0',
    },
    'a1z9skyj': {
      'en': 'Document type',
      'km': 'ប្រភេទឯកសារ',
    },
    'g448xvsz': {
      'en': 'Complete',
      'km': 'បញ្ចប់',
    },
    'oph17m6m': {
      'en': '4',
      'km': '៤',
    },
    'ykvl2pmx': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'c4vct5yd': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'pk0ls1f8': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    '5boajqz3': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    '71lapkum': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'n1pcvh1f': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'hrfrhcnt': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'vzdx7xzh': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '4l4phklz': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'bahar6yw': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'mk521gno': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'q3wp0zbh': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'jzpmreaq': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    '4nlhprge': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'fdzo74fs': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'zi2lm3ea': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'qzu0mmme': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'r1jj149b': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'je0be3xl': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    '4wb6ny5p': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'h6zvyq9q': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'p3gsg2vg': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    's1y30t6p': {
      'en': '8',
      'km': '៨',
    },
    'f561juu8': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'wtd3qnsp': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    '1tba2hqe': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'l299oz83': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    '9bldylyc': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'awf02b5j': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    't8zmphym': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'ppqkabhc': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'hbwngy7a': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'hpcnp37n': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'quaxn4v2': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'ett0nofb': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'yx134ywz': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    's6n1sjsg': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'axzuxbc6': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'suxbe4fv': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'sneq5kvb': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    '0oq9gzd0': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'mj93404m': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'o2l23n2f': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    '3nrxinb8': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'ho4qeyc1': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '8te7iy21': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'g97l2hr0': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'b0jf15eg': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    '8knk3pe5': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'z9oc83ka': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'tja7bua9': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    '0u48dyn2': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'awrhrg4u': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    '01h4b04j': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'flgqg8wt': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'cz3frtka': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'c5f8haql': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'aka61m1a': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'inwqer2a': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '8cox89dv': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'p3d1rnbm': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'fwk6wd7t': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'ravi41ig': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'eg6u4o2p': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'n1wrqt42': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    '4f9es06u': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'kr7j5c2f': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'b1squi05': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'bpmsreal': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'f3pjtwxx': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    '40e1lf41': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'c39le81z': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'yg232u2r': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '5v2xmkqe': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    '5n2femd6': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'csr9yn98': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    '7o2umvuu': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'xb6flfku': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'kvxa7nd1': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'of4zhszd': {
      'en': 'Draft',
      'km': 'សេចក្តីព្រាង',
    },
    'zalcjudl': {
      'en': '5',
      'km': '៥',
    },
    'bwwaw74u': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'loozx2mo': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'dji9zjj6': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'ed9skyvr': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'sjrswmor': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'a5rqv3hr': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'taqohb5c': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    '49v9aah8': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'rzks5l4x': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'eq6zxqbe': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'hyqmangj': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    '752hqgdz': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    '2vpds7k8': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'zcv6mjee': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'cnnafpq1': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'm519tvqe': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    '0zei2nvx': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'y798ild7': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'ja85jgzx': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    '8k0rjdx0': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'sq1e4w11': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'u7hrmwwj': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'w45f3jsv': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    '4kztr2q6': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    'w2ur9pl7': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'yk16ool0': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'xulw5mpy': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'o9rmrtli': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'vpmqwsgu': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '4ts51fvj': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    '6nrhrhuh': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    '04zjpm5b': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'xvcnghrb': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'rz4kspt8': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    '4zhu806n': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'j3hynycv': {
      'en': 'Schedule Send',
      'km': 'កាលវិភាគផ្ញើ',
    },
    'x923u73c': {
      'en': '1',
      'km': '១',
    },
    '93e38zfo': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '6mw88m6r': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'hjl4gdv9': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    't2bt5t6n': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'wnmkk2z5': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'wrmje2wh': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'uwfhm3q1': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'ble4uzef': {
      'en': 'Decline',
      'km': 'បដិសេធ',
    },
    'e0gj6w9d': {
      'en': '0',
      'km': '0',
    },
    'su0u7jq4': {
      'en': 'Expired',
      'km': 'ផុតកំណត់',
    },
    'k7ddryqb': {
      'en': '0',
      'km': '0',
    },
    'vllfyee9': {
      'en': '__',
      'km': '__',
    },
  },
  // landing_page
  {
    'fdxinw0k': {
      'en': 'Get Started',
      'km': 'ចាប់ផ្តើម',
    },
    '8k3f3q8y': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
  },
  // PageHomev1180924
  {
    'oy1imnp3': {
      'en': 'Home',
      'km': 'ផ្ទះ',
    },
    'a4rrmnin': {
      'en': 'Status tracker',
      'km': 'កម្មវិធីតាមដានស្ថានភាព',
    },
    '3ss1rsa8': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    '5inr6qgb': {
      'en': 'Folders',
      'km': 'ថតឯកសារ',
    },
    'zvshg7r5': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    'u8pc8brg': {
      'en': 'View all',
      'km': 'មើលទាំងអស់។',
    },
    'sl5zx05g': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'm6w42ha1': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'a5pxfbye': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    'wausyty0': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'yz8xaqyy': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'ckqcs71q': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    'bpxs16a4': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'g1yj8pg8': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'qes00ja0': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    'zgc9rjnr': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះ​ថត',
    },
    'dy14jjso': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    't40iqnkd': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    '4rq7yiw3': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'l6nkdod9': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    '4ie2zvmu': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    '922uab3l': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះ​ថត',
    },
    '1fv5ctf6': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'pgz4hied': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
    'nts0brn4': {
      'en': 'Recent files',
      'km': 'ឯកសារថ្មីៗ',
    },
    'pygiepjt': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    '1vvfbwm5': {
      'en': 'View all',
      'km': 'មើលទាំងអស់។',
    },
    'hac2cvvq': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    '50zn8ecc': {
      'en': 'Size',
      'km': 'ទំហំ',
    },
    '3hcxbsk8': {
      'en': 'Last edit',
      'km': 'ការកែសម្រួលចុងក្រោយ',
    },
    'd5dka5ub': {
      'en': 'Letter from EDC',
      'km': 'លិខិតពី EDC',
    },
    'p4dhefpy': {
      'en': '3 MB',
      'km': '3 មេកាបៃ',
    },
    'k51yk1lu': {
      'en': '13-Sep-24 10:00 AM',
      'km': '13-កញ្ញា-24 ម៉ោង 10:00 ព្រឹក',
    },
    'cqfabu8f': {
      'en': 'Proposal DMS',
      'km': 'សំណើរ DMS',
    },
    'unbudfii': {
      'en': '3 MB',
      'km': '3 មេកាបៃ',
    },
    'uuiwqo58': {
      'en': '13-Sep-24 10:00 AM',
      'km': '13-កញ្ញា-24 ម៉ោង 10:00 ព្រឹក',
    },
    '2l8c0mcx': {
      'en': 'Letter from EAC',
      'km': 'លិខិតរបស់ EAC',
    },
    'fygzbrk3': {
      'en': '3 MB',
      'km': '3 មេកាបៃ',
    },
    'hdvni61b': {
      'en': '13-Sep-24 10:00 AM',
      'km': '13-កញ្ញា-24 ម៉ោង 10:00 ព្រឹក',
    },
    'v7dkehgk': {
      'en': 'Preview file',
      'km': 'មើលឯកសារជាមុន',
    },
    '0mvpkwtq': {
      'en': 'Proposal DMS',
      'km': 'សំណើរ DMS',
    },
    '0jd72x4t': {
      'en': '09-Sep-24 10:00 AM',
      'km': '០៩-កញ្ញា-២៤ ម៉ោង ១០:០០ ព្រឹក',
    },
    'ncnivceu': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'z31nlpu2': {
      'en':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'km': 'Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។',
    },
    'czsguuvc': {
      'en': 'Tags',
      'km': 'ស្លាក',
    },
    'ah6io50x': {
      'en': 'proposal',
      'km': 'សំណើ',
    },
    'i1lvi08i': {
      'en': 'Dashboard',
      'km': 'ផ្ទាំងគ្រប់គ្រង',
    },
    '69q2tpxh': {
      'en': '__',
      'km': '__',
    },
  },
  // PageWorkflowActions
  {
    '1qakmf3s': {
      'en': 'Workflow Actions',
      'km': 'សកម្មភាពលំហូរការងារ',
    },
    'x18tbqnj': {
      'en': 'Tools',
      'km': 'ឧបករណ៍',
    },
    'ufbyx14j': {
      'en': 'Sign Date',
      'km': '',
    },
    '9qgnfvyn': {
      'en': 'Signature',
      'km': '',
    },
    'ds9jkjft': {
      'en': 'Initial',
      'km': '',
    },
    'z7g01r3w': {
      'en': 'Name',
      'km': '',
    },
    'c4t8z0ti': {
      'en': 'Email',
      'km': '',
    },
    'zuh76j8a': {
      'en': 'Phone Number',
      'km': '',
    },
    'ug96famx': {
      'en': 'Text',
      'km': '',
    },
    'llusgi4k': {
      'en': 'Select',
      'km': '',
    },
    'x4jjbnju': {
      'en': 'TextField',
      'km': '',
    },
    '3zd7rk8v': {
      'en': '1',
      'km': '',
    },
    'b4x0pmbe': {
      'en': ' / ',
      'km': '',
    },
    '184a4vn8': {
      'en': '1',
      'km': '',
    },
    'rlb1inq5': {
      'en': 'Sign',
      'km': 'ហត្ថលេខា',
    },
    'ypasriwy': {
      'en': 'Assign to someone else',
      'km': 'ប្រគល់ឱ្យអ្នកផ្សេង',
    },
    'ln4aerpl': {
      'en': 'Reject',
      'km': 'បដិសេធ',
    },
    'ym7ijaf7': {
      'en': 'Skip signing',
      'km': 'រំលងការចុះហត្ថលេខា',
    },
    '91w8necl': {
      'en': 'Document Activity',
      'km': 'កាលបរិច្ឆេទតាមពេលវេលា',
    },
    'zp6zqwht': {
      'en': 'More actions',
      'km': '',
    },
    'etdqepuy': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'ojt6f0kd': {
      'en': 'Finish',
      'km': 'បញ្ចប់',
    },
    '0na4iqkf': {
      'en': 'Finish',
      'km': 'យល់ព្រម & បន្ត',
    },
    '3j237t9j': {
      'en': 'Edit Document',
      'km': 'កែសម្រួលឯកសារ',
    },
    '8chj3vt7': {
      'en': 'Left Rotation',
      'km': 'បង្វិលទៅខាងឆ្វេង',
    },
    'oujb3mqc': {
      'en': 'Right Rotation',
      'km': 'បង្វិលទៅខាងស្តាំ',
    },
    'mt03x1hj': {
      'en': 'Zoom In',
      'km': 'ពង្រីកចូល',
    },
    'onf2yf2g': {
      'en': 'Zoom Out',
      'km': 'ពង្រីកចេញ',
    },
    '09up9kvx': {
      'en': 'Download this Document',
      'km': 'ទាញយកឯកសារនេះ',
    },
    'kyiz2rqe': {
      'en': 'Print this Document',
      'km': 'ព្រីនឯកសារនេះ',
    },
    'z6pw3ncv': {
      'en': 'Full Screen',
      'km': 'អេក្រង់ពេញ',
    },
    'f9sajh7u': {
      'en': 'Documents',
      'km': '',
    },
    'cprlu5tj': {
      'en': ' ',
      'km': '',
    },
    'lrpazn93': {
      'en': 'Customers',
      'km': 'អតិថិជន',
    },
    'dpzftk80': {
      'en': '__',
      'km': '__',
    },
  },
  // notification_page
  {
    'uvqr7d4c': {
      'en': 'Notifications',
      'km': 'ការជូនដំណឹង',
    },
    'iz3a7r3y': {
      'en': 'Notifications',
      'km': 'ការជូនដំណឹង',
    },
    'impev1jc': {
      'en':
          'Please enable the Notification setting to see the notifications by going to ',
      'km': 'សូមបើកការកំណត់ការជូនដំណឹង ដើម្បីឃើញការជូនដំណឹងដោយការចូលទៅ',
    },
    'bikd8r94': {
      'en': ' settings',
      'km': ' ការកំណត់',
    },
    'yebyqhy3': {
      'en': 'Title : ',
      'km': '',
    },
    'ytdaqgf1': {
      'en': 'DateTime :',
      'km': '',
    },
    'dx3p7a78': {
      'en': 'From :',
      'km': '',
    },
    'xwps6z4t': {
      'en': 'Message :',
      'km': '',
    },
    '1500ly0z': {
      'en': 'You have received a document from your department.',
      'km': '',
    },
    'ddva81k4': {
      'en': 'ឯកសារបន្ទាន់ណាស់ប្រូ',
      'km': '',
    },
    'y4z7ndyj': {
      'en': 'Announcements',
      'km': 'សេចក្តីប្រកាស',
    },
    'irc6sz88': {
      'en': 'Mark All as Read',
      'km': 'សម្គាល់ទាំងអស់ថាបានអាន',
    },
    '80ujq2qf': {
      'en': 'Mark All as Read',
      'km': 'សម្គាល់ថាបានអាន',
    },
    'wc14x8nq': {
      'en': 'Clear All',
      'km': 'សម្អាតទាំងអស់',
    },
    '1m1e5z00': {
      'en': '',
      'km': '',
    },
    'qqd8cdli': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'qhiv52f7': {
      'en': '__',
      'km': '__',
    },
  },
  // PageMainWorkflow
  {
    'xt78qb5p': {
      'en': 'Document Flow',
      'km': 'លំហូរឯកសារ',
    },
    'k99rewqt': {
      'en': 'Upload',
      'km': 'បញ្ចូលឯកសារ',
    },
    'hfqaznug': {
      'en': 'Filter',
      'km': 'តម្រង',
    },
    'xwc7vfe1': {
      'en': 'Tab Setting',
      'km': 'បង្ហាញ/លាក់ជួរឈរ',
    },
    'c23vkdbg': {
      'en': 'ViewType',
      'km': 'មើលប្រភេទ',
    },
    'i4h1zt2x': {
      'en': 'Inbox',
      'km': 'ប្រអប់សំបុត្រ',
    },
    'bd8n50oz': {
      'en': 'Send out',
      'km': 'ផ្ញើចេញ',
    },
    's2ch3rl9': {
      'en': 'Priority',
      'km': 'សំខាន់',
    },
    'exd3vmgg': {
      'en': 'Drafts',
      'km': 'ព្រាងទុក',
    },
    'sryqqstp': {
      'en': 'Trash',
      'km': 'ធុងសំរាម',
    },
    'vdgb7yhn': {
      'en': 'All',
      'km': 'ទាំងអស់',
    },
    '4mq11kpo': {
      'en': 'Upload',
      'km': '',
    },
    'ms2zfr07': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'ttez5d0a': {
      'en': 'Inbox',
      'km': '',
    },
    '3c56sgrz': {
      'en': 'Send Out',
      'km': '',
    },
    'qqhq6m7p': {
      'en': 'Priority',
      'km': '',
    },
    'urwc5kdn': {
      'en': 'Draft',
      'km': '',
    },
    '5cfo3hch': {
      'en': 'All',
      'km': '',
    },
    '86sq7c9z': {
      'en': 'Trash',
      'km': '',
    },
    'd48quty1': {
      'en': '__',
      'km': '__',
    },
  },
  // configuration_setting_page
  {
    'cbp1oqir': {
      'en': 'settings',
      'km': 'ការកំណត់',
    },
    'e8yyvui2': {
      'en': 'Configuration',
      'km': 'ការកំណត់រចនាសម្ព័ន្ធ',
    },
    'bolecycc': {
      'en': 'Configuration Setting',
      'km': 'ការកំណត់រចនាសម្ព័ន្ធ',
    },
    'i63l6ujr': {
      'en': 'Document Process',
      'km': 'ដំណើរការឯកសារ',
    },
    'dzds7tdh': {
      'en': 'Adjust and modify the document to match your requirements.',
      'km': 'កែសម្រួល និងកែប្រែឯកសារឱ្យត្រូវនឹងតម្រូវការរបស់អ្នក។',
    },
    'setafbn1': {
      'en': 'Search',
      'km': 'ស្វែងរក',
    },
    'sx3uro71': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'daabv1hi': {
      'en': 'Category',
      'km': 'ប្រភេទ',
    },
    '204rtci7': {
      'en': 'Sensitivity',
      'km': 'ឯកជនភាព',
    },
    'xman0zyc': {
      'en': 'Severity',
      'km': 'ការិយាល័យ',
    },
    'w893w7d6': {
      'en': 'Add More',
      'km': 'បន្ថែម',
    },
    'j37xpdpo': {
      'en': 'Add More',
      'km': 'បន្ថែម',
    },
    '5lbpgkgv': {
      'en': 'Add More',
      'km': 'បន្ថែម',
    },
    'qodd0z7s': {
      'en': 'Add More',
      'km': 'បន្ថែម',
    },
    'v88bpj92': {
      'en': 'Organization /Company',
      'km': 'នាយកដ្ឋាន',
    },
    'tbgohraw': {
      'en':
          'Adjust and modify department/organization and company to match your requirements.',
      'km':
          'កែសម្រួល និងកែប្រែនាយកដ្ឋាន/អង្គការ និងក្រុមហ៊ុនឱ្យត្រូវនឹងតម្រូវការរបស់អ្នក។',
    },
    'sdq4lp95': {
      'en': 'Search',
      'km': 'ស្វែងរក',
    },
    'y2bjqy2q': {
      'en': 'Ministry',
      'km': 'ក្រសួង',
    },
    'nzmk4jxj': {
      'en': 'Minister',
      'km': 'រដ្ឋមន្ត្រី',
    },
    'wsa7wflw': {
      'en': 'General Department',
      'km': 'នាយកដ្ឋាន',
    },
    'oq1ld7wg': {
      'en': 'Department',
      'km': 'ការិយាល័យ',
    },
    'sv2j193n': {
      'en': 'Add More',
      'km': 'បន្ថែម',
    },
    'px013s70': {
      'en': 'Add More',
      'km': 'បន្ថែម',
    },
    '526hw9b5': {
      'en': 'Add More',
      'km': 'បន្ថែម',
    },
    'ah9zn0xj': {
      'en': 'Add More',
      'km': 'បន្ថែម',
    },
    'jervrg9y': {
      'en': 'Tools',
      'km': 'ឧបករណ៍',
    },
    'ih9znwta': {
      'en': 'Adjust and modify  Tools to match your requirements.',
      'km':
          'កែសម្រួល និងកែប្រែនាយកដ្ឋាន/អង្គការ និងក្រុមហ៊ុនឱ្យត្រូវនឹងតម្រូវការរបស់អ្នក។',
    },
    'ldbt73zp': {
      'en': 'Search',
      'km': 'ស្វែងរក',
    },
    'd5d3llc3': {
      'en': 'Name',
      'km': '',
    },
    'xpak5naj': {
      'en': 'Permission',
      'km': '',
    },
    '46u4lmf7': {
      'en': 'Status',
      'km': '',
    },
    'y5nsp5vu': {
      'en': 'Sign Date',
      'km': '',
    },
    '1sonhzn1': {
      'en': 'Enable',
      'km': '',
    },
    'pxooss1a': {
      'en': 'Process',
      'km': '',
    },
    'n04vvpv8': {
      'en': 'Signature',
      'km': '',
    },
    '671egtdm': {
      'en': 'Enable',
      'km': '',
    },
    'fwz1aqju': {
      'en': 'Process',
      'km': '',
    },
    'm0clnc8z': {
      'en': 'Initial',
      'km': '',
    },
    'bab6zhto': {
      'en': 'Enable',
      'km': '',
    },
    'pu6tz6io': {
      'en': 'Process',
      'km': '',
    },
    'galekenf': {
      'en': 'Name',
      'km': '',
    },
    'fwl9cvyf': {
      'en': 'Enable',
      'km': '',
    },
    'q9e8qvg7': {
      'en': 'Process',
      'km': '',
    },
    'c12qn7pk': {
      'en': 'Email',
      'km': '',
    },
    'isypq3no': {
      'en': 'Enable',
      'km': '',
    },
    'hnor35gv': {
      'en': 'Process',
      'km': '',
    },
    'azdidjw2': {
      'en': 'Phone Number',
      'km': '',
    },
    '9oa9t65m': {
      'en': 'Enable',
      'km': '',
    },
    's3ohxd1l': {
      'en': 'Process',
      'km': '',
    },
    'fz1gbix7': {
      'en': 'Text',
      'km': '',
    },
    'tsmck41t': {
      'en': 'Enable',
      'km': '',
    },
    'sxeut4g3': {
      'en': 'Process',
      'km': '',
    },
    'msswypo5': {
      'en': 'Select',
      'km': '',
    },
    'hxjd1gje': {
      'en': 'Enable',
      'km': '',
    },
    '7r0fal0f': {
      'en': 'Process',
      'km': '',
    },
    'apuzdo8c': {
      'en': 'Sign',
      'km': 'ហត្ថលេខា',
    },
    '8yei5ifa': {
      'en': 'Adjust and modify Sign to match your requirements.',
      'km':
          'កែសម្រួល និងកែប្រែនាយកដ្ឋាន/អង្គការ និងក្រុមហ៊ុនឱ្យត្រូវនឹងតម្រូវការរបស់អ្នក។',
    },
    '5e50bexe': {
      'en': 'Search',
      'km': '',
    },
    'q6c7wl2k': {
      'en': 'Name',
      'km': '',
    },
    '5s2fmk4p': {
      'en': 'Audit Log',
      'km': '',
    },
    'pq2q1x7c': {
      'en': 'Status',
      'km': '',
    },
    '42p2w2ta': {
      'en': 'ក្រសួងមហាផ្ទៃ',
      'km': '',
    },
    '8933cwbu': {
      'en': 'Process',
      'km': '',
    },
    '2crqdcq0': {
      'en': 'ក្រសួងសសាធារណការណ៍ និងដឹកជញ្ជូន',
      'km': '',
    },
    '6dtxtle7': {
      'en': 'Process',
      'km': '',
    },
    'i3q0y32u': {
      'en': 'ក្រសួងរ៉ែ និងថាមពល',
      'km': '',
    },
    '5opygpvb': {
      'en': 'Process',
      'km': '',
    },
    '0r31ku33': {
      'en': 'ក្រសួងធនរ៉ែ និងថាមពល',
      'km': '',
    },
    '34aax3yo': {
      'en': 'Process',
      'km': '',
    },
    'slpil2jm': {
      'en': 'Others',
      'km': 'ផ្សេងៗ',
    },
    'cc98r513': {
      'en': '__',
      'km': '__',
    },
  },
  // PagePreviewDocument
  {
    'usyib5vk': {
      'en': 'View Document',
      'km': 'មើលឯកសារ',
    },
    'jqzun4r5': {
      'en': 'TextField',
      'km': '',
    },
    'r4wwgppe': {
      'en': '1',
      'km': '',
    },
    'p4oitdk2': {
      'en': ' / ',
      'km': '',
    },
    '8o9bl7sl': {
      'en': '1',
      'km': '',
    },
    'z4hq7h92': {
      'en': 'Left Rotation',
      'km': 'ការបង្វិលឆ្វេង',
    },
    'pls73nu7': {
      'en': 'Right Rotation',
      'km': 'ការបង្វិលស្តាំ',
    },
    'z27kqpmc': {
      'en': 'Zoom In',
      'km': 'បង្រួម',
    },
    'ad1s5zst': {
      'en': 'Zoom Out',
      'km': 'ពង្រីក',
    },
    'o97zmywv': {
      'en': 'Download this Document',
      'km': 'ទាញយកឯកសារនេះ',
    },
    'em4vzsyl': {
      'en': 'Print this Document',
      'km': 'បោះពុម្ពឯកសារនេះ',
    },
    'duzoyb8r': {
      'en': 'Full Screen',
      'km': 'ពេញអេក្រង់',
    },
    'pmhq7e5t': {
      'en': 'Left Rotation',
      'km': '',
    },
    'rirog135': {
      'en': 'Right Rotation',
      'km': '',
    },
    'fqe6emxv': {
      'en': 'Zoom In',
      'km': '',
    },
    'msgso6dz': {
      'en': 'Zoom Out',
      'km': '',
    },
    'md7cnh26': {
      'en': 'Download this Document',
      'km': '',
    },
    '5ob2z6ak': {
      'en': 'Print this Document',
      'km': '',
    },
    'ftvkca57': {
      'en': 'Full Screen',
      'km': '',
    },
    '0wn6w442': {
      'en': 'Documents',
      'km': 'ឯកសារ',
    },
    '0usyjjvp': {
      'en': ' ',
      'km': '',
    },
    'bzb4npu4': {
      'en': 'Customers',
      'km': 'អតិថិជន',
    },
    'aiwau9vu': {
      'en': '__',
      'km': '__',
    },
  },
  // PageHomev2230924
  {
    'iae8eduw': {
      'en': 'All ',
      'km': 'ទាំងអស់។',
    },
    '79b6gfmc': {
      'en': '18',
      'km': '១៨',
    },
    'r49uqqif': {
      'en': 'On route vehicles',
      'km': 'នៅលើយានយន្តធ្វើដំណើរ',
    },
    'xw8eroid': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'vdv9bwhy': {
      'en': 'Inbox',
      'km': 'ប្រអប់សំបុត្រ',
    },
    'o3az9yb0': {
      'en': '06',
      'km': '០៦',
    },
    '3wer9z5l': {
      'en': 'On route vehicles',
      'km': 'នៅលើយានយន្តធ្វើដំណើរ',
    },
    'pe17qiuf': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'jbrarx16': {
      'en': 'Send',
      'km': 'ផ្ញើ',
    },
    '85azw5t0': {
      'en': '12',
      'km': '១២',
    },
    '9j09wvpn': {
      'en': 'On route vehicles',
      'km': 'នៅលើយានយន្តធ្វើដំណើរ',
    },
    'fvl3w34i': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'bhr73hqg': {
      'en': 'Favorite',
      'km': 'សំណព្វ',
    },
    'po705wwk': {
      'en': '12',
      'km': '១២',
    },
    'zdy8t326': {
      'en': 'On route vehicles',
      'km': 'នៅលើយានយន្តធ្វើដំណើរ',
    },
    '3e2ikjqu': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'k2ugn6k0': {
      'en': 'All',
      'km': 'ទាំងអស់។',
    },
    'b55d11p9': {
      'en': '18',
      'km': '១៨',
    },
    'iqsyrv80': {
      'en': 'On route vehicles',
      'km': 'នៅលើយានយន្តធ្វើដំណើរ',
    },
    '47hxxfja': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'zkn40o8c': {
      'en': 'Inbox',
      'km': 'ប្រអប់សំបុត្រ',
    },
    'lc4ofo7t': {
      'en': '06',
      'km': '០៦',
    },
    'pf8rhjn0': {
      'en': 'On route vehicles',
      'km': 'នៅលើយានយន្តធ្វើដំណើរ',
    },
    '78bn3xxe': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'gibb16hg': {
      'en': 'Send',
      'km': 'ផ្ញើ',
    },
    '80tleo5p': {
      'en': '12',
      'km': '១២',
    },
    '06jgblc4': {
      'en': 'On route vehicles',
      'km': 'នៅលើយានយន្តធ្វើដំណើរ',
    },
    '5kerg2wi': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    'mh378r5x': {
      'en': 'Favorite',
      'km': 'សំណព្វ',
    },
    'r85lde46': {
      'en': '12',
      'km': '១២',
    },
    'zmb8w563': {
      'en': 'On route vehicles',
      'km': 'នៅលើយានយន្តធ្វើដំណើរ',
    },
    'fdit3kg5': {
      'en': '+18.0% than last week',
      'km': '+18.0% ធៀបនឹងសប្តាហ៍មុន។',
    },
    '66v2y161': {
      'en': 'Folders',
      'km': 'ថតឯកសារ',
    },
    'ovwir3fy': {
      'en': 'Your favorite folders',
      'km': 'ថតឯកសារដែលអ្នកចូលចិត្ត',
    },
    't47lh3nb': {
      'en': 'See All',
      'km': 'មើលទាំងអស់។',
    },
    'xpla3mqk': {
      'en': 'My Folder',
      'km': 'ថតឯកសាររបស់ខ្ញុំ',
    },
    'kvdl7oz1': {
      'en': '2.3',
      'km': '២.៣',
    },
    '2m92dfe1': {
      'en': ' GB',
      'km': 'ជីកាបៃ',
    },
    'h1ycqugz': {
      'en': ' .',
      'km': '.',
    },
    '1e7s2asx': {
      'en': '168',
      'km': '១៦៨',
    },
    '5eqxlitl': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    'nw0jbh7l': {
      'en': 'Girl Friends',
      'km': 'មិត្តស្រី',
    },
    '8ejl5cnd': {
      'en': '10.4',
      'km': '១០.៤',
    },
    'looq7fwe': {
      'en': ' GB',
      'km': 'ជីកាបៃ',
    },
    's8ctbiu8': {
      'en': ' .',
      'km': '.',
    },
    'ylkz2kk5': {
      'en': '10',
      'km': '១០',
    },
    'x98kqoh9': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    'y6n7ty4n': {
      'en': 'Document Types',
      'km': 'ប្រភេទឯកសារ',
    },
    'ylyidyke': {
      'en': 'All document type %',
      'km': 'ប្រភេទឯកសារទាំងអស់ %',
    },
    'of0rh9a8': {
      'en': 'Folders',
      'km': 'ថតឯកសារ',
    },
    'hwg6hm9x': {
      'en': 'Your favorite folders',
      'km': 'ថតឯកសារដែលអ្នកចូលចិត្ត',
    },
    'brrr13di': {
      'en': 'See All',
      'km': 'មើលទាំងអស់។',
    },
    'ds60v059': {
      'en': 'My Folder',
      'km': 'ថតឯកសាររបស់ខ្ញុំ',
    },
    'tjho44v6': {
      'en': '2.3',
      'km': '២.៣',
    },
    '5s1f29ir': {
      'en': ' GB',
      'km': 'ជីកាបៃ',
    },
    '5qbw84zm': {
      'en': ' .',
      'km': '.',
    },
    'yjw01x1a': {
      'en': '168',
      'km': '១៦៨',
    },
    'cybbaish': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    'hjqf75s6': {
      'en': 'Project',
      'km': 'គម្រោង',
    },
    '0eyxv6dq': {
      'en': '8.4',
      'km': '៨.៤',
    },
    '3b7smna4': {
      'en': ' GB',
      'km': 'ជីកាបៃ',
    },
    '9lzdsbcv': {
      'en': ' .',
      'km': '.',
    },
    '45daedva': {
      'en': '15',
      'km': '១៥',
    },
    'kyl2ppiy': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    'oarg2x5n': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    'lal9fio4': {
      'en': '6.8',
      'km': '៦.៨',
    },
    'fgbt64xl': {
      'en': ' GB',
      'km': 'ជីកាបៃ',
    },
    'isdtj11r': {
      'en': ' .',
      'km': '.',
    },
    'ejvcfghv': {
      'en': '13',
      'km': '១៣',
    },
    'm11a2ixb': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    '1hdb8c00': {
      'en': 'Documents',
      'km': 'ឯកសារ',
    },
    '7ksfc7ug': {
      'en': '2.3',
      'km': '២.៣',
    },
    'j4h7kv2z': {
      'en': ' GB',
      'km': 'ជីកាបៃ',
    },
    'ogfa35r1': {
      'en': ' .',
      'km': '.',
    },
    'gd41z1gg': {
      'en': '16',
      'km': '១៦',
    },
    '6td870fl': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    'd2jcvc6b': {
      'en': 'Invioce',
      'km': 'វិក័យប័ត្រ',
    },
    '2a4egmzw': {
      'en': '10.4',
      'km': '១០.៤',
    },
    'esvobsz4': {
      'en': ' GB',
      'km': 'ជីកាបៃ',
    },
    'nx2t8kd8': {
      'en': ' .',
      'km': '.',
    },
    'ovkd21lm': {
      'en': '10',
      'km': '១០',
    },
    'ekrghr39': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    'ngx58tg1': {
      'en': 'Personal',
      'km': 'ផ្ទាល់ខ្លួន',
    },
    '5hl035ob': {
      'en': '200',
      'km': '២០០',
    },
    'wdpqslr4': {
      'en': ' MB',
      'km': 'MB',
    },
    '2mckcngp': {
      'en': ' .',
      'km': '.',
    },
    'p0mhbr8s': {
      'en': '4',
      'km': '៤',
    },
    '7m9zquyk': {
      'en': ' files',
      'km': 'ឯកសារ',
    },
    'muad51v0': {
      'en': 'Document Type',
      'km': 'ប្រភេទឯកសារ',
    },
    'jco4g3ar': {
      'en': 'All document type %',
      'km': 'ប្រភេទឯកសារទាំងអស់ %',
    },
    'ch5kkfsk': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'd3nevup1': {
      'en': 'Yesterday',
      'km': 'ម្សិលមិញ',
    },
    'l9nluang': {
      'en': 'Last Week',
      'km': 'សប្តាហ៍មុន។',
    },
    'msx97lz5': {
      'en': 'Two Week ago',
      'km': 'ពីរសប្តាហ៍មុន។',
    },
    'ayb23jug': {
      'en': 'Last Month',
      'km': 'ខែមុន។',
    },
    '862l0wb2': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'rqx4gyys': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '3u7i9x76': {
      'en': 'Letter',
      'km': '',
    },
    'njzedngr': {
      'en': 'Report',
      'km': '',
    },
    'lzqk1vnx': {
      'en': 'Request',
      'km': '',
    },
    'gdmydurd': {
      'en': 'Upload File',
      'km': 'ផ្ទុកឯកសារឡើង',
    },
    'opnbui8l': {
      'en': 'Recent files',
      'km': 'ឯកសារថ្មីៗ',
    },
    'an9xoihc': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    '0ms3c9v6': {
      'en': 'See all',
      'km': 'មើលទាំងអស់គ្នា',
    },
    '8k5w238p': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    '0v3fg7dx': {
      'en': '3.5 GB',
      'km': '3.5 ជីកាបៃ',
    },
    'k5463foa': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': 'ថ្ងៃទី 19 ខែកញ្ញា ឆ្នាំ 2024 ម៉ោង 2:30 រសៀល',
    },
    '3bfvnylc': {
      'en': '+4',
      'km': '+4',
    },
    '2xz2fbjz': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'mumitij6': {
      'en': '3.5 GB',
      'km': '3.5 ជីកាបៃ',
    },
    'jbykv4vf': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': 'ថ្ងៃទី 19 ខែកញ្ញា ឆ្នាំ 2024 ម៉ោង 2:30 រសៀល',
    },
    'kohazcta': {
      'en': '+4',
      'km': '+4',
    },
    'nj5jena1': {
      'en': 'Recent files',
      'km': 'ឯកសារថ្មីៗ',
    },
    'uq6g713x': {
      'en': 'Latest 30 days',
      'km': '30 ថ្ងៃចុងក្រោយ',
    },
    'oduk1j94': {
      'en': 'See All',
      'km': 'មើលទាំងអស់។',
    },
    'rs27380e': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'tcr8sh7a': {
      'en': '3.5 GB',
      'km': '3.5 ជីកាបៃ',
    },
    'go89skvb': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': 'ថ្ងៃទី 19 ខែកញ្ញា ឆ្នាំ 2024 ម៉ោង 2:30 រសៀល',
    },
    'tdfxqv82': {
      'en': '+4',
      'km': '+4',
    },
    '84xiev7t': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'c18v1z5z': {
      'en': '3.5 GB',
      'km': '3.5 ជីកាបៃ',
    },
    'ysy8mtfh': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': 'ថ្ងៃទី 19 ខែកញ្ញា ឆ្នាំ 2024 ម៉ោង 2:30 រសៀល',
    },
    'ltppuxx4': {
      'en': '+4',
      'km': '+4',
    },
    'u5fns1md': {
      'en': 'Dashboard',
      'km': 'ផ្ទាំងគ្រប់គ្រង',
    },
    'rttnww74': {
      'en': '__',
      'km': '__',
    },
  },
  // PagePrepareSignature
  {
    'wbxre354': {
      'en': 'Sign',
      'km': 'ហត្ថលេខា',
    },
    'guhkooz5': {
      'en': 'Prepare Signature',
      'km': 'រៀបចំហត្ថលេខា',
    },
    'dwu9ed3c': {
      'en': 'Reciptions',
      'km': 'អ្នកទទួលព័ត៌មាន',
    },
    'y7sesu5c': {
      'en': 'Tools',
      'km': 'ឧបករណ៍',
    },
    'uobz6x6z': {
      'en': 'Sign Date',
      'km': 'កាលបរិច្ឆេទហត្ថលេខា',
    },
    'p4bhy18l': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    '50eu561z': {
      'en': 'Initial',
      'km': 'ហត្ថលេខាសង្ខេប',
    },
    'sewonwng': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    '7chb2si1': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    '2zk18ms4': {
      'en': 'Phone Number',
      'km': 'លេខទូរស័ព្ទ',
    },
    'y40cjjth': {
      'en': 'Text',
      'km': 'សរសេរ',
    },
    'vdwr7688': {
      'en': 'Select',
      'km': 'ជ្រើសរើស',
    },
    'oww2wh4q': {
      'en': 'TextField',
      'km': '',
    },
    '4ahluisu': {
      'en': '1',
      'km': '1',
    },
    'cqbed6y5': {
      'en': ' / ',
      'km': '/',
    },
    '7nfy90sk': {
      'en': '1',
      'km': '1',
    },
    '70k8tgyb': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'uwcw2bkp': {
      'en': 'Schedule Message',
      'km': 'កាលវិភាគរបស់សារ',
    },
    'kt1yvhh7': {
      'en': 'Sent',
      'km': 'ផ្ញេី',
    },
    'dxjcixse': {
      'en': 'Schedule',
      'km': 'កាលវិភាគ',
    },
    '330a79ca': {
      'en': 'Edit Document',
      'km': 'កែសម្រួលឯកសារ',
    },
    'npht68u2': {
      'en': 'Left Rotation',
      'km': 'បង្វិលទៅខាងឆ្វេង',
    },
    'anznpci7': {
      'en': 'Right Rotation',
      'km': 'បង្វិលទៅខាងស្តាំ',
    },
    'ezuei1cg': {
      'en': 'Zoom In',
      'km': 'បង្រួម',
    },
    'o03esa0s': {
      'en': 'Zoom Out',
      'km': 'ពង្រីក',
    },
    '4xkm4875': {
      'en': 'Download this Document',
      'km': 'ទាញយកឯកសារនេះ',
    },
    'rbv1tffo': {
      'en': 'Print this Document',
      'km': 'បោះពុម្ពឯកសារនេះ',
    },
    'sdl40a85': {
      'en': 'Full Screen',
      'km': 'ពេញអេក្រង់',
    },
    '59rgy395': {
      'en': 'Documents',
      'km': 'ឯកសារ',
    },
    'ydb8a8ww': {
      'en': ' ',
      'km': '',
    },
    '5lhqdubw': {
      'en': ' ',
      'km': '',
    },
    'fy6wfc7r': {
      'en': ' ',
      'km': '',
    },
    'nir30xgu': {
      'en': 'Customers',
      'km': '',
    },
    'ulrxyv5z': {
      'en': '__',
      'km': '',
    },
  },
  // account_management_page
  {
    'n4ytj074': {
      'en': 'settings',
      'km': 'ការកំណត់',
    },
    'm9lieffx': {
      'en': 'Add',
      'km': 'បន្ថែម',
    },
    'fm6kv8yz': {
      'en': 'No',
      'km': 'លេខរៀង',
    },
    'qii33ffv': {
      'en': 'Username',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'bhuwzslj': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    'pz26qg1y': {
      'en': 'Role',
      'km': 'តួនាទី',
    },
    'ce630dzr': {
      'en': 'Departments',
      'km': '',
    },
    'z0p5hu1m': {
      'en': 'Address',
      'km': 'អាស័យដ្ឋាន',
    },
    '4r9n8vqp': {
      'en': 'Action',
      'km': 'សកម្មភាព',
    },
    '775g6wmo': {
      'en': '_​​_',
      'km': '__',
    },
  },
  // pageDocumentUploadOnly
  {
    '6xj3p2ny': {
      'en': 'Documents',
      'km': 'ឯកសារ',
    },
    'onak36oa': {
      'en': 'Adding Documents',
      'km': 'បន្ថែមឯកសារ',
    },
    'twxldid2': {
      'en': 'លិខិតលេខ_១២៣_ផ_ប_ក_ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
      'km': '',
    },
    '8mwrfv6l': {
      'en': 'Drop file here or',
      'km': 'ទម្លាក់ឯកសារនៅទីនេះ ឬ',
    },
    '3wfyymlw': {
      'en': 'Choose file',
      'km': 'ជ្រើសរើសឯកសារ',
    },
    'xo00ukfm': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    '1zbc0skk': {
      'en': 'Folder',
      'km': 'ថតឯកសារ',
    },
    '1p37vjs0': {
      'en': '',
      'km': 'A',
    },
    'zvuu13x0': {
      'en': 'Add To Folder',
      'km': 'បន្ថែមទៅថតឯកសារ',
    },
    'cfbt74vu': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'hvjnccnk': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    'qxf99ptc': {
      'en': 'Urgent',
      'km': 'A',
    },
    '1q8u6axo': {
      'en': 'Urgent',
      'km': 'អាទិភាពបន្ទាន់',
    },
    'cfk08hlh': {
      'en': 'High',
      'km': 'អាទិភាពខ្ពស់',
    },
    'w3gn5qo2': {
      'en': 'Medium',
      'km': 'អាទិភាពមធ្យម',
    },
    '45c807yg': {
      'en': 'Low',
      'km': 'អាទិភាពទាប',
    },
    'satyypza': {
      'en': 'Select Priority',
      'km': 'ជ្រើសរើសអាទិភាព',
    },
    '3vnrzmky': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '1t0nv8ay': {
      'en': 'Sensitivity',
      'km': 'ឯកជនភាព',
    },
    '3btztjdt': {
      'en': 'Normal',
      'km': 'A',
    },
    '3px0qwci': {
      'en': 'Normal',
      'km': 'ធម្មតា',
    },
    '0fufys2f': {
      'en': 'Personal',
      'km': 'ផ្ទាល់ខ្លួន',
    },
    '1lacmf33': {
      'en': 'Private',
      'km': 'ឯកជន',
    },
    'uvt4z943': {
      'en': 'Confidential',
      'km': 'សម្ងាត់',
    },
    '23kffl3v': {
      'en': 'Select Sensitivity',
      'km': 'ជ្រើសរើសឯកជនភាព',
    },
    '48qincpb': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'hde6tlgk': {
      'en': 'Category',
      'km': 'ប្រភេទ',
    },
    'nmgzbu7p': {
      'en': 'Contracts',
      'km': '',
    },
    '9kekms44': {
      'en': 'Contracts',
      'km': 'កិច្ចសន្យា',
    },
    'z9847m8u': {
      'en': 'Invoices',
      'km': 'វិក័យប័ត្រ',
    },
    'gbe8q126': {
      'en': 'Proposals',
      'km': 'សំណើ',
    },
    '3t4vhfxw': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    'qs40itj9': {
      'en': 'Select Category',
      'km': 'ជ្រើសរើសប្រភេទ',
    },
    'n2vx39y9': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'l2azxv2g': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'ai76rcjg': {
      'en': 'Send Now',
      'km': 'ផ្ញើឥឡូវនេះ',
    },
    'i5fd0wdd': {
      'en': 'Next',
      'km': 'បន្ទាប់',
    },
    'eo6o8q5l': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'lgxffj63': {
      'en': '__',
      'km': '',
    },
  },
  // PageReportsv427
  {
    '7zr7czh3': {
      'en': 'Contracts',
      'km': '',
    },
    '2ac272vi': {
      'en': 'Executive Summary',
      'km': 'សង្ខេបប្រតិបត្តិ',
    },
    '5xoygoao': {
      'en': 'Activity Log',
      'km': 'ប្រវត្តិសកម្មភាព',
    },
    '0c8k1y3p': {
      'en': 'Executive Summary',
      'km': '',
    },
    'bzs8cufw': {
      'en': 'Search...',
      'km': '',
    },
    '68fkujgk': {
      'en': '01 Sep,  2024',
      'km': '01 Sep,  2024',
    },
    '2uufl7xp': {
      'en': 'No Comparison',
      'km': 'គ្មានការប្រៀបធៀប',
    },
    'avnxsl8x': {
      'en': 'Previous Period Day',
      'km': 'ថ្ងៃចុងក្រោយនៃរដូវមុន',
    },
    'd51yff30': {
      'en': 'Previous Last Year',
      'km': 'ឆ្នាំកន្លងទៅ',
    },
    '2k65397h': {
      'en': 'Specific Date',
      'km': 'កាលបរិច្ឆេទជាក់លាក់',
    },
    'zyyzwd9y': {
      'en': 'No Comparison',
      'km': '',
    },
    '5ih9qhit': {
      'en': 'Search...',
      'km': '',
    },
    'kuz9z5fg': {
      'en': 'PDF',
      'km': 'PDF',
    },
    '5bfnly34': {
      'en': 'CSV',
      'km': 'CSV',
    },
    'urgpxjt4': {
      'en': 'Excel',
      'km': 'Excel',
    },
    'mrloxjwr': {
      'en': 'Export',
      'km': 'ទាញយក',
    },
    'byvmri4m': {
      'en': 'Search...',
      'km': '',
    },
    'wkz5tkvb': {
      'en': 'Electricite du Cambodge (EDC)',
      'km': '',
    },
    '1z7zjxi8': {
      'en': 'Executive Summary',
      'km': 'សង្ខេបប្រតិបត្តិ',
    },
    '079ufmfn': {
      'en': 'Date: 01 Sep 2024',
      'km': 'កាលបរិច្ឆេទ 01 Sep 2024',
    },
    'humuce8o': {
      'en': '__',
      'km': '',
    },
  },
  // home_page_20241004134500
  {
    'ulgo95xg': {
      'en': 'All ',
      'km': '',
    },
    'ea6cbpw1': {
      'en': '18',
      'km': '',
    },
    'ro36f8n7': {
      'en': 'On route vehicles',
      'km': '',
    },
    'y9i351uo': {
      'en': '+18.0% than last week',
      'km': '',
    },
    'aagbruv6': {
      'en': 'Inbox',
      'km': '',
    },
    'c9h5xmps': {
      'en': '06',
      'km': '',
    },
    'snmqye63': {
      'en': 'On route vehicles',
      'km': '',
    },
    'nafifnly': {
      'en': '+18.0% than last week',
      'km': '',
    },
    'ilbfbmyk': {
      'en': 'Send',
      'km': '',
    },
    '5psx6ljf': {
      'en': '12',
      'km': '',
    },
    '66k70nvb': {
      'en': 'On route vehicles',
      'km': '',
    },
    'clgm46l6': {
      'en': '+18.0% than last week',
      'km': '',
    },
    'w0dfpdoo': {
      'en': 'Favorite',
      'km': '',
    },
    'k6ch0n6y': {
      'en': '12',
      'km': '',
    },
    'gbwb4p3a': {
      'en': 'On route vehicles',
      'km': '',
    },
    'zmfhuqxb': {
      'en': '+18.0% than last week',
      'km': '',
    },
    'gzk5ujr4': {
      'en': 'All',
      'km': '',
    },
    '6kdoihv4': {
      'en': '18',
      'km': '',
    },
    'xuyansa2': {
      'en': 'On route vehicles',
      'km': '',
    },
    '6z8aisks': {
      'en': '+18.0% than last week',
      'km': '',
    },
    'herdkk28': {
      'en': 'Inbox',
      'km': '',
    },
    '98r4usb3': {
      'en': '06',
      'km': '',
    },
    '93554uji': {
      'en': 'On route vehicles',
      'km': '',
    },
    'va1u6w9q': {
      'en': '+18.0% than last week',
      'km': '',
    },
    'k5gp1lu2': {
      'en': 'Send',
      'km': '',
    },
    'iwt95986': {
      'en': '12',
      'km': '',
    },
    '2hnzdcv7': {
      'en': 'On route vehicles',
      'km': '',
    },
    'rn3vboor': {
      'en': '+18.0% than last week',
      'km': '',
    },
    'y5luywgm': {
      'en': 'Favorite',
      'km': '',
    },
    'qnau11lf': {
      'en': '12',
      'km': '',
    },
    'ozhjoasm': {
      'en': 'On route vehicles',
      'km': '',
    },
    'npr7ymjr': {
      'en': '+18.0% than last week',
      'km': '',
    },
    '9tj1i242': {
      'en': 'Folders',
      'km': '',
    },
    '1onfmn2u': {
      'en': 'Your favorite folders',
      'km': '',
    },
    'uswm4ksy': {
      'en': 'See All',
      'km': '',
    },
    '0oo83sir': {
      'en': 'My Folder',
      'km': '',
    },
    '9loqkgid': {
      'en': '2.3',
      'km': '',
    },
    'gs5uabxk': {
      'en': ' GB',
      'km': '',
    },
    'jdxur5c1': {
      'en': ' .',
      'km': '',
    },
    'j3aefecy': {
      'en': '168',
      'km': '',
    },
    'cbeow7jh': {
      'en': ' files',
      'km': '',
    },
    'b523u5wq': {
      'en': 'My Share Folder',
      'km': '',
    },
    '2t9gi1i2': {
      'en': '10.4',
      'km': '',
    },
    'o0esy93s': {
      'en': ' GB',
      'km': '',
    },
    'wesvfcmf': {
      'en': ' .',
      'km': '',
    },
    'iv0rnff4': {
      'en': '10',
      'km': '',
    },
    '9lwf4721': {
      'en': ' files',
      'km': '',
    },
    'brk86a0u': {
      'en': 'Document Types',
      'km': '',
    },
    'p39vvbnv': {
      'en': 'All document type %',
      'km': '',
    },
    'e9qrabyu': {
      'en': 'Letter',
      'km': '',
    },
    '9lqez85b': {
      'en': 'Report',
      'km': '',
    },
    '5hjvy786': {
      'en': 'Request',
      'km': '',
    },
    'c2pugwbr': {
      'en': 'Folders',
      'km': '',
    },
    'y720o0sf': {
      'en': 'Your favorite folders',
      'km': '',
    },
    '9s3uup43': {
      'en': 'See All',
      'km': '',
    },
    'mzfdnese': {
      'en': 'My Folder',
      'km': '',
    },
    'hy8tjhgr': {
      'en': '2.3',
      'km': '',
    },
    '4tnh61rc': {
      'en': ' GB',
      'km': '',
    },
    'tyr2jvlq': {
      'en': ' .',
      'km': '',
    },
    'lrwb6n6h': {
      'en': '168',
      'km': '',
    },
    '3wtae3qx': {
      'en': ' files',
      'km': '',
    },
    'gqa8yq0j': {
      'en': 'Project',
      'km': '',
    },
    'ley2znz5': {
      'en': '8.4',
      'km': '',
    },
    'myprjq65': {
      'en': ' GB',
      'km': '',
    },
    '17rdf4ze': {
      'en': ' .',
      'km': '',
    },
    'snn2ydam': {
      'en': '15',
      'km': '',
    },
    'chx0m5na': {
      'en': ' files',
      'km': '',
    },
    'p87ru9jy': {
      'en': 'Reports',
      'km': '',
    },
    '2t7ijonl': {
      'en': '6.8',
      'km': '',
    },
    'jbew33xc': {
      'en': ' GB',
      'km': '',
    },
    'e9vh5dbk': {
      'en': ' .',
      'km': '',
    },
    'whcdjw8b': {
      'en': '13',
      'km': '',
    },
    'kjetzo69': {
      'en': ' files',
      'km': '',
    },
    '5g0ab1ms': {
      'en': 'Documents',
      'km': '',
    },
    'wsc73469': {
      'en': '2.3',
      'km': '',
    },
    '8vjfhyw3': {
      'en': ' GB',
      'km': '',
    },
    'n2k72p3d': {
      'en': ' .',
      'km': '',
    },
    '1pdh4clq': {
      'en': '16',
      'km': '',
    },
    'ym28cdgj': {
      'en': ' files',
      'km': '',
    },
    '4g82kplr': {
      'en': 'Invioce',
      'km': '',
    },
    '0crl27wy': {
      'en': '10.4',
      'km': '',
    },
    'wn9brsey': {
      'en': ' GB',
      'km': '',
    },
    'tnt9swdx': {
      'en': ' .',
      'km': '',
    },
    'daavawnb': {
      'en': '10',
      'km': '',
    },
    '3gbsbjyw': {
      'en': ' files',
      'km': '',
    },
    '7ize28u1': {
      'en': 'Personal',
      'km': '',
    },
    '94l0b6bm': {
      'en': '200',
      'km': '',
    },
    'wwvult37': {
      'en': ' MB',
      'km': '',
    },
    'hdyfxlno': {
      'en': ' .',
      'km': '',
    },
    '4vnkedtt': {
      'en': '4',
      'km': '',
    },
    'hzlbf071': {
      'en': ' files',
      'km': '',
    },
    '88zcu6e8': {
      'en': 'Document Type',
      'km': '',
    },
    'rw5n6n7z': {
      'en': 'All document type %',
      'km': '',
    },
    'txg3kwl5': {
      'en': 'Today',
      'km': '',
    },
    '3ei148ly': {
      'en': 'Yesterday',
      'km': '',
    },
    'g6vl144a': {
      'en': 'Last Week',
      'km': '',
    },
    'nusysqrd': {
      'en': 'Two Week ago',
      'km': '',
    },
    '1zlcqe5i': {
      'en': 'Last Month',
      'km': '',
    },
    'cku8fbro': {
      'en': 'Today',
      'km': '',
    },
    'p0jw563j': {
      'en': 'Search...',
      'km': '',
    },
    'd53ob96x': {
      'en': 'Letter',
      'km': '',
    },
    'wyhwkiq4': {
      'en': 'Report',
      'km': '',
    },
    'w04m8jke': {
      'en': 'Request',
      'km': '',
    },
    'lqp9d5bl': {
      'en': 'Upload File',
      'km': '',
    },
    '29klw3hw': {
      'en': 'Recent files',
      'km': '',
    },
    'flim8849': {
      'en': 'Latest 30 days',
      'km': '',
    },
    'd9spucqo': {
      'en': 'See all',
      'km': '',
    },
    '2llvyzar': {
      'en': 'Reports Staff of 2024',
      'km': '',
    },
    '392283qt': {
      'en': '3.5 GB',
      'km': '',
    },
    'i3dah3td': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': '',
    },
    '2qasnkys': {
      'en': '+4',
      'km': '',
    },
    '70wvi86z': {
      'en': 'Reports Staff of 2024',
      'km': '',
    },
    'a4jynkqh': {
      'en': '3.5 GB',
      'km': '',
    },
    'jgbesd3u': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': '',
    },
    '0csnd8lb': {
      'en': '+4',
      'km': '',
    },
    'trz04jv8': {
      'en': 'Recent files',
      'km': '',
    },
    'pg276xfd': {
      'en': 'Latest 30 days',
      'km': '',
    },
    'nl6xa6ee': {
      'en': 'See All',
      'km': '',
    },
    '2411j1t7': {
      'en': 'Reports Staff of 2024',
      'km': '',
    },
    '9m9qfem9': {
      'en': '3.5 GB',
      'km': '',
    },
    'jkxnmqi9': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': '',
    },
    'rtlsjvyb': {
      'en': '+4',
      'km': '',
    },
    '3603xey5': {
      'en': 'Reports Staff of 2024',
      'km': '',
    },
    'hp98kv5w': {
      'en': '3.5 GB',
      'km': '',
    },
    'm2ellw3i': {
      'en': '19 Sep, 2024 02:30 PM',
      'km': '',
    },
    '5a4o5k1n': {
      'en': '+4',
      'km': '',
    },
    'bwsfv9m0': {
      'en': 'Dashboard',
      'km': '',
    },
    '23f54bg9': {
      'en': '__',
      'km': '',
    },
  },
  // user_authorization
  {
    'frjp9emx': {
      'en': 'Home',
      'km': '',
    },
  },
  // Customization_page
  {
    'z1twga1a': {
      'en': 'Color Mode',
      'km': 'ពណ៌ផ្ទាំងប្រើប្រាស់',
    },
    'orpsplr3': {
      'en':
          'Choose if the app appearance should be in light mode, dark mode​​ or system',
      'km':
          'ជ្រើសរើសប្រសិនបើរូបរាងកម្មវិធីគួរតែស្ថិតនៅក្នុងរបៀបភ្លឺ ងងឹត ឬប្រព័ន្ធ',
    },
    '17nn0x3e': {
      'en': 'Light Mode',
      'km': 'ភ្លឺ',
    },
    'lg9i81fa': {
      'en': 'Dark Mode',
      'km': 'ងងឹត',
    },
    '6ahkwfrn': {
      'en': 'System Mode',
      'km': 'ប្រព័ន្ធ',
    },
    'uui20rij': {
      'en': 'Color Brand',
      'km': 'ម៉ាកពណ៌របស់កម្មវិធី',
    },
    'pq526zyh': {
      'en': 'Select or Customize your brand color ',
      'km': 'ជ្រើសរើស ឬប្ដូរពណ៌ម៉ាករបស់អ្នក',
    },
    '7udcq7ow': {
      'en': 'Button',
      'km': '',
    },
    'l7kmjkyn': {
      'en': 'Button',
      'km': '',
    },
    '9t13p354': {
      'en': 'Button',
      'km': '',
    },
    '47eizqby': {
      'en': 'Custom Color : ',
      'km': 'ពណ៌ផ្ទាល់ខ្លួន',
    },
    'gwajhnzs': {
      'en': '#6F61EF',
      'km': '',
    },
    'am0lyagv': {
      'en': 'Text Setting ',
      'km': 'ការកំណត់អត្ថបទ',
    },
    'nff5gc4f': {
      'en': 'Select Your font Size',
      'km': 'ជ្រើសរើសទំហំពុម្ពអក្សររបស់អ្នក',
    },
    '16cwmrxt': {
      'en': '16px',
      'km': '16px',
    },
    'uzdw82ii': {
      'en': '20px',
      'km': '20px',
    },
    'w5xwk61f': {
      'en': '24px',
      'km': '24px',
    },
    '95bb6fl7': {
      'en': '28px',
      'km': '28px',
    },
    'sspq62rq': {
      'en': 'Select...',
      'km': '',
    },
    '991f7akm': {
      'en': 'Search...',
      'km': '',
    },
    'jqvg4brd': {
      'en': 'Select Your font Styles',
      'km': 'ជ្រើសរើសរចនាប័ទ្មពុម្ពអក្សររបស់អ្នក',
    },
    '1h3vuwx2': {
      'en': ' Arial',
      'km': 'Katumroy font',
    },
    'twsvm438': {
      'en': 'Roboto',
      'km': 'Khmer Os font',
    },
    '95a9rqqa': {
      'en': 'Lobster',
      'km': 'Helvetica font',
    },
    'iy2z69dd': {
      'en': 'Open Sans',
      'km': 'Roboto. Roboto is a sans serif font',
    },
    'zzlnf7mr': {
      'en': 'Select...',
      'km': '',
    },
    'rrp0hohq': {
      'en': 'Search...',
      'km': '',
    },
    '8tsmptyv': {
      'en': 'Customize your text Styles',
      'km': 'ប្ដូររចនាប័ទ្មអត្ថបទរបស់អ្នកតាមបំណង',
    },
    'ch0tjxk8': {
      'en': 'Select Font style...',
      'km': 'ជ្រើសរើសរចនាប័ទ្មពុម្ពអក្សរ...',
    },
    'q1viv14a': {
      'en': 'Reset',
      'km': 'លុប',
    },
    'bp0m4tc9': {
      'en': 'Save',
      'km': 'លុប',
    },
    '51avpszw': {
      'en': 'Language',
      'km': 'ភាសា',
    },
    'j44q6yyk': {
      'en': 'Default language for public dashboard',
      'km': 'ភាសាសម្រាប់ផ្ទាំងគ្រប់គ្រង',
    },
    'zley1klo': {
      'en': 'English',
      'km': 'English',
    },
    'qe3bttxx': {
      'en': 'khmer',
      'km': 'khmer',
    },
    'ukojkzvz': {
      'en': 'Color Mode',
      'km': '',
    },
    'exz6nxzo': {
      'en': 'Choose if the app apperence should Light mode or  dark mode',
      'km': '',
    },
    'xobkcfao': {
      'en': 'Light Mode',
      'km': '',
    },
    'ee38c2a1': {
      'en': 'Dark Mode',
      'km': '',
    },
    '8ene7xac': {
      'en': 'System Mode',
      'km': '',
    },
    'z3mshnyr': {
      'en': 'Color Brand',
      'km': '',
    },
    'i0276a1p': {
      'en': 'Select or Customize your brand color ',
      'km': '',
    },
    'mcp0dw8m': {
      'en': 'Button',
      'km': '',
    },
    'ooavpxcu': {
      'en': 'Button',
      'km': '',
    },
    'fqprk668': {
      'en': 'Button',
      'km': '',
    },
    'bp1rl55y': {
      'en': 'Custom Color :',
      'km': '',
    },
    'q4z1ibkx': {
      'en': '',
      'km': '',
    },
    'fsj80aak': {
      'en': '#6F61EF',
      'km': '',
    },
    'b13xc13w': {
      'en': 'Save',
      'km': '',
    },
    'bl7z6fx0': {
      'en': 'Text Setting ',
      'km': '',
    },
    'cgjx5a8j': {
      'en': 'Select Your font Size',
      'km': '',
    },
    'ds83grot': {
      'en': '16px',
      'km': '',
    },
    'r110y5ay': {
      'en': '20px',
      'km': '',
    },
    '0p1kn3v6': {
      'en': '24px',
      'km': '',
    },
    '56fgzu05': {
      'en': '28px',
      'km': '',
    },
    'okjxvzln': {
      'en': 'Select...',
      'km': '',
    },
    'ukfgowyj': {
      'en': 'Search...',
      'km': '',
    },
    'sd5z2rug': {
      'en': 'Select Your font Styles',
      'km': '',
    },
    '4tm672ui': {
      'en': 'Katumroy font',
      'km': '',
    },
    '6i0oyscs': {
      'en': 'Khmer Os font',
      'km': '',
    },
    'e4q138du': {
      'en': 'Helvetica font',
      'km': '',
    },
    '9sjg9a40': {
      'en': 'Roboto. Roboto is a sans serif font',
      'km': '',
    },
    'ffv0s4k5': {
      'en': 'Select...',
      'km': '',
    },
    '84ku8sj0': {
      'en': 'Search...',
      'km': '',
    },
    'ah7kk782': {
      'en': 'Customize your text Styles',
      'km': '',
    },
    's801bfs1': {
      'en': 'Select Font style...',
      'km': '',
    },
    'lqxok0jn': {
      'en': 'Reset',
      'km': 'លុប',
    },
    'hr1l7dt6': {
      'en': 'Save',
      'km': 'លុប',
    },
    'inj9r7no': {
      'en': 'Language',
      'km': '',
    },
    'wghhdmo0': {
      'en': 'Default language for public dashboard',
      'km': '',
    },
    'y59radqd': {
      'en': 'English',
      'km': '',
    },
    't32ui3ep': {
      'en': 'Khmer',
      'km': '',
    },
    '9b7i1znw': {
      'en': 'Home',
      'km': '',
    },
  },
  // pageDocumentUpload
  {
    '4le89kl4': {
      'en': 'Document Flow',
      'km': 'លំហូរឯកសារ',
    },
    'f92aouxr': {
      'en': 'Documents',
      'km': 'លំហូរឯកសារ',
    },
    'msdvsykm': {
      'en': 'លិខិតលេខ_១២៣_ផ_ប_ក_ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
      'km': 'លិខិតលេខ_១២៣_ផ_ប_ក_ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
    },
    'v4gwu6qy': {
      'en': 'លិខិតដាក់ជូនលោកនាយក',
      'km': 'លិខិតដាក់ជូនលោកនាយក',
    },
    'uuu1ojnb': {
      'en': 'លិខិតលេខ ១២៣ ក.ណ ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
      'km': 'លិខិតលេខ ១២៣ ក.ណ ដាក់ជូនលោកនាយកបច្ចេកវិទ្យាព័ត៌មាន',
    },
    'sa7v9nco': {
      'en': 'Receive NO',
      'km': 'ឈ្មោះ',
    },
    '9q6nlfzw': {
      'en': 'Send NO',
      'km': 'ឈ្មោះ',
    },
    'ywsqzfpm': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    'v3fbw4nx': {
      'en': 'Folder',
      'km': 'ថតឯកសារ',
    },
    'cur3cqhx': {
      'en': '',
      'km': '',
    },
    'fn0wc412': {
      'en': 'My Folder',
      'km': 'ថតឯកសាររបស់ខ្ញុំ',
    },
    'xqwl6qi0': {
      'en': 'Add To Folder',
      'km': 'បន្ថែមទៅថតឯកសារ',
    },
    'w4zx93n0': {
      'en': 'Search...',
      'km': 'ស្វែករក...',
    },
    '9ym7rlzh': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
    '8714zzp7': {
      'en': '',
      'km': '',
    },
    'ceix9rns': {
      'en': 'Urgent',
      'km': 'បន្ទាន់',
    },
    '8c4per4q': {
      'en': 'High',
      'km': 'ខ្ពស់',
    },
    'jg7fb2u7': {
      'en': 'Medium',
      'km': 'មធ្យម',
    },
    'x2gknu7e': {
      'en': 'Low',
      'km': 'កម្រិតទាប',
    },
    'aat4lusu': {
      'en': 'Select Priority',
      'km': 'ជ្រើសរើសអាទិភាព',
    },
    'jo1480jp': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'athqconr': {
      'en': 'Sensitivity',
      'km': 'ឯកជនភាព',
    },
    'b630eudd': {
      'en': '',
      'km': '',
    },
    'rcy896ll': {
      'en': 'Normal',
      'km': 'ធម្មតា',
    },
    'oasq3ahf': {
      'en': 'Personal',
      'km': 'ផ្ទាល់ខ្លួន',
    },
    '8zyht48w': {
      'en': 'Private',
      'km': 'ឯកជនភាព',
    },
    'cfjdu5ju': {
      'en': 'Confidential',
      'km': 'សម្ងាត់',
    },
    'muwbfeyk': {
      'en': 'Select Sensitivity',
      'km': 'ជ្រើសរើសឯកជនភាព',
    },
    'jhim9195': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'q6ojyozz': {
      'en': 'Category',
      'km': 'ប្រភេទ',
    },
    'ay1jbz9o': {
      'en': 'Contracts',
      'km': '',
    },
    '0by0iqve': {
      'en': 'Contracts',
      'km': 'កិច្ចសន្យា',
    },
    'ydwo0czw': {
      'en': 'Invoices',
      'km': 'វិក័យប័ត្រ',
    },
    '3a6boxct': {
      'en': 'Proposals',
      'km': 'សំណើ',
    },
    '1r7x0jrr': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    'nbnu5ad2': {
      'en': 'Select Category',
      'km': 'ជ្រើសរើសប្រភេទ',
    },
    'v281e2xx': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'pw5401vm': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'lscr49sc': {
      'en': 'Description for  documents.',
      'km': 'ការពណ៌នាសម្រាប់ឯកសារ',
    },
    '7h3aj3nh': {
      'en': 'Note',
      'km': 'ចំណាំ',
    },
    '72ee06wv': {
      'en': ' Note',
      'km': 'ចំណាំ',
    },
    'ugnkjz9f': {
      'en': 'Add Field',
      'km': 'បន្ថែម',
    },
    '283m4s3p': {
      'en': 'Send Now',
      'km': 'ផ្ញើឥឡូវនេះ',
    },
    'qicbip7c': {
      'en': 'Next',
      'km': 'បន្ទាប់',
    },
    'b43wg5bs': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'mgp2by06': {
      'en': 'Please input value!',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    '9on4vrt2': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '55u9iac6': {
      'en': 'Please input value!',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    'c49l8arq': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'we2pwapl': {
      'en': 'Please input value!',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    'ra6x0duo': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '7wzg92ko': {
      'en': 'Field is required',
      'km': '',
    },
    '1iw360xq': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '6afg9oyi': {
      'en': 'Field is required',
      'km': '',
    },
    'seloi9gh': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '2kyl9hbl': {
      'en': 'Please input value!',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    '2yiugzim': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'ukxqm9yd': {
      'en': 'Field is required',
      'km': '',
    },
    'lmdyzbr1': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'murq6rxz': {
      'en': 'Field is required',
      'km': '',
    },
    'e4ga7pbx': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'mmsyuvuo': {
      'en': 'Field is required',
      'km': '',
    },
    'qaa7d7jn': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '35lkb87f': {
      'en': 'Customers',
      'km': 'អតិថិជន',
    },
    '4i92mtk5': {
      'en': '__',
      'km': '__',
    },
  },
  // configuration_page_backup
  {
    'ocpzd4gw': {
      'en': 'settings',
      'km': 'ការកំណត់',
    },
    'dmxi14pm': {
      'en': 'Configuration',
      'km': 'ការកំណត់រចនាសម្ព័ន្ធ',
    },
    'eph2v0o0': {
      'en': 'Configuration Setting',
      'km': '',
    },
    'z4cukt85': {
      'en': 'Document Process',
      'km': '',
    },
    'ycjrzsz0': {
      'en': 'Search',
      'km': '',
    },
    'h35m02r1': {
      'en': 'Add',
      'km': '',
    },
    'uy0pln8n': {
      'en': 'Delete',
      'km': '',
    },
    'shgroy43': {
      'en': 'Name',
      'km': '',
    },
    's7lug3cf': {
      'en': 'Permission',
      'km': '',
    },
    'od2aomhq': {
      'en': 'Status',
      'km': '',
    },
    'ohfxc0o2': {
      'en': 'Priority',
      'km': '',
    },
    'h500pfcr': {
      'en': 'Enable',
      'km': '',
    },
    '0clavvge': {
      'en': 'Process',
      'km': '',
    },
    '49ro92ds': {
      'en': 'Category',
      'km': '',
    },
    'g8ptct2m': {
      'en': 'Enable',
      'km': '',
    },
    'gobjiz4i': {
      'en': 'Process',
      'km': '',
    },
    'osgx0dxw': {
      'en': 'Serverity',
      'km': '',
    },
    'hr9rd6c2': {
      'en': 'Enable',
      'km': '',
    },
    '6f29mxm8': {
      'en': 'Process',
      'km': '',
    },
    'h9u4vm2p': {
      'en': 'Department',
      'km': '',
    },
    's1n3ng3e': {
      'en': 'Search',
      'km': '',
    },
    'xn6gbeim': {
      'en': 'Add',
      'km': '',
    },
    'mmcrlobk': {
      'en': 'Delete',
      'km': '',
    },
    '78714khw': {
      'en': 'Organization / Department ',
      'km': '',
    },
    'z4ep0ojl': {
      'en': 'Ministry',
      'km': 'ក្រសួង',
    },
    'zowim3ms': {
      'en': 'Minister',
      'km': 'រដ្ឋមន្ត្រី',
    },
    'd620aeqe': {
      'en': 'Department',
      'km': 'នាយកដ្ឋាន',
    },
    'ggalr5mu': {
      'en': 'Office',
      'km': 'ការិយាល័យ',
    },
    '6w6cull5': {
      'en': 'Add More',
      'km': '',
    },
    'y5tgolcz': {
      'en': 'Add More',
      'km': '',
    },
    '0hxsf65t': {
      'en': 'Add More',
      'km': '',
    },
    'vvndfr7h': {
      'en': 'Add More',
      'km': '',
    },
    'iimjg8yt': {
      'en': 'Tools',
      'km': '',
    },
    'kheh1prb': {
      'en': 'Search',
      'km': '',
    },
    '1e80k3r3': {
      'en': 'Add',
      'km': '',
    },
    'pznaryjk': {
      'en': 'Delete',
      'km': '',
    },
    'l2vxwi0z': {
      'en': 'Name',
      'km': '',
    },
    '5lo6ain8': {
      'en': 'Permission',
      'km': '',
    },
    'xs8oglhz': {
      'en': 'Status',
      'km': '',
    },
    'kcrlng9z': {
      'en': 'Sign Date',
      'km': '',
    },
    'undid53i': {
      'en': 'Enable',
      'km': '',
    },
    'bwz6fcmp': {
      'en': 'Process',
      'km': '',
    },
    'hulpkhqs': {
      'en': 'Signature',
      'km': '',
    },
    '4z7dtdgi': {
      'en': 'Enable',
      'km': '',
    },
    '4tgj384i': {
      'en': 'Process',
      'km': '',
    },
    'ng9u7cr1': {
      'en': 'Initial',
      'km': '',
    },
    'r2jvh5hk': {
      'en': 'Enable',
      'km': '',
    },
    'vk7any3e': {
      'en': 'Process',
      'km': '',
    },
    'diq3bneu': {
      'en': 'Serverity',
      'km': '',
    },
    '037wfzme': {
      'en': 'Search',
      'km': '',
    },
    '6vki2lg5': {
      'en': 'Add',
      'km': '',
    },
    'ax04rkvp': {
      'en': 'Delete',
      'km': '',
    },
    'b909uzws': {
      'en': 'Name',
      'km': '',
    },
    'mmn1qp0c': {
      'en': 'Audit Log',
      'km': '',
    },
    'f8zqtp97': {
      'en': 'Status',
      'km': '',
    },
    'wcvfey6w': {
      'en': 'ក្រសួងមហាផ្ទៃ',
      'km': '',
    },
    'f0lulb9k': {
      'en': 'Process',
      'km': '',
    },
    'llz3g10y': {
      'en': 'ក្រសួងសសាធារណការណ៍ និងដឹកជញ្ជូន',
      'km': '',
    },
    '27tpgz0y': {
      'en': 'Process',
      'km': '',
    },
    '1z6c3pyc': {
      'en': 'ក្រសួងរ៉ែ និងថាមពល',
      'km': '',
    },
    'iopbsm4u': {
      'en': 'Process',
      'km': '',
    },
    'hij3sfzi': {
      'en': 'ក្រសួងធនរ៉ែ និងថាមពល',
      'km': '',
    },
    '28lwa0nu': {
      'en': 'Process',
      'km': '',
    },
    'xwjupbfd': {
      'en': 'Others',
      'km': '',
    },
    '4wx4586s': {
      'en': '__',
      'km': '__',
    },
  },
  // modal_Message
  {
    'wa4vkne2': {
      'en': 'Congratulations!',
      'km': 'អបអរសាទរ!',
    },
    '3hf2ocig': {
      'en':
          'Now that a contract has been generated for this customer please contact them with the date you will send the signed agreement.',
      'km':
          'ឥឡូវនេះកិច្ចសន្យាមួយត្រូវបានបង្កើតឡើងសម្រាប់អតិថិជននេះ សូមទាក់ទងពួកគេជាមួយនឹងកាលបរិច្ឆេទដែលអ្នកនឹងផ្ញើកិច្ចព្រមព្រៀងដែលបានចុះហត្ថលេខា។',
    },
    'q0jvi1lp': {
      'en': 'Okay',
      'km': 'យល់ព្រម',
    },
    'oo4y13nf': {
      'en': 'Continue',
      'km': 'បន្ត',
    },
  },
  // modal_Welcome
  {
    '00flvi93': {
      'en': 'Congratulations!',
      'km': 'អបអរសាទរ!',
    },
    'fmzceh74': {
      'en': 'A new contract has been generated for:',
      'km': 'កិច្ចសន្យាថ្មីត្រូវបានបង្កើតឡើងសម្រាប់៖',
    },
    'g8q2u55w': {
      'en': 'Continue',
      'km': 'បន្ត',
    },
  },
  // createComment
  {
    'l2jlnhye': {
      'en': 'Create Note',
      'km': 'បង្កើតកំណត់ចំណាំ',
    },
    'd6yfe8tj': {
      'en': 'Find members by searching below',
      'km': 'រកសមាជិកដោយការស្វែងរកខាងក្រោម',
    },
    'p3rj5ra0': {
      'en': 'Ricky Rodriguez',
      'km': 'Ricky Rodriguez',
    },
    '9gf6o5ss': {
      'en': 'Enter your note here...',
      'km': 'បញ្ចូលកំណត់ចំណាំរបស់អ្នកនៅទីនេះ...',
    },
    'farrki57': {
      'en': 'Create Note',
      'km': 'បង្កើតកំណត់ចំណាំ',
    },
  },
  // sidebar
  {
    'yg07zi4c': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
    '5s0d776i': {
      'en': 'Documents',
      'km': 'ឯកសារ',
    },
    'lbojdpxg': {
      'en': 'Document Flow',
      'km': 'លំហូរឯកសារ',
    },
    '9pjba90p': {
      'en': 'Reports',
      'km': 'របាយការណ៍',
    },
    '01nu9cy0': {
      'en': 'Settings',
      'km': 'ការកំណត់',
    },
  },
  // search_dialog
  {
    'jt9g5o8v': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'b3bd9y8w': {
      'en': 'Search',
      'km': 'ស្វែងរក',
    },
    'pw6kvl1f': {
      'en': 'Shortcuts',
      'km': 'ផ្លូវកាត់',
    },
    'gckukxjv': {
      'en': 'Find documents',
      'km': 'ស្វែងរកឯកសារ',
    },
    'zsq8vj02': {
      'en': 'Find folder',
      'km': 'ស្វែងរកថតឯកសារ',
    },
    'iqxwv326': {
      'en': 'New documents',
      'km': 'ឯកសារថ្មី',
    },
    's60yfg0g': {
      'en': 'New folder',
      'km': 'ថតឯកសារថ្មី',
    },
    'lwrh59bb': {
      'en': 'Recent Searches',
      'km': 'ការស្វែងរកថ្មីៗ',
    },
    'o6lqlfr1': {
      'en': 'Newport Financ',
      'km': 'Newport Financ',
    },
    '6zpaywwg': {
      'en': 'Harry Styles',
      'km': 'Harry Styles',
    },
  },
  // dropdownUser
  {
    'vb3kahb1': {
      'en': 'Right Click Options',
      'km': 'ចុចខាងស្ដាំលើជម្រើស',
    },
    'yz6wcv0m': {
      'en': 'Actions',
      'km': 'សកម្មភាព',
    },
    'mz2iod6l': {
      'en': 'Duplicate',
      'km': 'ស្ទួន',
    },
    'szliitc1': {
      'en': 'Save as Theme Style',
      'km': 'រក្សាទុកជារចនាប័ទ្មប្រធានបទ',
    },
    'w0o71p9r': {
      'en': 'Convert to Component',
      'km': 'បម្លែងទៅជាសមាសភាគ',
    },
    'pco5sp2j': {
      'en': 'Select Widget...',
      'km': 'ជ្រើសរើសធាតុក្រាហ្វិក...',
    },
    '2qlxk2ki': {
      'en': 'Column',
      'km': 'ជួរឈរ',
    },
    '6tszptxy': {
      'en': 'Wrap',
      'km': 'រុំ',
    },
    '4r3loug6': {
      'en': 'Column',
      'km': 'ជួរឈរ',
    },
    'f2xigm3a': {
      'en': 'RightClickMenu',
      'km': 'RightClickMenu',
    },
  },
  // cpSignFile-Yes
  {
    'lbz4rfnx': {
      'en': 'TextField',
      'km': 'វាលបញ្ចូលអត្ថបទ',
    },
  },
  // ComponentOptionDocuments
  {
    '9ahkzf4d': {
      'en': 'Sign',
      'km': 'ហត្ថលេខា',
    },
    'oeo9whls': {
      'en': 'Preview',
      'km': 'បើកមើលជាមុន',
    },
    'xy2cgvdw': {
      'en': 'Move to Trash',
      'km': 'ផ្លាស់ទៅធុងសំរាម',
    },
    'dogr63lg': {
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    'f67h2dk2': {
      'en': 'Add Comment',
      'km': 'បន្ថែមមតិ',
    },
    'ee1kiquw': {
      'en': 'Add New Version',
      'km': 'បន្ថែមជំនាន់ថ្មី',
    },
    'cqvt34p7': {
      'en': 'Download',
      'km': 'ទាញយក',
    },
    'laa7s77q': {
      'en': 'Get Link',
      'km': 'ទទួលតំណភ្ជាប់',
    },
    'rj3lurl5': {
      'en': 'Share',
      'km': 'ចែករំលែក',
    },
    'f8p3wr8g': {
      'en': 'File Information',
      'km': 'ព័ត៌មានឯកសារ',
    },
  },
  // ComponentPagination
  {
    'ohqic2yw': {
      'en': '1  /  5',
      'km': '១/៥',
    },
    'zqypqg1j': {
      'en': 'Show',
      'km': 'បង្ហាញ',
    },
    'y0rxjsn7': {
      'en': '10',
      'km': '១០',
    },
    'vifpggk3': {
      'en': '25',
      'km': '២៥',
    },
    '77x0os75': {
      'en': '50',
      'km': '៥០',
    },
    'v1gkl5ar': {
      'en': '100',
      'km': '១០០',
    },
    '7xtq4ak2': {
      'en': '10',
      'km': '១០',
    },
    'kf7fhe80': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
  },
  // ComponentsFilterHideShowTypeView
  {
    'eib19fx1': {
      'en': 'Filter',
      'km': 'តម្រង់រក',
    },
    'x2nnxxa7': {
      'en': 'Show/HideColumn',
      'km': 'បង្ហាញ/លាក់ជួរឈរ',
    },
    'cg45543o': {
      'en': 'ViewType',
      'km': 'ប្រភេទទិដ្ឋភាព',
    },
  },
  // ComponentTemplates
  {
    'ldh3qc5q': {
      'en': 'Imports',
      'km': 'ការទាញចូល',
    },
    '4x69pswp': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
  },
  // ComponentReport
  {
    '95gnnl98': {
      'en': 'Docs',
      'km': 'ឯកសារ',
    },
    'jzdq4ci5': {
      'en': 'Sheets',
      'km': 'តារាង',
    },
    'hiujwziu': {
      'en': 'Slides',
      'km': 'ស្លាយ',
    },
    '9s6jzjw2': {
      'en': 'Other',
      'km': 'ផ្សេងៗ',
    },
  },
  // ComponentAcivityDocuments
  {
    '9uzb84ff': {
      'en': 'Activity',
      'km': 'សកម្មភាព',
    },
    'yqfrq1zw': {
      'en': 'DocumentName :',
      'km': 'ឈ្មោះឯកសារ :',
    },
    '955zpoqm': {
      'en': 'Owned by : ',
      'km': 'ម្ចាស់កម្មសិទ្ធិ :',
    },
    'jxtmmla8': {
      'en': 'seanghai@oone.bz',
      'km': '',
    },
    'nhgqb0q2': {
      'en': 'Managing Director',
      'km': 'នាយកគ្រប់គ្រង',
    },
    '37l49f5a': {
      'en': 'From :',
      'km': 'អ្មកផ្ញើ :',
    },
    'g86v9eya': {
      'en': 'HR Department',
      'km': 'នាយកដ្ឋានធនធានមនុស្ស',
    },
    'exmhovzo': {
      'en': 'Submit Date :',
      'km': 'កាលបរិច្ឆេទដាក់ស្នើ :',
    },
    'lp2hnjbr': {
      'en': '-',
      'km': '-',
    },
    '24po7gss': {
      'en': 'វិន វណ្ណារ័ត្ន',
      'km': 'វិន វណ្ណារ័ត្ន',
    },
    '3b292oim': {
      'en': 'Todo : ',
      'km': 'ត្រូវធ្វើ៖ ',
    },
    'whzd78cj': {
      'en': 'Need to sign',
      'km': '',
    },
    'sff0tpgi': {
      'en': 'LastUpdate : ',
      'km': 'បច្ចុប្បន្នភាពចុងក្រោយ​៖',
    },
    'kzexnczf': {
      'en': '19/09/2024 12:24 PM',
      'km': '19/09/2024 ម៉ោង 12:24 យប់',
    },
    '01aw7gq1': {
      'en': 'ឌី ចិត្រា',
      'km': 'ឌី ចិត្រា',
    },
    'lo20cym6': {
      'en': 'Todo : ',
      'km': 'ត្រូវធ្វើ :',
    },
    'jorxhm9w': {
      'en': 'Need to Approve',
      'km': 'ត្រូវការចុះហត្ថលេខា',
    },
    'wd4g0x2v': {
      'en': 'LastUpdate : ',
      'km': 'បច្ចុប្បន្នភាពចុងក្រោយ :',
    },
    'ue5mbrf4': {
      'en': '19/09/2024 12:24 PM',
      'km': '19/09/2024 ម៉ោង 12:24 យប់',
    },
    '26rvnqzn': {
      'en': 'វិន វណ្ណារ័ត្ន',
      'km': 'penglay.thlang@oone.bz',
    },
    '4bp7ecn4': {
      'en': 'Todo : ',
      'km': 'ត្រូវធ្វើ :',
    },
    'ir4g3b3o': {
      'en': 'Need to sign',
      'km': 'ត្រូវការចុះហត្ថលេខា',
    },
    '2j9bcwdb': {
      'en': 'LastUpdate : ',
      'km': 'បច្ចុប្បន្នភាពចុងក្រោយ :',
    },
    'g2xlecvc': {
      'en': '19/09/2024 12:24 PM',
      'km': '19/09/2024 ម៉ោង 12:24 យប់',
    },
  },
  // ComponentColumFilter
  {
    '9ftz6fgn': {
      'en': '',
      'km': '',
    },
    'c20bk62j': {
      'en': 'Search more',
      'km': 'ស្វែងរកច្រើនទៀត',
    },
    '9i1ci2nu': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'vudm73k6': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'ksj4so93': {
      'en': 'Action',
      'km': 'សកម្មភាព',
    },
    'meef285e': {
      'en': 'Document Name',
      'km': 'ឈ្មោះឯកសារ',
    },
    '0shoa3db': {
      'en': 'Create By',
      'km': 'បង្កើតដោយ',
    },
    'ztpjhl6t': {
      'en': 'Recipients Email',
      'km': 'អ៊ីមែលអ្នកទទួល',
    },
    '2eeq4yzx': {
      'en': 'Recipients Name',
      'km': 'ឈ្មោះអ្នកទទួល',
    },
    'hv21mq32': {
      'en': 'Create Date',
      'km': 'បង្កើតកាលបរិច្ឆេទ',
    },
    'rw011tll': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
    'b1hn3mtw': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថត',
    },
    'jgayeo0s': {
      'en': 'Last Modified Date',
      'km': 'កាលបរិច្ឆេទកែប្រែចុងក្រោយ',
    },
    'lvkw4vmj': {
      'en': 'Document Type',
      'km': 'ប្រភេទឯកសារ',
    },
  },
  // FolderCard
  {
    'qfha7yxo': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថតផ្ទុកឯកសារ',
    },
    'ygfkpzm2': {
      'en': '2.3 GB',
      'km': '2.3 ជីកាបៃ',
    },
    'jdzxvh3v': {
      'en': '100 files',
      'km': '100 ឯកសារ',
    },
  },
  // ComponentDropDown
  {
    'rgaclvt6': {
      'en': 'Dropdown',
      'km': 'ទម្លាក់ចុះ',
    },
    'uejlrojw': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    '6c1uzwno': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'y7xsvwfv': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'f3jgtecm': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    '3ojvm2i6': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'zddugqdi': {
      'en': '',
      'km': '',
    },
    'yibt2005': {
      'en': 'Required',
      'km': 'ទាមទារ',
    },
    'jl0rokhp': {
      'en': 'Read   only',
      'km': 'អានតែប៉ុណ្ណោះ',
    },
    'ylcmut6z': {
      'en': 'Field name',
      'km': 'ឈ្មោះវាល',
    },
    'ybt0cn5h': {
      'en': '',
      'km': '',
    },
    'qhg1600x': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'u8d6ota3': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    'wrl8g575': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    '5yv6knst': {
      'en': '',
      'km': '',
    },
    'qtuubblv': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'sdkpsb4a': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    '7rn6s7ix': {
      'en': 'Formatting',
      'km': 'ការធ្វើទ្រង់ទ្រាយ',
    },
    'zivujuhv': {
      'en': 'Khmer OS',
      'km': 'ប្រព័ន្ធប្រតិបត្តិការខ្មែរ',
    },
    'oli45gt9': {
      'en': 'Batdombong',
      'km': 'បាត់ដំបង',
    },
    'zzsqldyg': {
      'en': 'doun penh',
      'km': 'ដូនពេញ',
    },
    '5e82lq1v': {
      'en': 'Select...',
      'km': 'ជ្រើសរើស...',
    },
    'tfemrpxw': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '2po1diuw': {
      'en': '8',
      'km': '៨',
    },
    'cm0wwj8g': {
      'en': '10',
      'km': '១០',
    },
    '1rvit7ps': {
      'en': '11',
      'km': '១១',
    },
    'j8rckdza': {
      'en': '12',
      'km': '១២',
    },
    'h449wyyn': {
      'en': '14',
      'km': '១៤',
    },
    'hv1ey5be': {
      'en': '16',
      'km': '១៦',
    },
    'e3afbfy8': {
      'en': '18',
      'km': '១៨',
    },
    'ppd89w5y': {
      'en': '20',
      'km': '២០',
    },
    'zaxoniy9': {
      'en': '22',
      'km': '២២',
    },
    'ddd1tkig': {
      'en': '24',
      'km': '២៤',
    },
    '8hc9obrl': {
      'en': '12',
      'km': '១២',
    },
    'd3vzr0wx': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '6gdmeedl': {
      'en': 'B',
      'km': 'ខ',
    },
    'c6qwbusf': {
      'en': '',
      'km': '',
    },
    'dq7zrg2u': {
      'en': '',
      'km': '',
    },
    '6aca27cl': {
      'en': 'Options',
      'km': 'ជម្រើស',
    },
    '6aoipuo8': {
      'en': 'Field in those options',
      'km': 'បញ្ចូលក្នុងជម្រើសទាំងនោះ',
    },
    'rffgb8i7': {
      'en': 'TextField',
      'km': 'វាលអត្ថបទ',
    },
    'z925ys66': {
      'en': 'Option 1',
      'km': 'ជម្រើសទី 1',
    },
    '6xwenl1a': {
      'en': 'TextField',
      'km': 'វាលអត្ថបទ',
    },
    'q1c8qzde': {
      'en': 'Option 2',
      'km': 'ជម្រើសទី 2',
    },
    'df74mwme': {
      'en': 'Add options in Bulk',
      'km': 'បន្ថែមជម្រើសក្នុងបរិមាណ',
    },
  },
  // ComponentFullName
  {
    'zj6bkrfu': {
      'en': 'Full Name',
      'km': 'ឈ្មោះពេញ',
    },
    'zqyzmdk5': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'u8hfxy2f': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'y5cfr17h': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'vyfizfem': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'fp5w8o81': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'pv2ejp84': {
      'en': '',
      'km': '',
    },
    '1jndx8n2': {
      'en': 'Field name',
      'km': 'ឈ្មោះវាល',
    },
    'kg9v13n4': {
      'en': 'Please enter your fullname',
      'km': 'សូមបញ្ចូលឈ្មោះពេញរបស់អ្នក។',
    },
    'tp7fut24': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'n7lnjc9x': {
      'en': 'fullname',
      'km': 'ឈ្មោះពេញ',
    },
    'zd0bbj1j': {
      'en': 'Format',
      'km': 'ទម្រង់',
    },
    'k9oel7ne': {
      'en': 'Full Name',
      'km': 'ឈ្មោះពេញ',
    },
    'fdebz4me': {
      'en': 'First Name',
      'km': 'ឈ្មោះដំបូង',
    },
    'rt0ukeeq': {
      'en': 'Last Name',
      'km': 'នាមត្រកូល',
    },
    'pnhawgxl': {
      'en': 'Full Name',
      'km': 'ឈ្មោះពេញ',
    },
    '37iukur9': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'uiejgumh': {
      'en': 'Formatting',
      'km': 'ការធ្វើទ្រង់ទ្រាយ',
    },
    'gvotj50j': {
      'en': 'Full Name',
      'km': 'ឈ្មោះពេញ',
    },
    '2hfux73h': {
      'en': 'First Name',
      'km': 'ឈ្មោះដំបូង',
    },
    'i4s3usu0': {
      'en': 'Last Name',
      'km': 'នាមត្រកូល',
    },
    'ujfdjpsq': {
      'en': 'Roboto',
      'km': 'មនុស្សយន្ត',
    },
    'ealvlw1t': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'q1yy6lv3': {
      'en': '8',
      'km': '៨',
    },
    '2n7x8im7': {
      'en': '9',
      'km': '៩',
    },
    'qqtreu26': {
      'en': '10',
      'km': '១០',
    },
    'ri72yw9y': {
      'en': '12',
      'km': '១២',
    },
    'ob5by8k6': {
      'en': '13',
      'km': '១៣',
    },
    'wxz7p63n': {
      'en': '14',
      'km': '១៤',
    },
    'oc7sreqq': {
      'en': '12',
      'km': '១២',
    },
    '7zapov5s': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'yjqi8q4d': {
      'en': 'B',
      'km': 'ខ',
    },
    'h05pj4m3': {
      'en': '',
      'km': '',
    },
    'dh4ds7i8': {
      'en': '',
      'km': '',
    },
    'r8nde0wx': {
      'en': 'Alignment',
      'km': 'ការតម្រឹម',
    },
    'shqlsl1l': {
      'en': '',
      'km': '',
    },
    'xqrajh28': {
      'en': '',
      'km': '',
    },
    'vi7umwmx': {
      'en': '',
      'km': '',
    },
    'enl4iydz': {
      'en': 'Fixed width',
      'km': 'ទទឹងថេរ',
    },
    'jh134tld': {
      'en': 'Mandatory field',
      'km': 'វាលចាំបាច់',
    },
    'hdovw6pg': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    '8386ywlu': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
  },
  // ComponentSignature
  {
    'bwug7nzz': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    'cxh7vsf5': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    '5amxubmy': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'mk24di0j': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    '6h292q3k': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'pvnak2e7': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'iksawtin': {
      'en': '',
      'km': '',
    },
    'nahn86tk': {
      'en': 'Required',
      'km': 'ទាមទារ',
    },
    'whsryslu': {
      'en': 'Resizable',
      'km': 'អាចប្តូរទំហំបាន។',
    },
    'rwrfm3ts': {
      'en': 'Movable',
      'km': 'អាចចល័តបាន។',
    },
    't4yflg2c': {
      'en': 'Field name',
      'km': 'បំពេញឈ្មោះ',
    },
    'zwj4ggl9': {
      'en': '',
      'km': '',
    },
    'fml7vtmh': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'cehix64g': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    'otxhthqv': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'oo5pdyhl': {
      'en': '',
      'km': '',
    },
    'eeu6q9zh': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '4o1z4yb8': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
  },
  // cpSign-Private
  {
    '6hortblr': {
      'en': 'Private Note',
      'km': 'កំណត់ចំណាំឯកជន',
    },
    'pn7vv91d': {
      'en': '',
      'km': '',
    },
    '5bcxogcz': {
      'en': '',
      'km': '',
    },
    '1f72rvgj': {
      'en': 'Authentication',
      'km': 'ការផ្ទៀងផ្ទាត់',
    },
    '8is1yw7x': {
      'en': 'Authentication Type',
      'km': 'ប្រភេទការផ្ទៀងផ្ទាត់',
    },
    'vaallem0': {
      'en': 'None',
      'km': 'គ្មាន',
    },
    '1cjirekh': {
      'en': 'None',
      'km': 'គ្មាន',
    },
    '77rkwks0': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    'wz6mwjfs': {
      'en': 'SMS',
      'km': 'សារ SMS',
    },
    '7g814d34': {
      'en': 'Custom Code',
      'km': 'លេខកូដផ្ទាល់ខ្លួន',
    },
    'fzf6pxh3': {
      'en': '',
      'km': '',
    },
    'j270fu85': {
      'en': '',
      'km': '',
    },
    'qa0etk5w': {
      'en': 'Phone Number',
      'km': 'លេខទូរស័ព្ទ',
    },
    'jtbja6e2': {
      'en': '+855',
      'km': '+៨៥៥',
    },
    'pb4d2l6f': {
      'en': 'Cambodia(+855)',
      'km': 'កម្ពុជា(+៨៥៥)',
    },
    '8718io08': {
      'en': 'United State(+1)',
      'km': 'សហរដ្ឋអាមេរិក (+1)',
    },
    '0t8b4ne9': {
      'en': 'Thailand(+66)',
      'km': 'ថៃ (+៦៦)',
    },
    'tewqcedu': {
      'en': 'Vietnam(+84)',
      'km': 'វៀតណាម (+84)',
    },
    '8u6l6f8c': {
      'en': 'Laos(+856)',
      'km': 'ឡាវ(+៨៥៦)',
    },
    'ed1rsqjl': {
      'en': 'Mongolia(+976)',
      'km': 'ម៉ុងហ្គោលី (+៩៧៦)',
    },
    'tnj4masi': {
      'en': '',
      'km': '',
    },
    '22rr42uf': {
      'en': '',
      'km': '',
    },
    '4uspagd6': {
      'en': '',
      'km': '',
    },
    't62arhbj': {
      'en': '31 528 222 2',
      'km': '៣១ ៥២៨ ២២២ ២',
    },
    'sqkpd25k': {
      'en': 'Custom Code',
      'km': 'លេខកូដផ្ទាល់ខ្លួន',
    },
    '4fxd4jnq': {
      'en': '',
      'km': '',
    },
    'hb8mn3nj': {
      'en': '12AB',
      'km': '12AB',
    },
    'cw5h7kvq': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'q3n0cu8p': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentInDropDown
  {
    'as0incqb': {
      'en': 'Add options in bulk to the drropdown fueld',
      'km': 'បន្ថែម​ជម្រើស​ជា​ច្រើន​ទៅ​នឹង​ការ​ទម្លាក់​ចុះ​ដែល​បាន​ជំរុញ',
    },
    'j8ktu2a2': {
      'en': 'TextField',
      'km': 'វាលអត្ថបទ',
    },
    '0ws3137x': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'xovybt5q': {
      'en': 'or',
      'km': 'ឬ',
    },
    'chlp3vay': {
      'en': 'Add option',
      'km': 'បន្ថែមជម្រើស',
    },
  },
  // ComponentSign-InboxAction
  {
    'leq0q3mi': {
      'en': 'Reply',
      'km': 'ឆ្លើយតប',
    },
    '3mk5q6te': {
      'en': 'Sent Out',
      'km': 'បញ្ជូនបន្ត',
    },
    '2odhgm6m': {
      'en': 'Make Copy',
      'km': 'ធ្វើការចម្លង',
    },
    'lrlyzkei': {
      'en': 'Mark As Read',
      'km': 'សម្គាល់ថាបានអាន',
    },
    'lklz9xlt': {
      'en': 'Priority',
      'km': 'សំខាន់',
    },
    'gpyzgkts': {
      'en': 'Archive',
      'km': 'ឯកសារសំខាន់',
    },
    'q85wnt4i': {
      'en': 'Time Line',
      'km': 'កាលកំណត់',
    },
    '0wmemen2': {
      'en': 'Download',
      'km': 'ទាញយក',
    },
    '7qmukbcd': {
      'en': 'More Actions...',
      'km': 'មុខងារច្រើនទៀត...',
    },
    'x4g522ji': {
      'en': 'Sign',
      'km': 'ហត្ថលេខា',
    },
    'v1kf27fn': {
      'en': 'Approve',
      'km': 'យល់ព្រម',
    },
    'sj06nxhr': {
      'en': 'Reject',
      'km': 'បដិសេធ',
    },
    '5lff28vl': {
      'en': 'Assign Others',
      'km': 'ចាត់តាំងអ្នកដទៃ',
    },
    'g1jrz00n': {
      'en': 'Complete Document',
      'km': 'បញ្ចប់ដំណើរការឯកសារ',
    },
    'icjdfogb': {
      'en': 'Void Document',
      'km': 'ឯកសារឥតបានការ',
    },
    'ueu4h4et': {
      'en': 'Trash',
      'km': 'ធុងសំរាម',
    },
    'j4qgdmf7': {
      'en': 'Undo to Draft',
      'km': 'ត្រឡប់ទៅព្រាងទុក',
    },
    '5lqswhd2': {
      'en': 'Delete Forever',
      'km': 'លុបរហូត',
    },
  },
  // HGFeatures
  {
    'o2x2seho': {
      'en': 'Reliability & Stability',
      'km': 'ភាពជឿជាក់ និងស្ថេរភាព',
    },
    's0dfziju': {
      'en':
          'Focused on zero down time service serve – bring safe feel to our client.',
      'km':
          'ផ្តោតលើសេវាកម្មគ្មានពេលចុះក្រោម - នាំមកនូវអារម្មណ៍សុវត្ថិភាពដល់អតិថិជនរបស់យើង។',
    },
    'mm73ruut': {
      'en': 'Security',
      'km': 'សន្តិសុខ',
    },
    '9b0lylxi': {
      'en':
          'We treat security as a first class citizen at every step: design, architecture, development, and operations.',
      'km':
          'យើងចាត់ទុកសន្តិសុខជាពលរដ្ឋលំដាប់ទីមួយនៅគ្រប់ជំហាន៖ ការរចនា ស្ថាបត្យកម្ម ការអភិវឌ្ឍន៍ និងប្រតិបត្តិការ។',
    },
    'ijrb8pwo': {
      'en': 'Design',
      'km': 'រចនា',
    },
    'f1gafm4q': {
      'en':
          'Turn your ideas into outstanding digital products. Keeping our client satisfied, as it is responsible for what they see and interact with.',
      'km':
          'ប្រែក្លាយគំនិតរបស់អ្នកទៅជាផលិតផលឌីជីថលដ៏អស្ចារ្យ។ ការរក្សាអតិថិជនរបស់យើងឱ្យពេញចិត្ត ដោយសារវាមានទំនួលខុសត្រូវចំពោះអ្វីដែលពួកគេឃើញ និងធ្វើអន្តរកម្មជាមួយ។',
    },
  },
  // ComponentSignatureDetail
  {
    'wvx0ivvt': {
      'en': 'Upload',
      'km': 'បង្ហោះចូល',
    },
    'nyfgrvhs': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    'ehlcezve': {
      'en': 'Drag and drop files here or click to select files',
      'km': 'អូស និងទម្លាក់ឯកសារនៅទីនេះ ឬចុចដើម្បីជ្រើសរើសឯកសារ',
    },
    '9172pzea': {
      'en': 'Ok',
      'km': 'យល់ព្រម',
    },
    'o2hnsxhs': {
      'en': 'Draw',
      'km': 'គូរ',
    },
    'v7aitrzu': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    'z50jrytb': {
      'en': 'Clear',
      'km': 'ច្បាស់',
    },
    'ldrm8inc': {
      'en': 'Ok',
      'km': 'យល់ព្រម',
    },
    'yx1u61cu': {
      'en': 'Type',
      'km': 'ប្រភេទ',
    },
    'u6u8oalj': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    'azf3dp5k': {
      'en': '',
      'km': '',
    },
    'oooboox8': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'pq3mumum': {
      'en': 'Phuong Sovathvong',
      'km': 'Phuong Sovathvong',
    },
    '42cqlj77': {
      'en': '',
      'km': '',
    },
    'f314y4uj': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '5yhf98oc': {
      'en': 'Phuong Sovathvong',
      'km': 'Phuong Sovathvong',
    },
    'qx1jcr34': {
      'en': '',
      'km': '',
    },
    'wvwtihfu': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '5b475uxw': {
      'en': 'Phuong Sovathvong',
      'km': 'Phuong Sovathvong',
    },
    'r8a4j0br': {
      'en': '',
      'km': '',
    },
    'f46pmabm': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'qa0uumfe': {
      'en': 'Phuong Sovathvong',
      'km': 'Phuong Sovathvong',
    },
    'p8nhtaum': {
      'en': 'Ok',
      'km': 'យល់ព្រម',
    },
  },
  // ComponentSign-BatchInboxAction
  {
    '4ve1okfb': {
      'en': 'Reply',
      'km': 'ឆ្លើយតប',
    },
    'fecci0c1': {
      'en': 'Pin',
      'km': 'ខ្ទាស់',
    },
    'ktolzqex': {
      'en': 'Forward',
      'km': 'ទៅមុខ',
    },
    'kvvir6ey': {
      'en': 'Mark All as Read',
      'km': 'សម្គាល់ទាំងអស់ថាបានអាន',
    },
    '15p4iygl': {
      'en': 'Archive All',
      'km': 'បណ្ណសារទាំងអស់',
    },
    '7v7bcxxz': {
      'en': 'Download',
      'km': 'ទាញយក',
    },
    'tt3nxr6h': {
      'en': 'Sign',
      'km': 'សញ្ញា',
    },
    'rxkxtu0h': {
      'en': 'Approve',
      'km': 'យល់ព្រម',
    },
    'nk4pfs5s': {
      'en': 'Timeline',
      'km': 'បន្ទាត់ពេលវេលា',
    },
    'bw1lmi6u': {
      'en': 'Copy',
      'km': 'ចម្លង',
    },
    'kla65mw4': {
      'en': 'Trash All',
      'km': 'លុបទាំងអស់',
    },
  },
  // HGWehave
  {
    '2klhssko': {
      'en': 'Home',
      'km': 'ទំព័រដើម',
    },
    'a6dr6jjk': {
      'en': 'Document',
      'km': 'ឯកសារ',
    },
    'socpkv19': {
      'en': 'Sign',
      'km': 'ហត្ថលេខា',
    },
    '7torjdqe': {
      'en': 'Report',
      'km': 'រាយការណ៍',
    },
    'wutwklwd': {
      'en': 'Setting',
      'km': 'ការកំណត់',
    },
  },
  // Info
  {
    'x7nwbz6i': {
      'en': 'INFO',
      'km': 'ព័ត៌មាន',
    },
    'idhvbtu0': {
      'en': 'Home :',
      'km': 'ទំព័រដើម៖',
    },
    'lyqdeign': {
      'en':
          'is a section serves as the main dashboard and provides a quick overview of your recent activities, file management, ',
      'km':
          'គឺជាផ្នែកមួយបម្រើជាផ្ទាំងគ្រប់គ្រងសំខាន់ និងផ្តល់នូវទិដ្ឋភាពទូទៅរហ័សនៃសកម្មភាពថ្មីៗរបស់អ្នក ការគ្រប់គ្រងឯកសារ។',
    },
    '2ms44yuw': {
      'en': '',
      'km': '',
    },
    'c1b1ytr8': {
      'en':
          'and document status. Below is a detailed explanation of what you’ll find on the Home screen.',
      'km':
          'និងស្ថានភាពឯកសារ។ ខាងក្រោមនេះគឺជាការពន្យល់លម្អិតអំពីអ្វីដែលអ្នកនឹងរកឃើញនៅលើអេក្រង់ដើម។',
    },
    'ta95xva7': {
      'en': '',
      'km': '',
    },
  },
  // ComponentFilterDocuments
  {
    't4sngjft': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'enbqf8d8': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'ojn0rdsb': {
      'en': 'Search All',
      'km': 'ស្វែងរកទាំងអស់',
    },
    'azvxdq8b': {
      'en': 'My Documents',
      'km': 'ឯកសាររបស់ខ្ញុំ',
    },
    '4v5qup4c': {
      'en': 'Shared with Me',
      'km': 'ចែករំលែក',
    },
    'p177hjbk': {
      'en': 'Filter By',
      'km': 'តម្រងរកតាម',
    },
    'uprdqxcv': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'v2dbky0w': {
      'en': 'Search All',
      'km': 'ស្វែងរកទាំងអស់',
    },
    '40y6j5yz': {
      'en': 'My Documents',
      'km': 'ឯកសាររបស់ខ្ញុំ',
    },
    'htwd9xnx': {
      'en': 'Shared with Me',
      'km': 'ចែករំលែក',
    },
    '5qpvo7nt': {
      'en': 'Serach By',
      'km': 'ស្វែងរកតាមរយះ',
    },
    'kppuhx5n': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'q9spu3l5': {
      'en': 'DD/mm/yyyy (22/03/2024)',
      'km': 'DD/mm/yyyy (22/03/2024)',
    },
    '2u2pu030': {
      'en': 'Custom',
      'km': 'ផ្ទាល់ខ្លួន',
    },
    '0bxddrrq': {
      'en': 'DD/mm/yyyy (22/03/2024)',
      'km': 'ថ្ងៃ/ខែ/ឆ្នាំ (22/03/2024)',
    },
    'ntsdjsiq': {
      'en': 'yy/MM/dd (24/03/22)',
      'km': 'ឆ្នាំ/ខែ/ថ្ងៃ (24/03/22)',
    },
    'vzfd85qx': {
      'en': 'MM/dd/yy (03/22/24)',
      'km': 'ខែ/ថ្ងៃ/ឆ្នាំ (03/22/24)',
    },
    'ivli8o70': {
      'en': 'M/d/yy (3/22/24)',
      'km': 'ខែ/ថ្ងៃ/ឆ្នាំ (3/22/24)',
    },
    '0p0c4vlw': {
      'en': 'MM-dd-yy  (03-22-24)',
      'km': 'ខែ-ថ្ងៃ-ឆ្នាំ (03-22-24)',
    },
    'eubo5z6z': {
      'en': 'Select...',
      'km': 'ជ្រើសរើស...',
    },
    't7gzjfpt': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
  },
  // profile_dialog
  {
    'x2guxj3i': {
      'en': 'Switch Account',
      'km': 'ប្តូរគណនី',
    },
    'ntk75det': {
      'en': 'Sok Sao',
      'km': 'Sok Sao',
    },
    'qz6380yv': {
      'en': 'Add Account',
      'km': 'បន្ថែមគណនី',
    },
    'd2s9mgfb': {
      'en': 'Settings',
      'km': 'ការកំណត់',
    },
    'nmfvsy50': {
      'en': 'Light Mode',
      'km': 'ភ្លឺ',
    },
    'id26imzq': {
      'en': 'Dark Mode',
      'km': 'ងងឹត',
    },
    'v505m4n5': {
      'en': 'Log out',
      'km': 'ចាកចេញ',
    },
  },
  // ListView
  {
    '8wscmett': {
      'en':
          'The Status Tracker is a circular chart that displays the distribution of tasks or document statuses over the past month.',
      'km':
          'កម្មវិធីតាមដានស្ថានភាពគឺជាតារាងរាងជារង្វង់ដែលបង្ហាញការចែកចាយកិច្ចការ ឬស្ថានភាពឯកសារក្នុងខែកន្លងមក។',
    },
    'iicjlcwy': {
      'en':
          'Each segment of the chart is color-coded and corresponds to a specific status or activity.',
      'km':
          'ផ្នែកនីមួយៗនៃគំនូសតាងត្រូវបានសរសេរកូដពណ៌ ហើយត្រូវគ្នាទៅនឹងស្ថានភាព ឬសកម្មភាពជាក់លាក់មួយ។',
    },
    'an0c1qjp': {
      'en':
          'It visually represents the percentage or amount of work associated with each status.\n',
      'km':
          'វាតំណាងឱ្យភាគរយ ឬបរិមាណនៃការងារដែលភ្ជាប់ជាមួយស្ថានភាពនីមួយៗដោយមើលឃើញ។',
    },
  },
  // ComponentCardViewReport
  {
    'f4l36299': {
      'en': 'Reports Staff of 2024',
      'km': 'របាយការណ៍បុគ្គលិកឆ្នាំ 2024',
    },
    'xlxxii8v': {
      'en': 'In folder E-Power',
      'km': 'នៅក្នុងថត E-Power',
    },
    'jtxrrkgw': {
      'en': 'Rady Peterson',
      'km': 'Rady Peterson',
    },
    '3gbzt7gu': {
      'en': 'seanghai.hin@oone.bz',
      'km': 'seanghai.hin@oone.bz',
    },
    'n3xc3qvs': {
      'en': 'seanhai.hin',
      'km': 'seanhai.hin',
    },
    'w0sm3671': {
      'en': '12 Aug 2024',
      'km': 'ថ្ងៃទី 12 ខែសីហា ឆ្នាំ 2024',
    },
    'broxe0jd': {
      'en': 'Priority',
      'km': 'អាទិភាព',
    },
  },
  // ComponentImportFromCloud
  {
    'rpwfphwm': {
      'en': 'Dropbox',
      'km': 'Dropbox',
    },
    'ya8henac': {
      'en': 'Google Drive',
      'km': 'Google Drive',
    },
    'v1izw0or': {
      'en': 'One Drive',
      'km': 'One Drive',
    },
  },
  // cpSign-AddBatchEmail
  {
    'qkbzioej': {
      'en': 'Batch Email',
      'km': 'អ៊ីមែលបាច់',
    },
    'x6td0r9a': {
      'en': 'Download our tamplate',
      'km': 'ទាញយក គំរូ របស់យើង។',
    },
    '72rkphdl': {
      'en': 'Template',
      'km': 'គំរូ',
    },
    'md8w5o8n': {
      'en': 'Drag and drop files here or click to select files',
      'km': 'អូស និងទម្លាក់ឯកសារនៅទីនេះ ឬចុចដើម្បីជ្រើសរើសឯកសារ',
    },
    'd285vmqa': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    '2ib4kciv': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    'ips0o1vw': {
      'en': 'Private Note',
      'km': 'កំណត់ចំណាំឯកជន',
    },
    'rq1va3qt': {
      'en': '1',
      'km': '១',
    },
    'oa2qewyv': {
      'en': 'penglay.thlang@oone.bz',
      'km': 'penglay.thlang@oone.bz',
    },
    'm6eghung': {
      'en': 'Thlang Penglay',
      'km': 'Thlang Penglay',
    },
    'if4x7z9h': {
      'en': 'Thlang Penglay',
      'km': 'Thlang Penglay',
    },
    'taczw3q0': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'jrogu02l': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentAttachment
  {
    'gxe5rt6x': {
      'en': 'Attachment',
      'km': 'ឯកសារភ្ជាប់',
    },
    'nsw9p9nn': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'akv6atey': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'tu9euym5': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    '9nqur5b6': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'uiylf41r': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'ui0602ti': {
      'en': '',
      'km': '',
    },
    '7zttmve5': {
      'en': 'Required',
      'km': 'ទាមទារ',
    },
    'qaf6fat1': {
      'en': 'Field name',
      'km': 'បំពេញឈ្មោះ',
    },
    'kuvsqlvj': {
      'en': '',
      'km': '',
    },
    '1120wr6w': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'rxqdjm3v': {
      'en': 'Please in put full name...',
      'km': 'សូមដាក់ឈ្មោះពេញ...',
    },
    'ipp3ytv0': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'hwwzb95c': {
      'en': '',
      'km': '',
    },
    'wp25275n': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '0h6a9s0n': {
      'en': 'Attachment',
      'km': 'ឯកសារភ្ជាប់',
    },
    'ksejswn4': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'igdska65': {
      'en': '',
      'km': '',
    },
    'uuqmo0eq': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '6tdch0au': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
  },
  // NavigateBackPageHeader
  {
    '8hg594rv': {
      'en': 'Search',
      'km': 'ស្វែងរក',
    },
    'rwtaxhmb': {
      'en': 'Notification',
      'km': 'ការជូនដំណឹង',
    },
    'moz7cl4j': {
      'en': 'FAQ',
      'km': 'សំណួរគេសួរញឹកញាប់',
    },
  },
  // ComponentEmail
  {
    'twu5ocpy': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    'wjzlomg1': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'pyt5dxc8': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'opjbbnmb': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'f34egk3g': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    '5bfd9f45': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    '7gs3ggwk': {
      'en': '',
      'km': '',
    },
    'sv1k6k5y': {
      'en': 'Fixed width',
      'km': 'ទទឹងថេរ',
    },
    '1gm7i41k': {
      'en': 'Field name',
      'km': 'បំពេញឈ្មោះ',
    },
    'qkw2yyo3': {
      'en': '',
      'km': '',
    },
    'l24sc5ca': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'zzwf5osp': {
      'en': 'Please input full name...',
      'km': 'សូមបញ្ចូលឈ្មោះពេញ...',
    },
    'i9ojo759': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'dijlkmx7': {
      'en': '',
      'km': '',
    },
    '8p3hjzfd': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'sxtco7ic': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    'xpjrohx4': {
      'en': 'Formatting',
      'km': 'ការធ្វើទ្រង់ទ្រាយ',
    },
    'qgdwwijx': {
      'en': 'Khmer OS',
      'km': 'Khmer OS',
    },
    'vb8pi8z5': {
      'en': 'Batdombong',
      'km': 'Batdombong',
    },
    'u5q6c0jm': {
      'en': 'doun penh',
      'km': 'doun penh',
    },
    '79ia9qwq': {
      'en': 'Select...',
      'km': 'ជ្រើសរើស...',
    },
    'sicq6ocm': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'zav8yr8p': {
      'en': '8',
      'km': '៨',
    },
    'qbp4iyhz': {
      'en': '10',
      'km': '១០',
    },
    'dr7r8u46': {
      'en': '11',
      'km': '១១',
    },
    '6pigyyjr': {
      'en': '12',
      'km': '១២',
    },
    'g4du5d1d': {
      'en': '14',
      'km': '១៤',
    },
    's6qwaulk': {
      'en': '16',
      'km': '១៦',
    },
    'ff7vfnid': {
      'en': '18',
      'km': '១៨',
    },
    '6cob1vzb': {
      'en': '20',
      'km': '២០',
    },
    'mobfefjt': {
      'en': '22',
      'km': '២២',
    },
    '9urcldbf': {
      'en': '24',
      'km': '២៤',
    },
    'gpegukfx': {
      'en': '12',
      'km': '១២',
    },
    'hxfki9de': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'fi3crimt': {
      'en': 'B',
      'km': 'ខ',
    },
    '735cb777': {
      'en': '',
      'km': '',
    },
    'l4zrlk99': {
      'en': '',
      'km': '',
    },
    'ry6skmp6': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    '00qyt8bc': {
      'en': '',
      'km': '',
    },
    'aa2bd3ud': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    's38x72ip': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
  },
  // PageHeader
  {
    'fjdprc4d': {
      'en': 'Search',
      'km': 'ស្វែងរក',
    },
    'khh2x9ps': {
      'en': 'Notification',
      'km': 'សេចក្តីជូនដំណឹង',
    },
    'zk9s8orw': {
      'en': 'FAQ',
      'km': 'សំណួរសួរញឹកញាប់',
    },
  },
  // ComponentPhone
  {
    'gjpp5tqh': {
      'en': 'Phone',
      'km': 'ទូរស័ព្ទ',
    },
    'yg2uomdy': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    't1d6thbi': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'l3mgm5vl': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    '0lg4p7xv': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'b1t9xl2p': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'j56cmtjo': {
      'en': '',
      'km': '',
    },
    'mg1jq5xs': {
      'en': 'Fixed width',
      'km': 'ទទឹងថេរ',
    },
    '63trcr0f': {
      'en': 'Field name',
      'km': 'ឈ្មោះវាល',
    },
    's153ioxd': {
      'en': '',
      'km': '',
    },
    'rs44zlyp': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'o6jxhfys': {
      'en': 'Please in put full name...',
      'km': 'សូមដាក់ឈ្មោះពេញ...',
    },
    'f0rwe5y5': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'wg5pwivm': {
      'en': '',
      'km': '',
    },
    '0kacqixz': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'nuiwzeae': {
      'en': 'Phone',
      'km': 'ទូរស័ព្ទ',
    },
    'uyfgbfs9': {
      'en': 'Formatting',
      'km': 'ការធ្វើទ្រង់ទ្រាយ',
    },
    'rdeufoc1': {
      'en': 'Khmer OS',
      'km': 'ប្រព័ន្ធប្រតិបត្តិការខ្មែរ',
    },
    'hzpv4v36': {
      'en': 'Batdombong',
      'km': 'បាត់ដំបង',
    },
    'rqo4sleg': {
      'en': 'doun penh',
      'km': 'ដូនពេញ',
    },
    '02p9pwc9': {
      'en': 'Select...',
      'km': 'ជ្រើសរើស...',
    },
    'nlull1rf': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'l1xchwdq': {
      'en': '8',
      'km': '៨',
    },
    'sabh8n95': {
      'en': '10',
      'km': '១០',
    },
    'vbjzpocr': {
      'en': '11',
      'km': '១១',
    },
    'mqmhdbke': {
      'en': '12',
      'km': '១២',
    },
    '9lcu2nbz': {
      'en': '14',
      'km': '១៤',
    },
    'j4q2sj4c': {
      'en': '16',
      'km': '១៦',
    },
    'xs9d8iy1': {
      'en': '18',
      'km': '១៨',
    },
    's922ln69': {
      'en': '20',
      'km': '២០',
    },
    '2pzk15s7': {
      'en': '22',
      'km': '២២',
    },
    'lgtgvisq': {
      'en': '24',
      'km': '២៤',
    },
    'xq6n00wk': {
      'en': '12',
      'km': '១២',
    },
    'f161gx57': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '121b97sb': {
      'en': 'B',
      'km': 'ខ',
    },
    'jir8uxyz': {
      'en': '',
      'km': '',
    },
    '1z7tagd3': {
      'en': '',
      'km': '',
    },
    '0jks79si': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'bj696whx': {
      'en': '',
      'km': '',
    },
    'tokf5qal': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'gmik7wl0': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
  },
  // ComponentCompany
  {
    's5m3neeo': {
      'en': 'Company',
      'km': 'ក្រុមហ៊ុន',
    },
    'op6n7tse': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'ltm4ms1o': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'gub68d3u': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'ql4utr9w': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'h3dgpk1o': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'nduugv6e': {
      'en': '',
      'km': '',
    },
    'tgw9nbq5': {
      'en': 'Fixed width',
      'km': 'ទទឹងថេរ',
    },
    'mfw5jrcz': {
      'en': 'Field name',
      'km': 'ឈ្មោះវាល',
    },
    '2387wjp5': {
      'en': '',
      'km': '',
    },
    'stp49l3j': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '1p2aollh': {
      'en': 'Please in put company name...',
      'km': 'សូមដាក់ឈ្មោះក្រុមហ៊ុន...',
    },
    '9upq4ut0': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'zm20ak62': {
      'en': '',
      'km': '',
    },
    'j9sd6m3n': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '2cup6mmj': {
      'en': 'Company',
      'km': 'ក្រុមហ៊ុន',
    },
    'ri1o9ib0': {
      'en': 'Formatting',
      'km': 'ការធ្វើទ្រង់ទ្រាយ',
    },
    'i2h2ui8j': {
      'en': 'Khmer OS',
      'km': 'ប្រព័ន្ធប្រតិបត្តិការខ្មែរ',
    },
    'sx9w2gnf': {
      'en': 'Batdombong',
      'km': 'បាត់ដំបង',
    },
    'pu2mr038': {
      'en': 'doun penh',
      'km': 'ដូនពេញ',
    },
    'a8azx351': {
      'en': 'Select...',
      'km': 'ជ្រើសរើស...',
    },
    'ab33kihc': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '0oidfs7j': {
      'en': '8',
      'km': '៨',
    },
    'l94kyb6b': {
      'en': '10',
      'km': '១០',
    },
    '2mrw30i3': {
      'en': '11',
      'km': '១១',
    },
    '1pe2pon3': {
      'en': '12',
      'km': '១២',
    },
    'eve6z4sx': {
      'en': '14',
      'km': '១៤',
    },
    'c13v5q67': {
      'en': '16',
      'km': '១៦',
    },
    'bujc9bhj': {
      'en': '18',
      'km': '១៨',
    },
    '3iktm7vx': {
      'en': '20',
      'km': '២០',
    },
    '5icis55x': {
      'en': '22',
      'km': '២២',
    },
    '0lkigxbi': {
      'en': '24',
      'km': '២៤',
    },
    'xvp1sykh': {
      'en': '12',
      'km': '១២',
    },
    'dzu00ygj': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '10x3o2sg': {
      'en': 'B',
      'km': 'ខ',
    },
    '95n1xz3a': {
      'en': '',
      'km': '',
    },
    '1y4xxeyr': {
      'en': '',
      'km': '',
    },
    'poxxw69g': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'rkhhzc4s': {
      'en': '',
      'km': '',
    },
    'hxavyj3u': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    't8z7csnj': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
  },
  // ComponentEmailDetail
  {
    '8vtvq0zk': {
      'en': '',
      'km': '',
    },
    'ws5cnad1': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
  },
  // ComponentShare
  {
    'xgg1swdu': {
      'en': 'Share \"Report Staff of 2024\"',
      'km': 'ចែករំលែក \"របាយការណ៍បុគ្គលិកឆ្នាំ 2024\"',
    },
    'ttb340l7': {
      'en': 'Share With User',
      'km': 'ចែករំលែកជាមួយអ្នកប្រើប្រាស់',
    },
    '88glep30': {
      'en': '',
      'km': '',
    },
    'vn86a29c': {
      'en': 'Add User Or Group ',
      'km': 'បន្ថែមអ្នកប្រើប្រាស់ ឬក្រុម',
    },
    'ynhkthwe': {
      'en': 'User ',
      'km': 'អ្នកប្រើប្រាស់',
    },
    'vjsl8bkz': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    '8pi5wyvq': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    '0ijhsg7e': {
      'en': 'View',
      'km': 'មើល',
    },
    '4xllsft2': {
      'en': 'View',
      'km': 'មើល',
    },
    'gwe8lmze': {
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    '61ev8t01': {
      'en': 'Comment',
      'km': 'មតិយោបល់',
    },
    'w84jql62': {
      'en': 'Remove',
      'km': 'ដកចេញ',
    },
    'vzmf68k9': {
      'en': '',
      'km': '',
    },
    'ezr2ygl5': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'x9eafmwb': {
      'en': 'seanghai@oone.bz',
      'km': 'seanghai@oone.bz',
    },
    'xe7j2fca': {
      'en': 'Admin',
      'km': 'អ្នកគ្រប់គ្រង',
    },
    'vejxxg2t': {
      'en': 'View',
      'km': 'មើល',
    },
    '8t5vfsga': {
      'en': 'View',
      'km': 'មើល',
    },
    't7uhx07t': {
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    'bhxtliay': {
      'en': 'Comment',
      'km': 'មតិយោបល់',
    },
    'c1w9nz85': {
      'en': 'Remove',
      'km': 'ដកចេញ',
    },
    'eh48d8lu': {
      'en': '',
      'km': '',
    },
    'jcnf3jyf': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'imxjqp77': {
      'en': 'Share With Link',
      'km': 'ចែករំលែកជាមួយតំណភ្ជាប់',
    },
    'ltpyeafb': {
      'en': 'Public',
      'km': 'សាធារណៈ',
    },
    'mkfjzryz': {
      'en': 'Internal',
      'km': 'ផ្ទៃក្នុង',
    },
    'l6sh0luc': {
      'en': 'Public',
      'km': 'សាធារណៈ',
    },
    'tvsywitl': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'xuh058ui': {
      'en': 'Anyone on the Internet with the link can edit',
      'km': 'អ្នកណាក៏ចូល...',
    },
    'hzftew4c': {
      'en': 'View',
      'km': 'មើល',
    },
    'x3k6czqm': {
      'en': 'View',
      'km': 'មើល',
    },
    'ne86wkw7': {
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    'z614bhwm': {
      'en': 'Comment',
      'km': 'មតិយោបល់',
    },
    'sl9bma59': {
      'en': '',
      'km': '',
    },
    'qcc528h5': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'ktrp00n7': {
      'en': 'Copy',
      'km': 'ចម្លង',
    },
    'e6j3f0lp': {
      'en': 'Done',
      'km': 'រួចរាល់',
    },
  },
  // cpSign-AddTags
  {
    's9i2h8p2': {
      'en': 'Create New Tags',
      'km': 'បង្កើតស្លាកថ្មី។',
    },
    'loy0sjw3': {
      'en': 'Tag',
      'km': 'ស្លាក',
    },
    '8k9lqpsp': {
      'en': 'Global',
      'km': 'សកល',
    },
    'smy9do26': {
      'en': 'Company',
      'km': 'ក្រុមហ៊ុន',
    },
    'riki5gpk': {
      'en': 'Myself',
      'km': 'ខ្លួនខ្ញុំផ្ទាល់',
    },
    'qahqacud': {
      'en': '',
      'km': '',
    },
    '91tfdlzz': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'ubr53t3u': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'q08m630f': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentInitial
  {
    'kq4x7o59': {
      'en': 'Initial',
      'km': 'ដើម',
    },
    'hncxci6m': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'vl2plvrx': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    '6r62b0f0': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'zxta6stb': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'zoi27gyl': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'd9psfttx': {
      'en': '',
      'km': '',
    },
    '88taahkz': {
      'en': 'Required',
      'km': 'ទាមទារ',
    },
    'jivj6jct': {
      'en': 'Resizable',
      'km': 'អាចប្តូរទំហំបាន។',
    },
    'qabhhlt0': {
      'en': 'Movable',
      'km': 'អាចចល័តបាន។',
    },
    '2fws5vsq': {
      'en': 'Field name',
      'km': 'បំពេញឈ្មោះ',
    },
    '17iyikbw': {
      'en': '',
      'km': '',
    },
    '61jzk5ng': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '8ryc4nvo': {
      'en': 'Initial',
      'km': 'ដើម',
    },
    'v7myssqq': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'nk9bdaad': {
      'en': '',
      'km': '',
    },
    'q5vucb1n': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '1pzlo4j7': {
      'en': 'Initial',
      'km': 'ដើម',
    },
  },
  // ComponentInitialDetail
  {
    'gvb82l5j': {
      'en': 'Upload',
      'km': 'បង្ហោះចូល',
    },
    'baqplv10': {
      'en': 'Initial',
      'km': 'ដើម',
    },
    '0jibqsbo': {
      'en': 'Drag and drop files here or click to select files',
      'km': 'អូស និងទម្លាក់ឯកសារនៅទីនេះ ឬចុចដើម្បីជ្រើសរើសឯកសារ',
    },
    'di88md9w': {
      'en': 'Ok',
      'km': 'យល់ព្រម',
    },
    'p50l3igc': {
      'en': 'Draw',
      'km': 'គូរ',
    },
    'ljj0b3ux': {
      'en': 'Initial',
      'km': 'ដើម',
    },
    'e0guaq2r': {
      'en': 'Clear',
      'km': 'ច្បាស់',
    },
    'trtyymol': {
      'en': 'Ok',
      'km': 'យល់ព្រម',
    },
    'f0dd8pyd': {
      'en': 'Type',
      'km': 'ប្រភេទ',
    },
    '9jdeqal2': {
      'en': 'Initial',
      'km': 'ដើម',
    },
    '589y8emb': {
      'en': '',
      'km': '',
    },
    '6nf92gam': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'uemv9hxz': {
      'en': 'Phuong Sovathvong',
      'km': 'ភួង សុវ៉ាតវង្ស',
    },
    'tqicwwhs': {
      'en': '',
      'km': '',
    },
    'docxofmz': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'wu1iwmu5': {
      'en': 'PS',
      'km': 'PS',
    },
    'coevmoay': {
      'en': '',
      'km': '',
    },
    'emudteff': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'rwuzftfa': {
      'en': 'PS',
      'km': 'PS',
    },
    'gjedxmpi': {
      'en': '',
      'km': '',
    },
    'qvfhpjgs': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    '2snyaaf6': {
      'en': 'PS',
      'km': 'PS',
    },
    'll7on9b5': {
      'en': 'Ok',
      'km': 'យល់ព្រម',
    },
  },
  // MyTextField
  {
    'bek0j4eq': {
      'en': '',
      'km': '',
    },
  },
  // ComponentRadio
  {
    'tb5g2y16': {
      'en': 'Radiogroup',
      'km': 'ក្រុមវិទ្យុ',
    },
    'i5prqg02': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'kikfg60g': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'wcgjyrep': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'k8tlgsfw': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    '9f8sr2th': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'a6ar4i5q': {
      'en': '',
      'km': '',
    },
    'co2nw9ab': {
      'en': 'Required',
      'km': 'ទាមទារ',
    },
    'przr74ao': {
      'en': 'Field name',
      'km': 'ឈ្មោះវាល',
    },
    'gf6eez5m': {
      'en': '',
      'km': '',
    },
    'cuwkqwe1': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'gejwivlz': {
      'en': 'Radiogroup1',
      'km': 'ក្រុមវិទ្យុ 1',
    },
    'zag8px44': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'y512i96p': {
      'en': '',
      'km': '',
    },
    'tel3rjd8': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'bbp0z5s9': {
      'en': 'Radio',
      'km': 'វិទ្យុ',
    },
    'gf76p5kf': {
      'en': 'Radio Button Value',
      'km': 'តម្លៃប៊ូតុងវិទ្យុ',
    },
    'gpxlo2u5': {
      'en': '',
      'km': '',
    },
    'm9fdh2dw': {
      'en': '',
      'km': '',
    },
    'yltirehh': {
      'en': 'Radio 1',
      'km': 'វិទ្យុ ១',
    },
    'so7asmnk': {
      'en': '',
      'km': '',
    },
    '0vwld1oq': {
      'en': 'Radio 2',
      'km': 'វិទ្យុ ២',
    },
  },
  // ComponentCheckbox
  {
    'nhfue3h7': {
      'en': 'Checkbox',
      'km': 'ប្រអប់ធីក',
    },
    '41hdpfrp': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'sq2k0ccs': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'w3fhecqh': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'u0mdnfxs': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    '7lgilp9f': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'rl5f9vq4': {
      'en': '',
      'km': '',
    },
    'l3tvqu1r': {
      'en': 'Required',
      'km': 'ទាមទារ',
    },
    's621ovhv': {
      'en': 'Read only',
      'km': 'អានតែប៉ុណ្ណោះ',
    },
    'ajxpw378': {
      'en': 'Checked',
      'km': 'បានពិនិត្យ',
    },
    'kdtceone': {
      'en': 'Field name',
      'km': 'ឈ្មោះវាល',
    },
    'dtzfcf3u': {
      'en': '',
      'km': '',
    },
    'xcihxm46': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'xjo0zlrf': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    'czfko4jw': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'z0tyj63x': {
      'en': '',
      'km': '',
    },
    '7bmlzm3l': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'nx53aonw': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
    'v42bcthh': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'i7tm61na': {
      'en': '',
      'km': '',
    },
    'z54xk8zw': {
      'en': 'User Name',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'mat65al0': {
      'en': 'Signature',
      'km': 'ហត្ថលេខា',
    },
  },
  // ComponentSelection
  {
    'uv8ep45c': {
      'en': 'Selection',
      'km': 'ការជ្រើសរើស',
    },
    'atze1sgk': {
      'en': 'Options',
      'km': 'ជម្រើស',
    },
    '0j8bo6cq': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'e2ik8dzn': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'te81b7oc': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'ddyz5x6k': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'ojvyhrgz': {
      'en': '',
      'km': '',
    },
    'k37pt45z': {
      'en': 'Filled by',
      'km': 'បំពេញដោយ',
    },
    'ec190gix': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    '6tplykop': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    '3ob4phhw': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'nei3e9wv': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'zihipimj': {
      'en': '',
      'km': '',
    },
    '7tta8cqd': {
      'en': 'Mandatory field',
      'km': 'វាលចាំបាច់',
    },
    'jivi1imi': {
      'en': 'Validate',
      'km': 'ធ្វើឱ្យមានសុពលភាព',
    },
  },
  // custom_date_format
  {
    '1cxkhe0h': {
      'en': 'Date format',
      'km': 'ទម្រង់កាលបរិច្ឆេទ',
    },
    'yh8y5b5g': {
      'en': 'Select the date format to be used for your DMS account activity.',
      'km':
          'ជ្រើសរើសទម្រង់កាលបរិច្ឆេទដើម្បីប្រើសម្រាប់សកម្មភាពគណនី DMS របស់អ្នក។',
    },
    'xtgxi4u6': {
      'en': 'Enter the Date format',
      'km': 'បញ្ចូលទម្រង់កាលបរិច្ឆេទ',
    },
    '54w60bmd': {
      'en': '  *',
      'km': '*',
    },
    'sau0ck1e': {
      'en': 'Enter the Date format',
      'km': 'បញ្ចូលទម្រង់កាលបរិច្ឆេទ',
    },
    'uc58d4wo': {
      'en': '01 / 01 / 2024',
      'km': '០១/០១/២០២៤',
    },
    'dhmof7n2': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'di7d4y2b': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
    'dhukdltc': {
      'en': 'Please input date formate is required!',
      'km': 'សូមបញ្ចូលទម្រង់កាលបរិច្ឆេទជាចាំបាច់!',
    },
    'xc0wt87f': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសមួយពីបញ្ជីទម្លាក់ចុះ',
    },
  },
  // ComponentMultilineText
  {
    '2h3xsvu8': {
      'en': 'Multiline Text',
      'km': 'អត្ថបទច្រើនបន្ទាត់',
    },
    'yvnzd9ne': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'y8zbmgsb': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    '4t5czj19': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'l3qcxq3s': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    '8u4gq53p': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'o9we2bcc': {
      'en': '',
      'km': '',
    },
    'tmih9o4k': {
      'en': 'Defaule Value\n',
      'km': 'កំណត់តម្លៃ',
    },
    'f8jypiof': {
      'en': 'TextField',
      'km': 'វាលអត្ថបទ',
    },
    'm048h9vl': {
      'en': 'Field name',
      'km': 'ឈ្មោះវាល',
    },
    'd7pr0ggf': {
      'en': 'Please input full name...',
      'km': 'សូមបញ្ចូលឈ្មោះពេញ...',
    },
    '162boct8': {
      'en': 'Limit',
      'km': 'ដែនកំណត់',
    },
    '8urplgnk': {
      'en': '100',
      'km': '១០០',
    },
    'kgkh7fwl': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'wkcrsekt': {
      'en': 'Text',
      'km': 'អត្ថបទ',
    },
    'td66303t': {
      'en': 'Validation',
      'km': 'សុពលភាព',
    },
    'k3zzycf7': {
      'en': 'Full Name',
      'km': 'គ្មាន',
    },
    '7a4rj346': {
      'en': 'Full Name',
      'km': 'ឈ្មោះពេញ',
    },
    '4awhuqpg': {
      'en': 'First Name',
      'km': 'ឈ្មោះដំបូង',
    },
    'h0o677v8': {
      'en': 'Last Name',
      'km': 'នាមត្រកូល',
    },
    'jpttb2hn': {
      'en': 'Full Name',
      'km': 'គ្មាន',
    },
    '05t1raf3': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    '7ngtj8t8': {
      'en': 'Formatting',
      'km': 'ការធ្វើទ្រង់ទ្រាយ',
    },
    'tapjpyqt': {
      'en': 'Full Name',
      'km': 'ឈ្មោះពេញ',
    },
    '92yjje1c': {
      'en': 'First Name',
      'km': 'ឈ្មោះដំបូង',
    },
    '4v02l7c3': {
      'en': 'Last Name',
      'km': 'នាមត្រកូល',
    },
    'gko5d6hn': {
      'en': 'Roboto',
      'km': 'មនុស្សយន្ត',
    },
    'j9uu7btz': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'a30sdy54': {
      'en': '8',
      'km': '៨',
    },
    'hg02pqas': {
      'en': '9',
      'km': '៩',
    },
    '8r7e8ej0': {
      'en': '10',
      'km': '១០',
    },
    'vxw1g8k2': {
      'en': '12',
      'km': '១២',
    },
    'k93ufwpk': {
      'en': '13',
      'km': '១៣',
    },
    '3tffrj84': {
      'en': '14',
      'km': '១៤',
    },
    'shs54blk': {
      'en': '12',
      'km': '១២',
    },
    'zetz2ydm': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'o7vv07js': {
      'en': 'B',
      'km': 'ខ',
    },
    'ie9urvki': {
      'en': '',
      'km': '',
    },
    'hxpbpkwh': {
      'en': '',
      'km': '',
    },
    'wulow1l5': {
      'en': 'Alignment',
      'km': 'ការតម្រឹម',
    },
    'at1nvmlu': {
      'en': '',
      'km': '',
    },
    '7qsjqa8v': {
      'en': '',
      'km': '',
    },
    'cqauxg9q': {
      'en': '',
      'km': '',
    },
    't2mo46kp': {
      'en': 'Fixed width',
      'km': 'ទទឹងថេរ',
    },
    'i8tb4ne4': {
      'en': 'Fixed higth',
      'km': 'កម្ពស់ថេរ',
    },
    'b4ilvecw': {
      'en': 'Mandatory field',
      'km': 'វាលចាំបាច់',
    },
    'n6m0t8xi': {
      'en': 'Read Only',
      'km': 'អានតែប៉ុណ្ណោះ',
    },
    'td2gk12v': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    'ifp31w58': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
  },
  // ComponentActionTimeline
  {
    'lq8h9jax': {
      'en': 'View',
      'km': 'មើល',
    },
    'ujdgovg7': {
      'en': 'Sign',
      'km': 'ហត្ថលេខា',
    },
    '6u6q6lsc': {
      'en': 'Approve',
      'km': 'យល់ព្រម',
    },
    'yzyl4y4p': {
      'en': 'Decline',
      'km': 'បដិសេធ',
    },
  },
  // ComponentOptionUpload
  {
    'wqa596wk': {
      'en': 'Replace',
      'km': 'ជំនួស',
    },
    't1xfqlo0': {
      'en': 'Delete',
      'km': 'លុប',
    },
  },
  // ComponentSign-AssignMember
  {
    'dqeuc5jr': {
      'en': 'Assign member for Document:  ',
      'km': 'ចាត់តាំងសមាជិក',
    },
    'clopgapb': {
      'en': 'Assign to',
      'km': 'ចាត់តាំងទៅកាន់',
    },
    '5mwi4zuy': {
      'en': 'Send in Company',
      'km': 'ផ្ញើទៅក្នុងក្រុមហ៊ុន/អង្គភាព​',
    },
    'y1ueixdk': {
      'en': 'Approved ',
      'km': 'បានអនុម័ត',
    },
    '55v5tyke': {
      'en': 'HR Department ',
      'km': '',
    },
    'v47admkr': {
      'en': 'Seng Kosal',
      'km': '',
    },
    'uu9d44p6': {
      'en': 'HR Department',
      'km': '',
    },
    'bpksn675': {
      'en': 'Send to other Company',
      'km': 'ផ្ញើទៅក្រុមហ៊ុន/អង្គភាព​ផ្សេងទៀត',
    },
    '79290mr9': {
      'en': 'Provide Authentication',
      'km': 'ផ្តល់ការផ្ទៀងផ្ទាត់',
    },
    'wugm6kyz': {
      'en': 'Note to member',
      'km': 'ចំណាំ/សម្គាល់ទៅកាន់អ្នកទទួល',
    },
    'gvl59zho': {
      'en': '',
      'km': '',
    },
    'v9d0ymw3': {
      'en': '',
      'km': '',
    },
    '4q5j6e2z': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'v53ag079': {
      'en': 'Send',
      'km': 'ផ្ញើ',
    },
  },
  // ComponentCompanyDetail
  {
    '2z3fpia0': {
      'en': '',
      'km': '',
    },
    'rxo7sfwl': {
      'en': 'Company name',
      'km': 'ឈ្មោះក្រុមហ៊ុន',
    },
  },
  // ComponentPhoneDetail
  {
    't2fjfd48': {
      'en': '',
      'km': '',
    },
    '9905zoil': {
      'en': 'Phone number',
      'km': 'លេខទូរស័ព្ទ',
    },
  },
  // ComponentReceiveAssignToSomeoneElse
  {
    'av1gi5z8': {
      'en': 'Assign to someone else',
      'km': 'ប្រគល់ឱ្យអ្នកផ្សេង',
    },
    'shtdlsmw': {
      'en': 'Email :',
      'km': 'អ៊ីមែល៖',
    },
    'z2kols9p': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    '7abhdh9m': {
      'en': '',
      'km': '',
    },
    'm6w3u2d8': {
      'en': 'Email :',
      'km': 'អ៊ីមែល៖',
    },
    'wyaq486i': {
      'en': 'Name',
      'km': 'ឈ្មោះ',
    },
    'a969wt9s': {
      'en': '',
      'km': '',
    },
    'e8vbwulg': {
      'en': 'Reason :',
      'km': 'ហេតុផល៖',
    },
    'sr2dbo0k': {
      'en': '',
      'km': '',
    },
    'xmqvltzt': {
      'en': 'Enter the reason',
      'km': 'បញ្ចូលហេតុផល',
    },
    '4v5quw92': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'qdj479xt': {
      'en': 'Assign to someone else',
      'km': 'ចាត់តាំងឱ្យអ្នកផ្សេង។',
    },
  },
  // ComponentTermsandConditions
  {
    'lyalamnr': {
      'en': 'Terms and Conditions',
      'km': '',
    },
    'lg662qk5': {
      'en': 'I confirm that I have to read and understood.',
      'km': '',
    },
    'iesphtfg': {
      'en': 'Close',
      'km': '',
    },
    '4ez1bpq6': {
      'en': 'Agree and Continue',
      'km': '',
    },
  },
  // CancelDialog
  {
    'f73ykew0': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
  },
  // CancelNavigateBack
  {
    'trj6xjuc': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
  },
  // PaginationPanel
  {
    '14us0pqg': {
      'en': 'Show',
      'km': 'បង្ហាញ',
    },
    '370xikhk': {
      'en': '10',
      'km': '10',
    },
    '22x4z8o1': {
      'en': '10',
      'km': '10',
    },
    'v9d8i5kq': {
      'en': '25',
      'km': '25',
    },
    '7sp30cqp': {
      'en': '50',
      'km': '50',
    },
    'sfnopt1h': {
      'en': '100',
      'km': '100',
    },
    '3eewz6o7': {
      'en': '',
      'km': '',
    },
    'zjkcmyi8': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'z45mn3m5': {
      'en': 'TextField',
      'km': 'វាលអត្ថបទ',
    },
    'v272ukf5': {
      'en': '1',
      'km': '1',
    },
    'prbvtcuv': {
      'en': ' / ',
      'km': '/',
    },
    'cmnx6s2q': {
      'en': '2',
      'km': '2',
    },
  },
  // cpSign-DocInfo
  {
    'nweojbqf': {
      'en': '',
      'km': '',
    },
    'nd71t0g9': {
      'en': '',
      'km': '',
    },
    'c04si46b': {
      'en': 'Letter',
      'km': 'ពេលក្រោយ',
    },
    'bgauckos': {
      'en': 'Letter',
      'km': 'លិខិត',
    },
    '99m88pki': {
      'en': 'Report',
      'km': 'រាយការណ៍',
    },
    '1m2nmwhf': {
      'en': '',
      'km': '',
    },
    'nv3m7phn': {
      'en': '',
      'km': '',
    },
    'kav4v2h9': {
      'en': '',
      'km': '',
    },
    'iw6d90d5': {
      'en': '',
      'km': '',
    },
    'a2dmzjtv': {
      'en': 'Letter',
      'km': 'ពេលក្រោយ',
    },
    'keoomup4': {
      'en': 'Letter',
      'km': 'លិខិត',
    },
    'nhth9oda': {
      'en': 'Report',
      'km': 'រាយការណ៍',
    },
    'js7xtr72': {
      'en': '',
      'km': '',
    },
    '32hxlbsh': {
      'en': '',
      'km': '',
    },
    'm0ixl7z3': {
      'en': 'My Doc',
      'km': 'ពេលក្រោយ',
    },
    'ynguq8qr': {
      'en': 'My Doc',
      'km': 'ឯកសាររបស់ខ្ញុំ',
    },
    'p0fwbtrs': {
      'en': 'Team Doc',
      'km': 'ក្រុម Doc',
    },
    'g41vi2l6': {
      'en': '',
      'km': '',
    },
    '6tu4rk6j': {
      'en': '',
      'km': '',
    },
    'k7x9q2mb': {
      'en': '',
      'km': '',
    },
    '6j8psns7': {
      'en': 'Description of document',
      'km': 'ការពិពណ៌នាអំពីឯកសារ',
    },
    'f12yy4e9': {
      'en': 'Custom Information',
      'km': 'ព័ត៌មានផ្ទាល់ខ្លួន',
    },
    'jxquu1yk': {
      'en': 'Add',
      'km': 'បន្ថែម',
    },
    'w1s6powu': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'k6vsojx1': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    's9cbao7j': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'rjm4v400': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    '63h5vn2g': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'qf7480ve': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    '53h0tp7a': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'x9b8hrm4': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'zr1zsoxc': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'iq4b78cf': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'dztktux6': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'vfu2eh90': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    '716zdi7v': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'b5ddt1sp': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'itqxhzty': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'yyplma8i': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
    'udvs94q9': {
      'en': 'Field is required',
      'km': 'តម្រូវបំពេញតម្លៃ',
    },
    'qkl7z6j6': {
      'en': 'Please choose an option from the dropdown',
      'km': 'សូមជ្រើសរើសជម្រើសណាមួយពីបញ្ជីដែលបានទម្លាក់',
    },
  },
  // ComponentText
  {
    'hwnk6o71': {
      'en': 'Text',
      'km': 'អត្ថបទ',
    },
    '844gi1uc': {
      'en': 'Recipient',
      'km': 'អ្នកទទួល',
    },
    'wn1438oi': {
      'en': 'sovathvong@gmail.com',
      'km': 'អ៊ីមែល',
    },
    'r7tk5tau': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    '3zr4jt8k': {
      'en': 'sovathvong@oone.bz',
      'km': 'sovathvong@oone.bz',
    },
    'sw3col4b': {
      'en': 'sovathvong@gmail.com',
      'km': 'sovathvong@gmail.com',
    },
    'rmmtudvp': {
      'en': '',
      'km': '',
    },
    'd6cthfll': {
      'en': 'Defaule Value\n',
      'km': 'កំណត់តម្លៃ',
    },
    'rlhekvk5': {
      'en': 'TextField',
      'km': 'វាលអត្ថបទ',
    },
    'lijjdiam': {
      'en': 'Field name',
      'km': 'ឈ្មោះវាល',
    },
    'vo2spbyx': {
      'en': 'Please input full name...',
      'km': 'សូមបញ្ចូលឈ្មោះពេញ...',
    },
    'ruvxs7lq': {
      'en': 'Limit',
      'km': 'ដែនកំណត់',
    },
    'j722dxyf': {
      'en': '100',
      'km': '១០០',
    },
    'qugm1wnf': {
      'en': 'Data lable',
      'km': 'តារាងទិន្នន័យ',
    },
    'hb5pwkwm': {
      'en': 'Text',
      'km': 'អត្ថបទ',
    },
    'bvgza0d1': {
      'en': 'Validation',
      'km': 'សុពលភាព',
    },
    'sgnxy96q': {
      'en': 'Full Name',
      'km': 'គ្មាន',
    },
    'u2lksyzv': {
      'en': 'Full Name',
      'km': 'ឈ្មោះពេញ',
    },
    '1b45v3ts': {
      'en': 'First Name',
      'km': 'ឈ្មោះដំបូង',
    },
    'x8smjcma': {
      'en': 'Last Name',
      'km': 'នាមត្រកូល',
    },
    '6iaumzov': {
      'en': 'Full Name',
      'km': 'គ្មាន',
    },
    'xhuxigvc': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'ytafekdf': {
      'en': 'Formatting',
      'km': 'ការធ្វើទ្រង់ទ្រាយ',
    },
    '5dzof2pg': {
      'en': 'Full Name',
      'km': 'ឈ្មោះពេញ',
    },
    'imkd9wb3': {
      'en': 'First Name',
      'km': 'ឈ្មោះដំបូង',
    },
    'u90z5tde': {
      'en': 'Last Name',
      'km': 'នាមត្រកូល',
    },
    'cidi3wt3': {
      'en': 'Roboto',
      'km': 'មនុស្សយន្ត',
    },
    'xcjdfod6': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'a6ysbm96': {
      'en': '8',
      'km': '៨',
    },
    'ib56qhpz': {
      'en': '9',
      'km': '៩',
    },
    'lhrpyk4d': {
      'en': '10',
      'km': '១០',
    },
    'reqwpwt7': {
      'en': '12',
      'km': '១២',
    },
    'h667vb8f': {
      'en': '13',
      'km': '១៣',
    },
    'c4cngu98': {
      'en': '14',
      'km': '១៤',
    },
    'lmj5hw1v': {
      'en': '12',
      'km': '១២',
    },
    'mc2fyw33': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'u4dto7b1': {
      'en': 'B',
      'km': 'ខ',
    },
    'tfwhcqwb': {
      'en': '',
      'km': '',
    },
    'oh98rz0t': {
      'en': '',
      'km': '',
    },
    'li6z416a': {
      'en': 'Alignment',
      'km': 'ការតម្រឹម',
    },
    'n6jjhma1': {
      'en': '',
      'km': '',
    },
    '6cu2iax9': {
      'en': '',
      'km': '',
    },
    'qelt4xzg': {
      'en': '',
      'km': '',
    },
    'gfkhz5c0': {
      'en': 'Fixed width',
      'km': 'ទទឹងថេរ',
    },
    'orfo564x': {
      'en': 'Fixed higth',
      'km': 'កម្ពស់ថេរ',
    },
    'jenaybf0': {
      'en': 'Mandatory field',
      'km': 'វាលចាំបាច់',
    },
    '7npcjyl4': {
      'en': 'Read Only',
      'km': 'អានតែប៉ុណ្ណោះ',
    },
    'iigt17iq': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
    '4pel6lnf': {
      'en': 'Description',
      'km': 'ការពិពណ៌នា',
    },
  },
  // ComponentAuthorizeEmail
  {
    'e8uy6jq8': {
      'en': 'Document information',
      'km': 'ព័ត៌មានឯកសារ',
    },
    'sevxk0ao': {
      'en': 'Document name',
      'km': 'ឈ្មោះឯកសារ',
    },
    'mw5e9i7v': {
      'en': '[Doc. name]',
      'km': '[បណ្ឌិត។ ឈ្មោះ]',
    },
    '1huv7j1t': {
      'en': 'Send from',
      'km': 'ផ្ញើពី',
    },
    '75c3mlxq': {
      'en': '[Sender email]',
      'km': '[ផ្ញើអ៊ីមែល]',
    },
    'ygl9wq2a': {
      'en': 'Company',
      'km': 'ក្រុមហ៊ុន',
    },
    'rjuhv3t9': {
      'en': '[Sender company]',
      'km': '[ក្រុមហ៊ុនអ្នកផ្ញើ]',
    },
    '6sbdsejm': {
      'en': 'Date',
      'km': 'កាលបរិច្ឆេទ',
    },
    '3k5doxau': {
      'en': '[Send date]',
      'km': '[ផ្ញើកាលបរិច្ឆេទ]',
    },
    'bcjomq7j': {
      'en': 'Recipient authentication - Email',
      'km': 'ការផ្ទៀងផ្ទាត់អ្នកទទួល - អ៊ីមែល',
    },
    'alf54yrk': {
      'en':
          'The sender has enabled additional access restrictions for this document. We will send a one-time passcode (OTP) to your email (he*************@gmail.com) to authenticate you.',
      'km':
          'អ្នកផ្ញើបានបើកការរឹតបន្តឹងការចូលប្រើបន្ថែមសម្រាប់ឯកសារនេះ។ យើងនឹងផ្ញើលេខកូដសម្ងាត់តែម្តង (OTP) ទៅកាន់អ៊ីមែលរបស់អ្នក (គាត់ *************@gmail.com) ដើម្បីផ្ទៀងផ្ទាត់អ្នក។',
    },
    'm6yuakpw': {
      'en': 'Send OTP',
      'km': 'ផ្ញើ OTP',
    },
  },
  // ComponentAuthorizeSMS
  {
    'gckmdo57': {
      'en': 'Document information',
      'km': 'ព័ត៌មានឯកសារ',
    },
    '7xjmszbx': {
      'en': 'Document name',
      'km': 'ឈ្មោះឯកសារ',
    },
    '1rixjhil': {
      'en': '[Doc. name]',
      'km': '[បណ្ឌិត។ ឈ្មោះ]',
    },
    'lob0p8zo': {
      'en': 'Send from',
      'km': 'ផ្ញើពី',
    },
    'gjjvbxco': {
      'en': '[Sender email]',
      'km': '[ផ្ញើអ៊ីមែល]',
    },
    'v0j5mf17': {
      'en': 'Company',
      'km': 'ក្រុមហ៊ុន',
    },
    '6o1sgzbm': {
      'en': '[Sender company]',
      'km': '[ក្រុមហ៊ុនអ្នកផ្ញើ]',
    },
    'n47joi5b': {
      'en': 'Date',
      'km': 'កាលបរិច្ឆេទ',
    },
    'hj4pp3ma': {
      'en': '[Send date]',
      'km': '[ផ្ញើកាលបរិច្ឆេទ]',
    },
    '67h2l4zw': {
      'en': 'Recipient authentication - SMS',
      'km': 'ការផ្ទៀងផ្ទាត់អ្នកទទួល - សារ SMS',
    },
    '22c9zcuf': {
      'en':
          'The sender has enabled additional access restrictions for this document. We will send a text message with a one-time passcode (OTP) to your phone (********13) to authenticate you.',
      'km':
          'អ្នកផ្ញើបានបើកការរឹតបន្តឹងការចូលប្រើបន្ថែមសម្រាប់ឯកសារនេះ។ យើង​នឹង​ផ្ញើ​សារ​ជា​មួយ​នឹង​លេខ​កូដ​ប្រើ​ម្ដង (OTP) ទៅ​កាន់​ទូរសព្ទ​របស់​អ្នក (********13) ដើម្បី​ផ្ទៀងផ្ទាត់​អ្នក។',
    },
    'ezofs4p8': {
      'en': 'Send OTP',
      'km': 'ផ្ញើ OTP',
    },
  },
  // ComponentOTPEmail
  {
    'yf33nkdz': {
      'en': 'Enter one-time passcode (OTP)',
      'km': 'បញ្ចូលលេខកូដសម្ងាត់តែម្តង (OTP)',
    },
    's31c24gh': {
      'en':
          'Please enter the one-time passcode (OTP) received in your email inbox (he*************@gmail.com) to authenticate yourself and access the document(s).',
      'km':
          'សូមបញ្ចូលលេខកូដសម្ងាត់ម្តង (OTP) ដែលទទួលបានក្នុងប្រអប់សំបុត្រអ៊ីមែលរបស់អ្នក (he*************@gmail.com) ដើម្បីផ្ទៀងផ្ទាត់ខ្លួនអ្នក និងចូលប្រើឯកសារ។',
    },
    '0pnscdu5': {
      'en': 'Proceed to Document',
      'km': 'បន្តទៅឯកសារ',
    },
    'gq8n184s': {
      'en': 'Didn\'t receive  code?',
      'km': 'មិនបានទទួលលេខកូដផ្ទៀងផ្ទាត់មែនទេ?',
    },
    '5n427287': {
      'en': 'Resend code',
      'km': 'ផ្ញើលេខកូដឡើងវិញ',
    },
  },
  // ComponentOTPSMS
  {
    'bvzyqq2p': {
      'en': 'Enter one-time passcode (OTP)',
      'km': 'បញ្ចូលលេខកូដសម្ងាត់តែម្តង (OTP)',
    },
    '184lwx92': {
      'en':
          'Please enter the one-time passcode (OTP) received in your phone  (+855 97*****13) to authenticate yourself and access the document(s).',
      'km':
          'សូមបញ្ចូលលេខកូដសម្ងាត់តែម្តង (OTP) ដែលទទួលបានក្នុងទូរស័ព្ទរបស់អ្នក (+855 97*****13) ដើម្បីផ្ទៀងផ្ទាត់ខ្លួនអ្នក និងចូលប្រើឯកសារ។',
    },
    'sf7p1au6': {
      'en': 'Proceed to Document',
      'km': 'បន្តទៅឯកសារ',
    },
    'yquhhoc3': {
      'en': 'Didn\'t receive  code?',
      'km': 'មិនបានទទួលលេខកូដផ្ទៀងផ្ទាត់មែនទេ?',
    },
    'cleka4cq': {
      'en': 'Resend code',
      'km': 'ផ្ញើលេខកូដឡើងវិញ',
    },
  },
  // ComponentSign-UploadDocAction
  {
    'dc4b7194': {
      'en': 'Local File',
      'km': 'ឯកសារក្នុងមូលដ្ឋាន',
    },
    'iz9ustap': {
      'en': 'Document',
      'km': 'ឯកសារ',
    },
    'hy9j9y5q': {
      'en': 'Scan Document',
      'km': 'ស្កេនឯកសារ',
    },
  },
  // ComponentAddNewDoc
  {
    'ugwpacv1': {
      'en': 'Upload Files',
      'km': 'បញ្ចូលឯកសារ',
    },
    '95ba6394': {
      'en': 'Upload Folder',
      'km': 'បញ្ចូលថតឯកសារ',
    },
    'qv8nbcio': {
      'en': 'Upload From Cloud',
      'km': 'បញ្ចូលពី Cloud',
    },
    'jkt9b732': {
      'en': 'New Folder',
      'km': 'បង្កើតថតឯកសារថ្មី',
    },
    'e4zptwoj': {
      'en': 'Doc',
      'km': 'បណ្ឌិត',
    },
    'mek3mghe': {
      'en': 'Sheets',
      'km': 'សន្លឹក',
    },
    'wn7x4572': {
      'en': 'Slide',
      'km': 'ស្លាយ',
    },
    'sv7kuo11': {
      'en': 'More',
      'km': 'ច្រើនទៀត',
    },
  },
  // ComponentCreateFolder
  {
    '0kvy6bb3': {
      'en': 'Create Folder',
      'km': '',
    },
    '0lqfzxm4': {
      'en': '  *',
      'km': '',
    },
    'e5lnkj86': {
      'en': 'Create Folder',
      'km': 'បង្កើតថតឯកសារ',
    },
    '171u8qtf': {
      'en': 'Color Folder',
      'km': 'ពណ៌នៃថតឯកសារ',
    },
    'ey9qznah': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'kx95j45t': {
      'en': 'Create',
      'km': 'បង្កើត',
    },
  },
  // ComponentReceiveReject
  {
    't96wdqvq': {
      'en': 'Reject',
      'km': 'បដិសេធ',
    },
    'raeaz7em': {
      'en': 'Please enter the reason to reject this document.',
      'km': 'សូមបញ្ចូលមូលហេតុចំពោះការបដិសេធឯកសារនេះ។',
    },
    'tfonwurm': {
      'en': '',
      'km': '',
    },
    'dym7k12h': {
      'en': 'Enter the reason',
      'km': 'បញ្ចូលមូលហេតុ',
    },
    'qjlyuc24': {
      'en':
          'Note: We shall let the sender of this document know your reason. \nPlease get in touch with them for further queries.',
      'km':
          'ចំណាំ៖ យើងនឹងអនុញ្ញាតឱ្យអ្នកផ្ញើឯកសារនេះដឹងពីមូលហេតុរបស់អ្នក។ \nសូមទំនាក់ទំនងមកកាន់ពួកគេសម្រាប់សំណួរបន្ថែម។',
    },
    'q89d8ujn': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    '8gggjqhf': {
      'en': 'Reject',
      'km': 'បដិសេធ',
    },
  },
  // ComponentReceiveSkipSigning
  {
    '22q79thv': {
      'en': 'Skip signing',
      'km': 'បដិសេធ',
    },
    'kufjrr8s': {
      'en': 'Are you sure you want to skip the signing process?',
      'km': 'សូមបញ្ចូលហេតុផលដើម្បីបដិសេធឯកសារនេះ',
    },
    '8j3cwsgg': {
      'en': 'Note:',
      'km': 'ចំណាំ៖ ទិន្នន័យនឹងមិនត្រូវបានរក្សាទុកទេ',
    },
    'elv5th4t': {
      'en': 'The data will not be saved.',
      'km': '',
    },
    'v4io0lo8': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    '7qku766y': {
      'en': 'Yes',
      'km': 'បាទ/ចាស',
    },
  },
  // ComponentDocumenHistory
  {
    'kd2zen6x': {
      'en': 'Document history',
      'km': 'ប្រវត្តិឯកសារ',
    },
    'gj7qd77k': {
      'en': 'Document Details',
      'km': 'ព័ត៌មានលម្អិតអំពីឯកសារ',
    },
    'xvn5llyq': {
      'en': 'Document ID',
      'km': 'លេខសម្គាល់ឯកសារ',
    },
    'ofauvauk': {
      'en': ': 33334233R42344-NCFF_IOTJIAJGRHRI7....',
      'km': '',
    },
    'b0zlipx1': {
      'en': 'Created on',
      'km': 'បានបង្កើតនៅលើ',
    },
    'i6ix3sb6': {
      'en': ': Sep 19,2024 | 03:26 PM',
      'km': '',
    },
    'fwuwrmt4': {
      'en': 'Document name',
      'km': 'ឈ្មោះឯកសារ',
    },
    'ibf8ejtu': {
      'en': ': Scan issues License user cloud 2024-09-10',
      'km': '',
    },
    'c1syvfng': {
      'en': 'Sent on',
      'km': 'បានផ្ញើនៅលើ',
    },
    'k7a3smov': {
      'en': ': Sep 19,2024 | 03:26 PM <Expires in 15 days>',
      'km': '',
    },
    'khvg69iq': {
      'en': 'Sender',
      'km': 'អ្នកផ្ញើ',
    },
    'm3wxmy9j': {
      'en': ': Vong<sovathvong@gamil.com>',
      'km': '',
    },
    'i9lsnq9y': {
      'en': 'Time zone',
      'km': 'ពេលវេលាក្នុងតំបន់',
    },
    'qbkpfxt3': {
      'en': ': (GMT +07:00) Indochina Time (Asia/Bangkok)',
      'km': '',
    },
    '50t9okxw': {
      'en': 'Organization name',
      'km': 'ឈ្មោះអង្គការ',
    },
    'xijrsxei': {
      'en': ': UAT',
      'km': '',
    },
    '3s1suf93': {
      'en': 'Recipients',
      'km': 'អ្នកទទួល',
    },
    'khd53dyl': {
      'en': '1',
      'km': '',
    },
    'br2j2ktd': {
      'en': 'Vong<sovathvong@gamil.com>',
      'km': '',
    },
    'myhcn1rp': {
      'en': 'Needs to sign',
      'km': 'ត្រូវការចុះហត្ថលេខា',
    },
    '2au6xgxx': {
      'en': 'Received on Sep 19, 2024 | 03:30 PM',
      'km': '',
    },
    'leub2ztj': {
      'en': 'Activities',
      'km': 'សកម្មភាព',
    },
    'v2j5xngp': {
      'en': 'TIME OF ACTIVITY',
      'km': 'ពេលវេលានៃសកម្មភាព',
    },
    'vmeo32uf': {
      'en': 'PERFORMED BY',
      'km': 'សម្តែងដោយ',
    },
    '92stjs2o': {
      'en': 'ACTION',
      'km': 'សកម្មភាព',
    },
    'fuumj5mq': {
      'en': 'ACTIVITY',
      'km': '',
    },
    't0znybrh': {
      'en': 'Sep 19,2024 | 03:26 PM',
      'km': '',
    },
    'oiia0uwx': {
      'en': 'Phuong Sovathvong',
      'km': '',
    },
    'a3248koo': {
      'en': 'sovarhvong@gmail.com',
      'km': '',
    },
    'wdd8r44a': {
      'en': '0987654321',
      'km': '',
    },
    'x188nb3x': {
      'en': 'DEAFTED',
      'km': '',
    },
    'yuez14l3': {
      'en': 'ACTIVITY',
      'km': '',
    },
    'z2zv4870': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
  },
  // ComponentOptionFloder
  {
    'tgzkd31r': {
      'en': 'Open',
      'km': 'បើក',
    },
    'y4evvtuo': {
      'en': 'Rename',
      'km': 'ប្តូរឈ្មោះ',
    },
    'qqesbamq': {
      'en': 'Organize',
      'km': 'រៀបចំ',
    },
    '8y9cfg3j': {
      'en': 'Delete',
      'km': 'លុប',
    },
    '5hvfuc52': {
      'en': 'Share',
      'km': 'ចែករំលេក',
    },
    '395zgpt8': {
      'en': 'Folder Information',
      'km': 'ព័ត៌មានថតឯកសារ',
    },
  },
  // ComponentProperty-SignDate
  {
    'lkzae324': {
      'en': 'Field Name',
      'km': 'បំពេញឈ្មោះ',
    },
    'ahcmmiy0': {
      'en': 'Field Date',
      'km': 'បំពេញកាលបរិច្ឆេទ',
    },
    '9uejcpf9': {
      'en': 'Label',
      'km': 'ស្លាក',
    },
    'rt3jaa4y': {
      'en': 'Date',
      'km': 'កាលបរិច្ឆេទ',
    },
  },
  // account_management_details
  {
    'bmaikvmu': {
      'en': 'UserName',
      'km': 'ឈ្មោះអ្នកប្រើប្រាស់',
    },
    'qmao1z7g': {
      'en': '  *',
      'km': '',
    },
    '5pbhg1zp': {
      'en': '',
      'km': '',
    },
    'ovnr79r7': {
      'en': 'Gender',
      'km': 'ភេទ',
    },
    'goddiuol': {
      'en': '  *',
      'km': '',
    },
    '9kw0awd2': {
      'en': 'Male',
      'km': 'ប្រុស',
    },
    'cofvthno': {
      'en': 'Female',
      'km': 'ស្រី',
    },
    '0w7iw27f': {
      'en': 'Others',
      'km': 'ផ្សេងៗ',
    },
    '0va9ty0y': {
      'en': '',
      'km': '',
    },
    '9q96tpbp': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'p94jv080': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    'ixha95e0': {
      'en': '  *',
      'km': '',
    },
    '212yf2ps': {
      'en': '',
      'km': '',
    },
    '2vo1d1m5': {
      'en': 'Phone Number',
      'km': 'លេខទូរស័ព្ទ',
    },
    '4vhiz9t4': {
      'en': '  *',
      'km': '',
    },
    'bgxn74j7': {
      'en': '',
      'km': '',
    },
    '26a3y7j0': {
      'en': 'Password',
      'km': 'ពាក្យសម្ងាត់',
    },
    'qq0qn0sl': {
      'en': '  *',
      'km': '',
    },
    '2vjtr1nc': {
      'en': '',
      'km': '',
    },
    'zj3hv1kj': {
      'en': 'Confirm Password',
      'km': 'បញ្ជាក់ពាក្យសម្ងាត់',
    },
    '5vx93v5u': {
      'en': '  *',
      'km': '',
    },
    'lybhmlwv': {
      'en': '',
      'km': '',
    },
    'goqi4vps': {
      'en': 'Address',
      'km': 'អាស័យដ្ឋាន',
    },
    'lvi303yw': {
      'en': '  *',
      'km': '',
    },
    '6axu33dc': {
      'en': '',
      'km': '',
    },
    'q68b40lb': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentSignFile-No
  {
    'ekrp2yub': {
      'en': 'Drop or Select your file',
      'km': 'ដាក់ឯកសារ PDF របស់អ្នកនៅទីនេះឬធ្វើការជ្រើសរើស',
    },
  },
  // ComponentProcessDocument
  {
    'vfol8hww': {
      'en': 'Add Reciption',
      'km': 'បន្ថែមការទទួល',
    },
    'ftkm230s': {
      'en': 'Send to Other',
      'km': 'ផ្ញើទៅអ្នកដទៃ',
    },
    'l8d1g4rc': {
      'en': 'Sign Myself',
      'km': 'ចុះហត្ថលេខាដោយខ្លួនឯង',
    },
    'iwg5fcc4': {
      'en': 'Send in Organization',
      'km': 'ផ្ញើរទៅក្នុងក្រុមហ៊ុន/អង្គភាព',
    },
    'x6em841k': {
      'en': 'Send to other Organization',
      'km': 'ផ្ញើរទៅក្នុងក្រុមហ៊ុន/អង្គភាពផ្សេងទៀត',
    },
    'cxbtmmt4': {
      'en': 'More Setting',
      'km': 'ការកំណត់បន្ថែមទៀត',
    },
    '3o1znsb4': {
      'en': 'Validate',
      'km': 'ធ្វើឱ្យមានសុពលភាព និងការរំលឹក',
    },
    'oibxvukb': {
      'en': 'Valid Till',
      'km': '',
    },
    'vzkzptjp': {
      'en': 'Forever',
      'km': '',
    },
    'jvqgt2uf': {
      'en': 'Reminder',
      'km': '',
    },
    'mqnejnzb': {
      'en': 'Remind every',
      'km': 'រំលឹករាល់',
    },
    '3itcdb8v': {
      'en': 'TextField',
      'km': '',
    },
    'smdyx7f0': {
      'en': '5',
      'km': '',
    },
    'rv4c4za5': {
      'en': 'days',
      'km': 'ថ្ងៃ',
    },
    '4kl9hpam': {
      'en': 'Auto Reminder via email',
      'km': 'ការរំលឹកដោយស្វ័យប្រវត្តិតាមរយៈអ៊ីមែល',
    },
    '5dj02syk': {
      'en': 'Email Description',
      'km': 'ការពិពណ៌នារបស់អ៊ីមែល',
    },
    '7awjl9ze': {
      'en': '*',
      'km': '',
    },
  },
  // ComponentAddUserWorkflow
  {
    'twun9zb3': {
      'en': 'Choose User or Department',
      'km': 'ជ្រើសរើសអ្នកប្រើប្រាស់ ឬនាយកដ្ឋាន',
    },
    '1ghn1kfi': {
      'en': 'Choose Severity',
      'km': 'ជ្រើសរើសភាពចាំបាច់',
    },
    'et737scd': {
      'en': '',
      'km': 'ត្រូវការហត្ថលេខា',
    },
    'rr7hqmli': {
      'en': 'Signature needed',
      'km': 'ហត្ថលេខាដែលត្រូវការ',
    },
    'sfdc2rm7': {
      'en': 'Signature in-person',
      'km': 'ហត្ថលេខាដោយផ្ទាល់',
    },
    'upitqnmf': {
      'en': 'Approver',
      'km': 'អ្នកអនុម័ត',
    },
    'zqmrd5sq': {
      'en': 'Sent copy (CC)',
      'km': 'ផ្ញើច្បាប់ចម្លង (CC) ',
    },
    '3bfgpgdc': {
      'en': 'Select serverity',
      'km': '',
    },
    'ofjv6azl': {
      'en': '',
      'km': '',
    },
    'dlizl98p': {
      'en': 'Choose User or Department',
      'km': 'ជ្រើសរើសអ្នកប្រើប្រាស់ ឬនាយកដ្ឋាន',
    },
    'tead6f9t': {
      'en': 'Select All',
      'km': 'ជ្រើសរើសទាំងអស់',
    },
    '3zq1uptt': {
      'en': '',
      'km': '',
    },
    'exb10lty': {
      'en': 'Search more',
      'km': 'ស្វែងរកបន្ថែម',
    },
    'kfdbbvx7': {
      'en': 'All Department',
      'km': 'នាយកដ្ឋានទាំងអស់',
    },
    'hgged3yn': {
      'en': 'HR Department',
      'km': 'នាយកដ្ឋានធនធានមនុស្ស',
    },
    'qn9l8lki': {
      'en': 'Managing Director',
      'km': 'នាយកគ្រប់គ្រង',
    },
    'isr4zowo': {
      'en': 'Administrator Department',
      'km': 'នាយកដ្ឋានរដ្ឋបាល',
    },
    'mjd7ne9g': {
      'en': '',
      'km': 'នាយកដ្ឋានទាំងអស់',
    },
    'zrxowe8p': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'glvryp43': {
      'en': 'Field is required',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    '5s3ijic0': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'iuitlom0': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    '02ynxjxh': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentActivityFolder
  {
    'm1ywm5h5': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថតឯកសារ',
    },
    '8ydprz05': {
      'en': 'Details',
      'km': 'ព័ត៌មានលម្អិត',
    },
    'y3mq4qb5': {
      'en': 'Type',
      'km': 'ប្រភេទ',
    },
    'ck9cagjr': {
      'en': 'Folder',
      'km': 'ថតឯកសារ',
    },
    'vf4s6chv': {
      'en': 'Owner',
      'km': 'ម្ចាស់',
    },
    '25x0ft9l': {
      'en': 'Me',
      'km': 'ខ្ញុំ',
    },
    'ridchho6': {
      'en': 'Modified ',
      'km': 'បានកែប្រែ',
    },
    'zsio8g4a': {
      'en': '10/10/2024 05:30 PM',
      'km': '10/10/2024 ម៉ោង 05:00 ល្ងាច',
    },
    'snjg9xhm': {
      'en': 'Size',
      'km': 'ទំហំ',
    },
    'qk6p3ebs': {
      'en': '30.5 KB',
      'km': '',
    },
    'wgugv68k': {
      'en': 'Created ',
      'km': 'បានបង្កើត',
    },
    'yosv8sp4': {
      'en': '10/10/2024 05:00 PM',
      'km': '10/10/2024 ម៉ោង 05:00 ល្ងាច',
    },
    '40v9mxbs': {
      'en': 'Activity',
      'km': 'សកម្មភាព',
    },
    'a1mcdwh5': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    '661844ug': {
      'en': 'You renamed  an item',
      'km': 'អ្នកបានប្តូរឈ្មោះធាតុមួយ',
    },
    'utqbcm28': {
      'en': '10/10/2024 05:00 PM',
      'km': '10/10/2024 ម៉ោង 05:00 ល្ងាច',
    },
    '59abfavc': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថតឯកសារ',
    },
    'h54yxf2k': {
      'en': 'You uploaded an item',
      'km': 'អ្នកបានបញ្ចូលទិន្នន័យមួយ',
    },
    '0su74cha': {
      'en': '10/10/2024 05:00 PM',
      'km': '10/10/2024 ម៉ោង 05:00 ល្ងាច',
    },
    '9nvn0t02': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថតឯកសារ',
    },
    'u2zmxag5': {
      'en': 'Last Week',
      'km': 'សប្តាហ៍មុន',
    },
    'yi4t8r1m': {
      'en': 'You created a folder',
      'km': 'អ្នកបានបង្កើតថតឯកសារ',
    },
    'orhi91xv': {
      'en': '10/10/2024 05:00 PM',
      'km': '10/10/2024 ម៉ោង 05:00 ល្ងាច',
    },
    'zn55vihx': {
      'en': 'Folder Name',
      'km': 'ឈ្មោះថតឯកសារ',
    },
  },
  // ComponentRenameFolder
  {
    'vxjx5yhn': {
      'en': 'Rename',
      'km': 'ប្តូរឈ្មោះ',
    },
    'ga1btg1s': {
      'en': '',
      'km': '',
    },
    'en8ri3bk': {
      'en': 'rename here',
      'km': 'ប្តូរឈ្មោះនៅទីនេះ',
    },
    'u92knfdb': {
      'en': 'Close',
      'km': 'បិទ ',
    },
    'wl1p0wbp': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentSign-TabSetting
  {
    'g8t7ofve': {
      'en': 'Inbox',
      'km': 'ប្រអប់សំបុត្រ',
    },
    'emcmxida': {
      'en': 'Sent',
      'km': 'បានផ្ញើរ',
    },
    'sw6t8ky4': {
      'en': 'Priority',
      'km': 'សំខាន់',
    },
    'jc665qj2': {
      'en': 'Draft',
      'km': 'ព្រាងទុក',
    },
    '9aljrqkm': {
      'en': 'Trash',
      'km': 'ធុងសំរាម',
    },
    'lp6c0wkg': {
      'en': 'Archive',
      'km': 'ឯកសារសំខាន់',
    },
    'u3bq6gm1': {
      'en': 'Other',
      'km': 'ផ្សេងៗ',
    },
    'gck6kmxh': {
      'en': 'Close',
      'km': 'ចេញ',
    },
    'rkhju6h8': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentSign-MessageColumn
  {
    'gl26j9cc': {
      'en': 'Receive NO',
      'km': 'លេខឯកសារចូល',
    },
    'hh1eic1q': {
      'en': 'Send NO',
      'km': 'លេខឯកសារចេញ',
    },
    '02vk2mo9': {
      'en': 'Document Name',
      'km': 'ឈ្មោះឯកសារ',
    },
    'bqo3migz': {
      'en': 'From',
      'km': 'អ្នកផ្ញើ',
    },
    'lqtnilxk': {
      'en': 'To',
      'km': 'ទៅកាន់',
    },
    '7s0v4258': {
      'en': 'Sent Date',
      'km': 'កាលបរិច្ឆេទផ្ញើ',
    },
    '8ypdw74g': {
      'en': 'Receive Date',
      'km': 'កាលបរិច្ឆេទទទួល',
    },
    'iwi7omv1': {
      'en': 'Validate',
      'km': 'សុពលភាព',
    },
    'ow9purcq': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
    'otkos6r8': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'wvij9kcd': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentSign-CompleteDoc
  {
    '65hqisgt': {
      'en': 'Complete process Document:  ',
      'km': 'បញ្ចប់ដំណើរការឯកសារ៖',
    },
    '9u8v4jzv': {
      'en': 'Complete Document:  \n',
      'km': '',
    },
    'eclh3bst': {
      'en': 'Reference N.O',
      'km': 'លេខយោង',
    },
    'mcggrxf6': {
      'en': 'Note',
      'km': 'សម្គាល់',
    },
    'rb3t21dr': {
      'en': '',
      'km': '',
    },
    'rj4l4db6': {
      'en': '',
      'km': '',
    },
    'wcxwyqux': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'xixfgv3u': {
      'en': 'OK',
      'km': 'យល់ព្រម',
    },
    'r58u66pi': {
      'en': 'Please input value',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    '8czepgqu': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    'islmm6hw': {
      'en': 'Field is required',
      'km': 'សូមបញ្ចូលតម្លៃ!',
    },
    '7y043jfi': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
  },
  // ComponentSign-AddFieldProperty
  {
    'qtreyesd': {
      'en': 'Field Property',
      'km': 'លក្ខណៈនៃផ្នែក',
    },
    'r3izit1u': {
      'en': 'Label Name',
      'km': 'ឈ្មោះស្លាក',
    },
    '3srt6kg5': {
      'en': '',
      'km': 'ចំណាំ',
    },
    'dhn32e85': {
      'en': 'Note',
      'km': 'ចំណាំ',
    },
    '24l9qig9': {
      'en': 'Field Type',
      'km': 'ប្រភេទ​',
    },
    'so8e11y0': {
      'en': 'Text Field',
      'km': '',
    },
    '7v5c79dh': {
      'en': 'Text Field',
      'km': 'បញ្ចូលពាក្យ',
    },
    'y3xcpvlk': {
      'en': 'Select',
      'km': 'ជ្រើសរើស',
    },
    'salscygx': {
      'en': 'Toggle',
      'km': 'បិទបើក',
    },
    '927hs9i7': {
      'en': '',
      'km': '',
    },
    'qxj9kciq': {
      'en': '',
      'km': '',
    },
    'w8a88kpe': {
      'en': 'Initial Value',
      'km': 'តម្លៃដំបូង',
    },
    'kh5vn0jz': {
      'en': '',
      'km': 'ចំណាំ',
    },
    'mk4irr5v': {
      'en': 'Note',
      'km': 'ចំណាំ',
    },
    'diy3d93i': {
      'en': '',
      'km': '',
    },
    '0hfxvjx9': {
      'en': 'Is require',
      'km': 'ត្រូវបានទាមទារ',
    },
    'rx15dnnc': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'u686f0j7': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentDeleteFolder
  {
    'c9085n65': {
      'en': 'Delete Folder?',
      'km': 'លុបថតឯកសារ?',
    },
    'sxurnvcb': {
      'en': '\'Folder\'  will be deleted and you won\'t be able to restore it.',
      'km': '\'ថតឯកសារ\' នឹងត្រូវបានលុប ហើយអ្នកនឹងមិនអាចត្រឡប់វាឡើងវិញបានទេ។',
    },
    'wfe0sk61': {
      'en': 'Learn more.',
      'km': 'ស្វែងយល់បន្ថែម។',
    },
    '8p75o7qj': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'g1xwt8oj': {
      'en': 'Delete',
      'km': 'លុប',
    },
  },
  // ComponentOptionOrganize
  {
    '4izb4bfi': {
      'en': 'Move',
      'km': 'ផ្លាស់ទី',
    },
    '0j2dg2bv': {
      'en': 'Add to Favorites',
      'km': 'បន្ថែមទៅចំណូលចិត្ត',
    },
    '8yvcmwdl': {
      'en': 'Color Folder',
      'km': 'ពណ៌ថតឯកសារ',
    },
  },
  // add_new_account
  {
    'l2fewu0a': {
      'en': 'Add Account',
      'km': 'បន្ថែមគណនី',
    },
    'qn66qgxb': {
      'en': 'Email',
      'km': 'អ៊ីមែល',
    },
    '560epy4g': {
      'en': '  *',
      'km': '  *',
    },
    '4d8ikj5k': {
      'en': 'Password',
      'km': 'ពាក្យសម្ងាត់',
    },
    'vmjhp2tt': {
      'en': '  *',
      'km': '  *',
    },
    'uybzg44x': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // DocumentProccess
  {
    '3iu7rb6q': {
      'en': 'Add Reciption',
      'km': '',
    },
    'dbm9b2ki': {
      'en': 'Send to Other',
      'km': '',
    },
    's6fi41bg': {
      'en': 'Sign Myself',
      'km': '',
    },
    '6ru6plzp': {
      'en': 'Send in Company',
      'km': 'ផ្ញើនៅក្នុងក្រុមហ៊ុន/អង្គភាព',
    },
    'qyhoaj22': {
      'en': 'Approved ',
      'km': 'អនុម័ត',
    },
    'e00aakzk': {
      'en': 'HR Department ',
      'km': '',
    },
    '7fuqpqat': {
      'en': 'Sok San',
      'km': '',
    },
    'lkolensk': {
      'en': 'HR Department',
      'km': '',
    },
    'tqvmb5v7': {
      'en': 'Chang Heng',
      'km': '',
    },
    '22yih2wj': {
      'en': 'HR Department',
      'km': '',
    },
    'pnfih8be': {
      'en': 'Send to other Company',
      'km': '',
    },
    'opzss481': {
      'en': 'More Setting',
      'km': '',
    },
    '2kbdlz1b': {
      'en': 'Validate and Reminder',
      'km': '',
    },
    'kklcfcvc': {
      'en': 'Valid Till',
      'km': '',
    },
    'g6lb0gl7': {
      'en': '',
      'km': '',
    },
    '7mw02z5v': {
      'en': '',
      'km': '',
    },
    '3kbixlzu': {
      'en': 'Forever',
      'km': '',
    },
    'pxpxzax8': {
      'en': 'Auto Reminder',
      'km': '',
    },
    's3h4sq4t': {
      'en': 'Automatic reminders will only be delivered via email.',
      'km': '',
    },
    '327ths0i': {
      'en': 'Remind every',
      'km': '',
    },
    'husug48a': {
      'en': '',
      'km': '',
    },
    'bvszdqq2': {
      'en': '',
      'km': '',
    },
    'pr3tq03r': {
      'en': '5',
      'km': '',
    },
    'mhtzaybz': {
      'en': 'day',
      'km': '',
    },
    'xl0g7pbe': {
      'en': 'Note to all Reciptions',
      'km': '',
    },
    'b1xborg5': {
      'en': 'Descriptions',
      'km': '',
    },
  },
  // ComponentSign-FilterMessage
  {
    '8kkcf1sc': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'i83vliec': {
      'en': 'Today',
      'km': 'ថ្ងៃនេះ',
    },
    'unsg7dlg': {
      'en': 'Yesterday',
      'km': 'ម្សិលមិញ',
    },
    'ifb3uijt': {
      'en': 'This Week',
      'km': 'សប្តាហ៍នេះ',
    },
    'ovj2h95d': {
      'en': 'Last Week',
      'km': 'សប្តាហ៍មុន',
    },
    'xw2maeaw': {
      'en': 'This Month',
      'km': 'ខែនេះ',
    },
    'jgu0d03z': {
      'en': 'Last Month',
      'km': 'ខែមុន',
    },
    'wt66c91f': {
      'en': 'This Year',
      'km': 'ឆ្នាំនេះ',
    },
    '37yoxpbc': {
      'en': 'Select Specific Date',
      'km': 'ជ្រើសរើសកាលបរិច្ឆេទ',
    },
    'zrg90sry': {
      'en': '',
      'km': '',
    },
    'maz7hodt': {
      'en': 'Search...',
      'km': '',
    },
    'pbhccqi6': {
      'en': 'Draft',
      'km': 'ព្រាង',
    },
    '1yfgiu57': {
      'en': 'Schedule',
      'km': 'កាលវិភាគ',
    },
    'kwu5y2s5': {
      'en': 'In Progress',
      'km': 'កំពុងដំណើរការ',
    },
    '02q5ut0m': {
      'en': 'Approve',
      'km': 'អនុម័ត',
    },
    'y6d9a32n': {
      'en': 'Reject',
      'km': 'បដិសេធ',
    },
    'd53s950e': {
      'en': 'Complete',
      'km': 'រួចរាល់',
    },
    'gjvnvcf3': {
      'en': 'All',
      'km': 'ទាំងអស់',
    },
    'hjol1ehw': {
      'en': '',
      'km': '',
    },
    'f0mhpcgo': {
      'en': 'Search...',
      'km': '',
    },
    'tot6ut65': {
      'en': 'Close',
      'km': 'បិទ',
    },
    'm88to4n6': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentDocumentGetLink
  {
    'ax6zueg5': {
      'en': 'Share your project',
      'km': '',
    },
    '2osreue4': {
      'en': 'Your project has been created, now invite your team to continue.',
      'km': '',
    },
    '86a7lznq': {
      'en': 'Randy Peterson',
      'km': '',
    },
    'jegghy68': {
      'en': 'name@domainname.com',
      'km': '',
    },
    's6f4hy25': {
      'en': 'Randy Peterson',
      'km': '',
    },
    'etaj1ihk': {
      'en': 'name@domainname.com',
      'km': '',
    },
    'ozm7pmb1': {
      'en': 'Randy Peterson',
      'km': '',
    },
    'yeir94n3': {
      'en': 'name@domainname.com',
      'km': '',
    },
    'nva6w3sc': {
      'en': 'Add User',
      'km': '',
    },
    '5qy4tb4o': {
      'en': 'Project Link',
      'km': '',
    },
    'e2ifg94c': {
      'en': 'https://project.flutterflow.io/?quizRef=T7c8mXvkYFFCWjqyhxKe',
      'km': '',
    },
    'gu4l7qu4': {
      'en': 'Cancel',
      'km': '',
    },
    'bywamzb3': {
      'en': 'Send Invites',
      'km': '',
    },
  },
  // ComponentActivityFile
  {
    'pq5u9ai8': {
      'en': 'File Name',
      'km': '',
    },
    'u96pwoch': {
      'en': 'Details',
      'km': '',
    },
    'yr3fo8gm': {
      'en': 'Type',
      'km': '',
    },
    'wr78moow': {
      'en': 'PDF',
      'km': '',
    },
    'dfr2uwe0': {
      'en': 'Owner',
      'km': '',
    },
    '72ezcnhj': {
      'en': 'Me',
      'km': '',
    },
    't0m8ho59': {
      'en': 'Modified ',
      'km': '',
    },
    '5nc6av8a': {
      'en': '10/10/2024 05:30 PM',
      'km': '',
    },
    'zrjte285': {
      'en': 'Size',
      'km': '',
    },
    'stf1bxd0': {
      'en': '30.5 KB',
      'km': '',
    },
    '4iebf32j': {
      'en': 'Created ',
      'km': '',
    },
    '82jglnvd': {
      'en': '10/10/2024 05:00 PM',
      'km': '',
    },
    'viob4qor': {
      'en': 'Activity',
      'km': '',
    },
    '8fla71dr': {
      'en': 'Today',
      'km': '',
    },
    'nk0nmdvo': {
      'en': 'You renamed  an item',
      'km': '',
    },
    '3hokhcel': {
      'en': '10/10/2024 05:00 PM',
      'km': '',
    },
    'blo39dif': {
      'en': 'Folder Name',
      'km': '',
    },
    'ak5wxrko': {
      'en': 'You uploaded an item',
      'km': '',
    },
    'vny418i8': {
      'en': '10/10/2024 05:00 PM',
      'km': '',
    },
    'h7rti7k8': {
      'en': 'Folder Name',
      'km': '',
    },
    'bkfbe1s7': {
      'en': 'Last Week',
      'km': '',
    },
    'vuvguitt': {
      'en': 'You created a folder',
      'km': '',
    },
    'n30qx12y': {
      'en': '10/10/2024 05:00 PM',
      'km': '',
    },
    'vle79hh2': {
      'en': 'Folder Name',
      'km': '',
    },
  },
  // ComponentSign-ReceiverRecipt
  {
    'pso0qedy': {
      'en': 'Recipt for Reciptions',
      'km': 'បង្កាន់ដៃសម្រាប់អ្នកទទួល',
    },
    '91m04by8': {
      'en': 'Scan to find document',
      'km': 'ស្កេនដើម្បីស្វែងរកឯកសារ',
    },
    'ae0jl5hz': {
      'en': 'Receive NO:  ',
      'km': 'លេខឯកសារចូល៖',
    },
    '8isaarxb': {
      'en': 'Receive Date:  ',
      'km': 'កាលបរិច្ឆេទទទួល៖',
    },
    'wmeli19y': {
      'en': 'Appointment Date:  ',
      'km': 'កាលបរិច្ឆេទណាត់ជួប៖',
    },
    '6n7cqpcc': {
      'en': 'Document Name:  ',
      'km': 'ឈ្មោះឯកសារ៖',
    },
    'rmfdj6fn': {
      'en': 'Reciptions:  ',
      'km': 'អ្នកទទួលឯកសារ៖',
    },
    'bthd0ynj': {
      'en': 'Sender:  ',
      'km': 'អ្នកដាក់ឯកសារ៖',
    },
    'ehzlbzvc': {
      'en': '  ',
      'km': '',
    },
    'w08wii8y': {
      'en': 'Description:  ',
      'km': 'ការពិពណ៌នា៖',
    },
    '12bmjue1': {
      'en': 'OK',
      'km': 'យល់ព្រម',
    },
    'ghxs9fql': {
      'en': 'Please input value',
      'km': '',
    },
    'ss7s5ejn': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
    '4g8j6hvc': {
      'en': 'Field is required',
      'km': '',
    },
    'mwflok8h': {
      'en': 'Please choose an option from the dropdown',
      'km': '',
    },
  },
  // ComponentSign_DTInbox
  {
    'gc91qg4v': {
      'en': 'Receive NO',
      'km': 'លេខឯកសារចូល',
    },
    'macx83ts': {
      'en': 'Message Description',
      'km': 'ការពិពណ៌នារបស់សារ',
    },
    '3bsm2dp8': {
      'en': 'From',
      'km': 'តាមរយៈ',
    },
    'suhranou': {
      'en': 'Receive Date',
      'km': 'កាលបរិច្ឆេទទទួល',
    },
    'xrzdw9mk': {
      'en': 'Validate Date',
      'km': 'កាលបរិច្ឆេទផុតកំណត់',
    },
    'wcokx6qn': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
  },
  // ComponentSign_EmptyData
  {
    '2kekbd4k': {
      'en': 'You don\'t have any message!',
      'km': 'អ្នកមិនមានសារទេ!',
    },
  },
  // ComponentEditUserWorkflow
  {
    'v5xruenv': {
      'en': 'Choose User or Department',
      'km': 'ជ្រើសរើសអ្នកប្រើប្រាស់ ឬនាយកដ្ឋាន',
    },
    '8prfbgei': {
      'en': 'Choose Severity',
      'km': 'ជ្រើសរើសភាពចាំបាច់',
    },
    'fqexknne': {
      'en': '',
      'km': 'ត្រូវការហត្ថលេខា',
    },
    'mbso9trx': {
      'en': 'Signature needed',
      'km': 'ហត្ថលេខាដែលត្រូវការ',
    },
    'ovz7139d': {
      'en': 'Signature in-person',
      'km': 'ហត្ថលេខាដោយផ្ទាល់',
    },
    'vfj8ha39': {
      'en': 'Approver',
      'km': 'អ្នកអនុម័ត',
    },
    'wxzcdx99': {
      'en': 'Sent copy (CC)',
      'km': 'ផ្ញើច្បាប់ចម្លង (CC) ',
    },
    'sog83rtf': {
      'en': 'Select serverity',
      'km': '',
    },
    '6el6gpof': {
      'en': '',
      'km': '',
    },
    'h9kodeon': {
      'en': 'Choose User or Department',
      'km': 'ជ្រើសរើសអ្នកប្រើប្រាស់ ឬនាយកដ្ឋាន',
    },
    'v4vlqy0v': {
      'en': 'Select All',
      'km': 'ជ្រើសរើសទាំងអស់',
    },
    'o8gmjgm6': {
      'en': '',
      'km': '',
    },
    '3yb8mz7v': {
      'en': 'Search more',
      'km': 'ស្វែងរកបន្ថែម',
    },
    '7a5n4qrt': {
      'en': 'All Department',
      'km': 'នាយកដ្ឋានទាំងអស់',
    },
    'vkcc81dm': {
      'en': 'HR Department',
      'km': 'នាយកដ្ឋានធនធានមនុស្ស',
    },
    'jno6zoim': {
      'en': 'Managing Director',
      'km': 'នាយកគ្រប់គ្រង',
    },
    'j81k6nlz': {
      'en': 'Administrator Department',
      'km': 'នាយកដ្ឋានរដ្ឋបាល',
    },
    '99h9zayg': {
      'en': '',
      'km': 'នាយកដ្ឋានទាំងអស់',
    },
    'tf9yv2n1': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'wk9b4fts': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'mxhra2mk': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // component_editing
  {
    '0j3rolo5': {
      'en': 'Edit',
      'km': 'កែសម្រួល',
    },
    'ofgo60wu': {
      'en': 'Delete',
      'km': 'លុប',
    },
    '0s5iyxjr': {
      'en': 'Mark as Inactive',
      'km': 'សម្គាល់ថាមិនដំណើរការ',
    },
    'zwqn0kxm': {
      'en': 'Audit Trial',
      'km': 'ប្រវត្តិកែប្រែ',
    },
  },
  // component_configurationpopup
  {
    'fyrriq27': {
      'en': 'Configuration Information',
      'km': 'ព័ត៌មានអំពីការកំណត់រចនាសម្ព័ន្ធ',
    },
    '46xzfyvn': {
      'en': 'Document Process',
      'km': 'ដំណើរការឯកសារ',
    },
    'gsboovfz': {
      'en': 'Organization/Company',
      'km': 'អង្គភាព/ក្រុមហ៊ុន',
    },
    'rcs4cvq8': {
      'en': 'Tool',
      'km': 'ឧបករណ៍',
    },
    'be1flexs': {
      'en': 'Sign',
      'km': 'សញ្ញា',
    },
    'tw9psfh5': {
      'en': 'Others',
      'km': 'ផ្សេងៗ',
    },
    'a2id9j6y': {
      'en': 'Discard ',
      'km': 'បោះបង់',
    },
    'kq24q9dd': {
      'en': 'Apply',
      'km': 'យល់ព្រម',
    },
  },
  // ComponentAddUserWorkflowCopy
  {
    's29j8l2o': {
      'en': 'Choose User or Department',
      'km': 'ជ្រើសរើសអ្នកប្រើប្រាស់ ឬនាយកដ្ឋាន',
    },
    'gczj5wdc': {
      'en': 'Choose Severity',
      'km': 'ជ្រើសរើសភាពចាំបាច់',
    },
    'yecwe0pa': {
      'en': '',
      'km': 'ត្រូវការហត្ថលេខា',
    },
    'dct4u5nr': {
      'en': 'Signature needed',
      'km': 'ហត្ថលេខាដែលត្រូវការ',
    },
    '2rnq0x8a': {
      'en': 'Signature in-person',
      'km': 'ហត្ថលេខាដោយផ្ទាល់',
    },
    'glk35ns5': {
      'en': 'Approver',
      'km': 'អ្នកអនុម័ត',
    },
    'oo9ym31p': {
      'en': 'Sent copy (CC)',
      'km': 'ផ្ញើច្បាប់ចម្លង (CC) ',
    },
    'd6a51amp': {
      'en': 'Select serverity',
      'km': '',
    },
    'gfk0kbqb': {
      'en': '',
      'km': '',
    },
    'nzwpbeql': {
      'en': 'Choose User or Department',
      'km': 'ជ្រើសរើសអ្នកប្រើប្រាស់ ឬនាយកដ្ឋាន',
    },
    'x5kjy6cu': {
      'en': 'Select All',
      'km': 'ជ្រើសរើសទាំងអស់',
    },
    'pyr11wa9': {
      'en': '',
      'km': '',
    },
    'q61jf6qq': {
      'en': 'Search more',
      'km': 'ស្វែងរកបន្ថែម',
    },
    'nxuej9xa': {
      'en': 'All Department',
      'km': 'នាយកដ្ឋានទាំងអស់',
    },
    'brx4kx0c': {
      'en': 'HR Department',
      'km': 'នាយកដ្ឋានធនធានមនុស្ស',
    },
    'xh88qpb3': {
      'en': 'Managing Director',
      'km': 'នាយកគ្រប់គ្រង',
    },
    '00u2ef8s': {
      'en': 'Administrator Department',
      'km': 'នាយកដ្ឋានរដ្ឋបាល',
    },
    'pmxa9ulf': {
      'en': '',
      'km': 'នាយកដ្ឋានទាំងអស់',
    },
    '3hsmkhqr': {
      'en': 'Search...',
      'km': 'ស្វែងរក...',
    },
    'nirophs3': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    '47v9domp': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentSign_DTSend
  {
    'spgqh7ym': {
      'en': 'Send NO',
      'km': 'លេខឯកសារចេញ',
    },
    'dy7xg65w': {
      'en': 'Message Description',
      'km': 'ការពិពណ៌នារបស់សារ',
    },
    'hb1w87gz': {
      'en': 'To',
      'km': 'ទៅកាន់',
    },
    'cl5jumu9': {
      'en': 'Send Date',
      'km': 'កាលបរិច្ឆេទផ្ញើ​',
    },
    'j9xrlp86': {
      'en': 'Validate Date',
      'km': 'កាលបរិច្ឆេទផុតកំណត់',
    },
    'tvamc25w': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
  },
  // userview_component
  {
    '2wpoo944': {
      'en': 'User Name',
      'km': '',
    },
    'wht5ntuf': {
      'en': 'Time:  16.10.24',
      'km': '',
    },
  },
  // empty_list
  {
    'a95cimwb': {
      'en': 'No Data',
      'km': '',
    },
  },
  // ComponentSign_Priority
  {
    'ykf8h2vy': {
      'en': 'Priority:  ',
      'km': 'អាទិភាព៖  ',
    },
    'za8duu4f': {
      'en': 'Hello World',
      'km': '',
    },
    'r1gito5v': {
      'en': 'Sensitivity:  ',
      'km': 'ឯកជនភាព៖  ',
    },
    'zqm09mrl': {
      'en': 'Hello World',
      'km': '',
    },
  },
  // componentedit_information
  {
    'n4qwn5id': {
      'en': 'Edit Information',
      'km': '',
    },
    'ahfxhthu': {
      'en': 'Priority : Change and customize',
      'km': '',
    },
    'vgggj4eg': {
      'en': 'Workflow Process',
      'km': '',
    },
    'wsq5bm51': {
      'en': 'Prepare Signature',
      'km': '',
    },
    'x3nkt076': {
      'en': 'Preview Document',
      'km': '',
    },
    'jwtm5zq4': {
      'en': 'Department ',
      'km': '',
    },
    'e5ne52ab': {
      'en': 'Severity',
      'km': '',
    },
    'xmmcqbvt': {
      'en': 'Discard ',
      'km': '',
    },
    'j7xhtqdm': {
      'en': 'Apply',
      'km': '',
    },
  },
  // ComponentSign_DTAllMSG
  {
    'xkdeez65': {
      'en': 'Receive NO',
      'km': 'លេខឯកសារចូល',
    },
    '4lj0wx9m': {
      'en': 'Message Description',
      'km': 'ការពិពណ៌នារបស់សារ',
    },
    'izquq4l4': {
      'en': 'From',
      'km': 'តាមរយៈ',
    },
    's2bzh54a': {
      'en': 'Receive Date',
      'km': 'កាលបរិច្ឆេទទទួល',
    },
    'q41xvdjj': {
      'en': 'Validate Date',
      'km': 'កាលបរិច្ឆេទផុតកំណត់',
    },
    'ps3si5nr': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
  },
  // component_ministry_add
  {
    'bim1d2i9': {
      'en': 'Add Ministry',
      'km': 'បន្ថែមក្រសួង',
    },
    'i6mtdj5e': {
      'en': '* ',
      'km': '* ',
    },
    'n9rxn9tb': {
      'en': 'En_Name :',
      'km': 'ឈ្មោះអង់គ្លេស',
    },
    '6n5fv5dx': {
      'en': '* ',
      'km': '* ',
    },
    't4h3pdni': {
      'en': 'Kh_Name :',
      'km': 'ឈ្មោះខ្មែរ',
    },
    'f98yksd4': {
      'en': '* ',
      'km': '* ',
    },
    'f5vtnh3c': {
      'en': 'Date :',
      'km': 'កាលបរិច្ឆេទ',
    },
    '9x6nnubi': {
      'en': 'TextField',
      'km': '',
    },
    'l1kypj79': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'fjsnoloy': {
      'en': 'Add',
      'km': 'បន្ថែម',
    },
  },
  // ComponentSign_DTTrash
  {
    't7glhtrm': {
      'en': 'Receive NO',
      'km': 'លេខឯកសារចូល',
    },
    'wswr3fgd': {
      'en': 'Message Description',
      'km': 'ការពិពណ៌នារបស់សារ',
    },
    'zl1geb0r': {
      'en': 'From',
      'km': 'តាមរយៈ',
    },
    '65l1lvm3': {
      'en': 'Receive Date',
      'km': 'កាលបរិច្ឆេទទទួល',
    },
    'h0opgbi4': {
      'en': 'Validate Date',
      'km': 'កាលបរិច្ឆេទផុតកំណត់',
    },
    'jyim7txd': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
  },
  // cpListMessage
  {
    '2dowvsqx': {
      'en': 'Receive No',
      'km': 'លេខឯកសារចូល',
    },
    'uya81s7o': {
      'en': 'Document Name',
      'km': 'ឈ្មោះឯកសារ',
    },
    'uivc1mxn': {
      'en': 'From',
      'km': 'អ្នកផ្ញើ',
    },
    'yemidjnz': {
      'en': 'Receive Date',
      'km': 'កាលបរិច្ឆេទទទួល',
    },
    'eum0f8rp': {
      'en': 'Validate',
      'km': 'សុពលភាព',
    },
    'bidyfcmq': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
    'zv1g0c8o': {
      'en': 'NA-1',
      'km': '',
    },
    'j2bxtja0': {
      'en': 'Report request permission',
      'km': '',
    },
    '7zysh4py': {
      'en': 'Thlang Penglay',
      'km': '',
    },
    'tvt2ueur': {
      'en': '.UAT',
      'km': '',
    },
    'a6kyy20z': {
      'en': '01/09/2024',
      'km': '',
    },
    'a9j61m12': {
      'en': '20/09/2024',
      'km': '',
    },
    'ibnhu5q8': {
      'en': 'Completed',
      'km': '',
    },
    '1burh1ir': {
      'en': 'You don\'t have any message!',
      'km': '',
    },
  },
  // ComponentSign_DTDraft
  {
    'djx7bncv': {
      'en': 'Receive NO',
      'km': 'លេខឯកសារចូល',
    },
    'hpvmmp0k': {
      'en': 'Message Description',
      'km': 'ការពិពណ៌នារបស់សារ',
    },
    'onichjnp': {
      'en': 'To',
      'km': 'ទៅកាន់',
    },
    'uk1thq61': {
      'en': 'Create Date',
      'km': 'កាលបរិច្ឆេទបង្កើត',
    },
    'uudrst4a': {
      'en': 'Validate Date',
      'km': 'កាលបរិច្ឆេទផុតកំណត់',
    },
    'qjvf6ogn': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
  },
  // ComponentSign_DTPriority
  {
    'i27vsqky': {
      'en': 'Receive NO',
      'km': 'លេខឯកសារចូល',
    },
    'gxv1n2kw': {
      'en': 'Message Description',
      'km': 'ការពិពណ៌នារបស់សារ',
    },
    '219sci2y': {
      'en': 'To',
      'km': 'អ្នកទទូល',
    },
    'n47r0q8g': {
      'en': 'Receive Date',
      'km': 'កាលបរិច្ឆេទទទួល',
    },
    'kdat59we': {
      'en': 'Validate Date',
      'km': 'កាលបរិច្ឆេទផុតកំណត់',
    },
    '10qk1yuq': {
      'en': 'Status',
      'km': 'ស្ថានភាព',
    },
  },
  // component_edit_department
  {
    '44vshpyo': {
      'en': 'Edit Organization/Company',
      'km': '',
    },
    'l7wxuiic': {
      'en': '* ',
      'km': '* ',
    },
    '7fryic5q': {
      'en': 'En_Name : ',
      'km': 'ឈ្មោះអង់គ្លេស',
    },
    '5vx1qdc8': {
      'en': '* ',
      'km': '* ',
    },
    '5fc827ws': {
      'en': 'Kh_Name :',
      'km': 'ឈ្មោះខ្មែរ',
    },
    '0l12sl2c': {
      'en': '* ',
      'km': '* ',
    },
    'ljv6guy3': {
      'en': 'ID :',
      'km': 'លេខសម្គាល់',
    },
    'rqkdtxfz': {
      'en': '* ',
      'km': '* ',
    },
    'fp1dd4zh': {
      'en': 'Ministry :',
      'km': 'ក្រសួង',
    },
    'sah079ww': {
      'en': 'Select ',
      'km': '',
    },
    'aan0hnqa': {
      'en': 'Search...',
      'km': '',
    },
    'gmghfw88': {
      'en': '* ',
      'km': '* ',
    },
    'qmlukvvs': {
      'en': 'Minister :',
      'km': 'រដ្ឋមន្ត្រី',
    },
    'ajo8x5ta': {
      'en': 'Select ',
      'km': '',
    },
    'hljw6sjr': {
      'en': 'Search...',
      'km': '',
    },
    'm8efquqj': {
      'en': '* ',
      'km': '* ',
    },
    'h9ess5t3': {
      'en': 'Department :',
      'km': 'នាយកដ្ឋាន',
    },
    'dhynaf6o': {
      'en': 'Select ',
      'km': '',
    },
    'dylpgnzo': {
      'en': 'Search...',
      'km': '',
    },
    'x5h5umes': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'hnunv3pi': {
      'en': 'Save',
      'km': 'រក្សាទុក',
    },
  },
  // ComponentSign_MobileData
  {
    'u00ru7rz': {
      'en': 'Date:  ',
      'km': 'ថ្ងៃ៖  ',
    },
    'o1e1972s': {
      'en': 'Receive NO:  ',
      'km': 'លេខឯកសារចូល៖  ',
    },
    'tj16znrn': {
      'en': 'Send NO:  ',
      'km': 'លេខឯកសារចេញ៖  ',
    },
    'nypg9fxw': {
      'en': 'Description:  ',
      'km': 'ការពិពណ៌នាសារ៖',
    },
    '2n9qee3w': {
      'en': 'Validate Date:  ',
      'km': 'ថ្ងៃផុតកំណត់៖  ',
    },
  },
  // missingSelected
  {
    'ja22xhxi': {
      'en': 'No',
      'km': '',
    },
    'b38sjxzm': {
      'en': '/ ',
      'km': '',
    },
    'cutg6blq': {
      'en': 'Yes',
      'km': '',
    },
  },
  // component_minister_add
  {
    'zh7djel4': {
      'en': 'Add Minister',
      'km': '',
    },
    'dwedfgj2': {
      'en': '* ',
      'km': '* ',
    },
    'hlfott8x': {
      'en': 'En_Name :',
      'km': 'ឈ្មោះអង់គ្លេស',
    },
    '7el9556g': {
      'en': '* ',
      'km': '* ',
    },
    'etzidv7w': {
      'en': 'Kh_Name :',
      'km': 'ឈ្មោះខ្មែរ',
    },
    'pouuiltu': {
      'en': '* ',
      'km': '* ',
    },
    'a466h9jp': {
      'en': 'Date :',
      'km': 'កាលបរិច្ឆេទ',
    },
    'gonmr70a': {
      'en': '* ',
      'km': '* ',
    },
    'ei6o0oy2': {
      'en': 'Ministry :',
      'km': 'ក្រសួង',
    },
    'kwm5pulg': {
      'en': 'Select ',
      'km': '',
    },
    'ckz61z02': {
      'en': 'Search...',
      'km': '',
    },
    '3kxk7b2w': {
      'en': 'Cancel',
      'km': 'បោះបង់',
    },
    'cnty06xi': {
      'en': 'Add',
      'km': 'បន្ថែម',
    },
  },
  // component_add_department
  {
    '2hmosa1o': {
      'en': 'Add Department',
      'km': '',
    },
    'yet5y8m3': {
      'en': '* ',
      'km': '',
    },
    'n5der6km': {
      'en': 'En_Name :',
      'km': '',
    },
    'gisoq9nc': {
      'en': '* ',
      'km': '',
    },
    'ugu1y04i': {
      'en': 'Kh_Name :',
      'km': '',
    },
    'zz1nwpha': {
      'en': '* ',
      'km': '',
    },
    '05od96s4': {
      'en': 'Date :',
      'km': '',
    },
    'j22k0g21': {
      'en': '* ',
      'km': '',
    },
    'w2yk9d9c': {
      'en': 'Ministry :',
      'km': '',
    },
    'bk9m1qvv': {
      'en': 'Select ',
      'km': '',
    },
    'id5xvvhd': {
      'en': 'Search...',
      'km': '',
    },
    'tio3ep6m': {
      'en': '* ',
      'km': '',
    },
    'oxpub6kq': {
      'en': 'Minister :',
      'km': '',
    },
    'hlq7bfao': {
      'en': 'Select ',
      'km': '',
    },
    '5nsrzw3k': {
      'en': 'Search...',
      'km': '',
    },
    '28zkyd1t': {
      'en': 'Cancel',
      'km': '',
    },
    'tgtql5wg': {
      'en': 'Add',
      'km': '',
    },
  },
  // component_add_office
  {
    'jeflj6pv': {
      'en': 'Add Office',
      'km': '',
    },
    '1hzyl8te': {
      'en': '* ',
      'km': '* ',
    },
    'loryvqct': {
      'en': 'En_Name :',
      'km': 'ឈ្មោះអង់គ្លេស',
    },
    '1y7jyobp': {
      'en': '* ',
      'km': '* ',
    },
    '857pbclh': {
      'en': 'Kh_Name :',
      'km': 'ឈ្មោះខ្មែរ',
    },
    '3jo8dfaj': {
      'en': '* ',
      'km': '* ',
    },
    'z0kffhbz': {
      'en': 'Date :',
      'km': 'កាលបរិច្ឆេទ',
    },
    '0zsk8duv': {
      'en': '* ',
      'km': '* ',
    },
    '6ee1apdm': {
      'en': 'Ministry :',
      'km': 'ក្រសួង',
    },
    'gfoffp3j': {
      'en': 'Option 1',
      'km': '',
    },
    'sny7tfc4': {
      'en': 'Option 2',
      'km': '',
    },
    'q89utfdq': {
      'en': 'Option 3',
      'km': '',
    },
    '6vp90h8u': {
      'en': 'Select ',
      'km': '',
    },
    'g3aeon9x': {
      'en': 'Search...',
      'km': '',
    },
    'f0bxi0oc': {
      'en': '* ',
      'km': '* ',
    },
    '3wj936bl': {
      'en': 'Minister :',
      'km': 'រដ្ឋមន្ត្រី',
    },
    'r9u19stq': {
      'en': 'Option 1',
      'km': '',
    },
    'npkjl5ar': {
      'en': 'Option 2',
      'km': '',
    },
    '5lpxwwww': {
      'en': 'Option 3',
      'km': '',
    },
    'jgw01y8u': {
      'en': 'Select ',
      'km': '',
    },
    'tjdchtvz': {
      'en': 'Search...',
      'km': '',
    },
    '5d3tump2': {
      'en': '* ',
      'km': '* ',
    },
    '9ytcjf11': {
      'en': 'Department :',
      'km': 'នាយកដ្ឋាន',
    },
    'olnqa0ih': {
      'en': 'Option 1',
      'km': '',
    },
    '2o6h54e7': {
      'en': 'Option 2',
      'km': '',
    },
    'uitotk3c': {
      'en': 'Option 3',
      'km': '',
    },
    '5uhw7szk': {
      'en': 'Select ',
      'km': '',
    },
    'jxfbqptd': {
      'en': 'Search...',
      'km': '',
    },
    'u0jilr1u': {
      'en': 'Cancel',
      'km': '',
    },
    'fh72bbzo': {
      'en': 'Add',
      'km': '',
    },
  },
  // component_edit_serverity
  {
    '1fgw14gp': {
      'en': '* ',
      'km': '',
    },
    'v5v2ngfh': {
      'en': 'Kh_Name : ',
      'km': '',
    },
    '12wg1bml': {
      'en': '* ',
      'km': '',
    },
    'mpuwi2im': {
      'en': 'En_Name : ',
      'km': '',
    },
    'qgmfeg6u': {
      'en': 'Discard ',
      'km': '',
    },
    'z5dyqnyh': {
      'en': 'Apply',
      'km': '',
    },
  },
  // ComponetDocumentList
  {
    'r5te4lno': {
      'en': 'Name',
      'km': '',
    },
    'gfzaeiul': {
      'en': 'Edit Header 3',
      'km': '',
    },
    'kr4b61gm': {
      'en': 'Edit Column 3',
      'km': '',
    },
    '3c29tpj2': {
      'en': 'Edit Header 4',
      'km': '',
    },
    'ln6le8ry': {
      'en': 'Edit Column 4',
      'km': '',
    },
    'g06mwvi1': {
      'en': 'Edit Header 5',
      'km': '',
    },
    'n5zdcy1x': {
      'en': 'Edit Column 5',
      'km': '',
    },
    'wey99dhc': {
      'en': 'Edit Header 6',
      'km': '',
    },
    'ozo2vjpi': {
      'en': 'Edit Column 6',
      'km': '',
    },
    'q3h93n7y': {
      'en': 'Edit Header 7',
      'km': '',
    },
    'bgad5dce': {
      'en': 'Edit Column 7',
      'km': '',
    },
    '8gn8ivk7': {
      'en': 'Edit Header 8',
      'km': '',
    },
    'xw1nnyhs': {
      'en': 'Edit Column 8',
      'km': '',
    },
  },
  // component_search_filter
  {
    'xevbg5m2': {
      'en': 'Search',
      'km': 'ស្វែងរក',
    },
    'eqt4ssb2': {
      'en': 'Priority',
      'km': '',
    },
    'zooc0ub8': {
      'en': 'Priority',
      'km': '',
    },
    'qnroycvq': {
      'en': 'Category',
      'km': '',
    },
    '4t4x79c9': {
      'en': 'Sensitivity',
      'km': '',
    },
    'g21cu1gg': {
      'en': 'Serverity',
      'km': '',
    },
    'rklk53n6': {
      'en': '',
      'km': '',
    },
    'ulgc5jse': {
      'en': 'Search...',
      'km': '',
    },
  },
  // Button1
  {
    '4x61h74k': {
      'en': 'Cancel',
      'km': '',
    },
    'x8rk2ivu': {
      'en': 'Save',
      'km': '',
    },
  },
  // Button2
  {
    'ysdo8tns': {
      'en': 'Cancel',
      'km': '',
    },
    'r0zr97r9': {
      'en': 'Save',
      'km': '',
    },
  },
  // Button3
  {
    'vrgl6f2e': {
      'en': 'Cancel',
      'km': '',
    },
    'fxp0dbn1': {
      'en': 'Save',
      'km': '',
    },
  },
  // DarkandLight
  {
    '3d0lcrrt': {
      'en': 'Dark Mode',
      'km': 'ងងឹត',
    },
    'l1cknn5w': {
      'en': 'Light Mode',
      'km': 'ភ្លឺ',
    },
    'o8bs549v': {
      'en': 'System Mode',
      'km': 'ភ្លឺ',
    },
  },
  // DarkandLight2
  {
    '1ooofnwi': {
      'en': 'Light Mode',
      'km': 'ភ្លឺ',
    },
    '4pk3vzdw': {
      'en': 'Dark Mode',
      'km': 'ងងឹត',
    },
    '1jqrj97d': {
      'en': 'System Mode',
      'km': 'ប្រព័ន្ធ',
    },
  },
  // DarkandLight3
  {
    'lzhcuxna': {
      'en': 'Light Mode',
      'km': '',
    },
    'kxepqoim': {
      'en': 'Dark Mode',
      'km': '',
    },
    'k5klm4ty': {
      'en': 'System Mode',
      'km': '',
    },
  },
  // Miscellaneous
  {
    'tzm5opaa': {
      'en': 'Email Address',
      'km': 'អាសយដ្ឋានអ៊ីមែល',
    },
    'uvsotzng': {
      'en': 'Please enter a valid email...',
      'km': 'សូមបញ្ចូលអ៊ីមែលដែលមានសុពលភាព...',
    },
    'qzs5522v': {
      'en': 'TextField',
      'km': 'វាលអត្ថបទ',
    },
    'ep0z6b8z': {
      'en': 'Button',
      'km': 'ប៊ូតុង',
    },
    'xoauw3rf': {
      'en': 'Button',
      'km': 'ប៊ូតុង',
    },
    'krn8norx': {
      'en': 'Button',
      'km': 'ប៊ូតុង',
    },
    'hxsxj681': {
      'en': '',
      'km':
          'ដើម្បីថតរូប ឬវីដេអូ កម្មវិធីនេះទាមទារការអនុញ្ញាតដើម្បីចូលប្រើកាមេរ៉ា។',
    },
    'e7agr7ys': {
      'en': '',
      'km':
          'ដើម្បីបញ្ចូលទិន្នន័យ កម្មវិធីនេះទាមទារការអនុញ្ញាតដើម្បីចូលប្រើបណ្ណាល័យរូបថត។',
    },
    'v6nyisvj': {
      'en': 'Notification from DMS',
      'km': '',
    },
    '65e2tfs2': {
      'en': '',
      'km': 'កំហុស៖ [error]',
    },
    'ddazihx4': {
      'en': '',
      'km': 'បានផ្ញើអ៊ីមែលដើម្បីកំណត់ពាក្យសម្ងាត់ឡើងវិញ!',
    },
    'db03cpjj': {
      'en': '',
      'km': 'ទាមទារអ៊ីមែល!',
    },
    'fdb9078p': {
      'en': '',
      'km': 'ទាមទារលេខទូរស័ព្ទ ហើយត្រូវចាប់ផ្តើមដោយសញ្ញា​ (+) ។',
    },
    '80ouzj9q': {
      'en': '',
      'km': 'ពាក្យសម្ងាត់មិនត្រូវគ្នា។',
    },
    '6rzhptp9': {
      'en': '',
      'km': 'បញ្ចូលលេខកូដផ្ទៀងផ្ទាត់ SMS។',
    },
    'ce8c4ty0': {
      'en': '',
      'km':
          'រយះពេលយូរចាប់តាំងពីការចូលគណនីចុងក្រោយ។ សូមចូលគណនីម្តងទៀត មុនពេលលុបគណនីរបស់អ្នក។',
    },
    'wqdejty3': {
      'en': '',
      'km':
          'រយះពេលយូរចាប់តាំងពីការចូលថ្មីៗនេះ។ ចូលមុនពេលធ្វើបច្ចុប្បន្នភាពអ៊ីមែលរបស់អ្នក។',
    },
    'uc3oboyp': {
      'en': '',
      'km': 'បានផ្ញើអ៊ីមែលដើម្បីផ្លាស់ប្តូរអ៊ីមែល!',
    },
    'paakjo89': {
      'en': '',
      'km': 'អ៊ីមែលបានប្រើប្រាស់រួចជាមួយគណនីផ្សេងទៀត។',
    },
    '6wkfe1xt': {
      'en': '',
      'km':
          'ឯកសារបញ្ជាក់អត្តសញ្ញាណដែលបានផ្តល់គឺមិនត្រឹមត្រូវ ខ្វះ/លើស ឬផុតកំណត់។',
    },
    'kcvqa08x': {
      'en': '',
      'km': 'ទម្រង់ឯកសារមិនត្រឹមត្រូវ',
    },
    'dqrzd6sq': {
      'en': '',
      'km': 'កំពុងបញ្ចូលឯកសារ...',
    },
    'dpqtohyf': {
      'en': '',
      'km': 'ជោគជ័យ!',
    },
    'v01vf71s': {
      'en': '',
      'km': 'បរាជ័យក្នុងការបញ្ចូលទិន្នន័យ',
    },
    'gcv6def1': {
      'en': '',
      'km': '',
    },
    'um9es99m': {
      'en': '',
      'km': 'ជ្រើសរើសប្រភព',
    },
    'o4enbz4j': {
      'en': '',
      'km': 'វិចិត្រសាល',
    },
    '8z4tvfh7': {
      'en': '',
      'km': 'វិចិត្រសាល​ (រូបភាព)',
    },
    '2ybzla8x': {
      'en': '',
      'km': 'វិចិត្រសាល​ (វីដេអូ)',
    },
    'd1wdf5i1': {
      'en': '',
      'km': 'កាមេរ៉ា',
    },
    '1m54xixb': {
      'en': '',
      'km': '',
    },
    '2py80kgi': {
      'en': '',
      'km': '',
    },
    'p6lsrh2a': {
      'en': '',
      'km': '',
    },
    'ne8cclp9': {
      'en': '',
      'km': '',
    },
  },
].reduce((a, b) => a..addAll(b));
