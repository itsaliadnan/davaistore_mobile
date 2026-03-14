///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsAr = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsHomeAr home = TranslationsHomeAr._(_root);
	late final TranslationsAuthAr auth = TranslationsAuthAr._(_root);
	late final TranslationsOrdersAr orders = TranslationsOrdersAr._(_root);
	late final TranslationsProfileAr profile = TranslationsProfileAr._(_root);
}

// Path: home
class TranslationsHomeAr {
	TranslationsHomeAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ar: 'تصفح حسب الفئة'
	String get browseByCategory => 'تصفح حسب الفئة';

	/// ar: 'ابحث عن منتج'
	String get searchProduct => 'ابحث عن منتج';

	/// ar: 'المنتجات'
	String get products => 'المنتجات';

	/// ar: 'الفئات'
	String get categories => 'الفئات';

	/// ar: 'لم يتم العثور على منتجات'
	String get noProductsFound => 'لم يتم العثور على منتجات';

	/// ar: 'جميع المنتجات'
	String get allProducts => 'جميع المنتجات';

	/// ar: 'الأكثر مبيعًا'
	String get bestSellers => 'الأكثر مبيعًا';

	/// ar: 'الوافدون الجدد'
	String get newArrivals => 'الوافدون الجدد';

	/// ar: 'أحذية'
	String get shoes => 'أحذية';

	/// ar: 'حقائب'
	String get bags => 'حقائب';

	/// ar: 'قبعات'
	String get hats => 'قبعات';

	/// ar: 'ساعات'
	String get watches => 'ساعات';
}

// Path: auth
class TranslationsAuthAr {
	TranslationsAuthAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ar: 'Davai Store'
	String get davaiStore => 'Davai Store';

	/// ar: 'أدخل بريدك الإلكتروني'
	String get enterYourEmail => 'أدخل بريدك الإلكتروني';

	/// ar: 'أدخل كلمة المرور الخاصة بك'
	String get enterYourPassword => 'أدخل كلمة المرور الخاصة بك';

	/// ar: 'تسجيل الدخول'
	String get login => 'تسجيل الدخول';

	/// ar: 'يرجى ملء جميع الحقول'
	String get pleaseFillInAllFields => 'يرجى ملء جميع الحقول';

	/// ar: 'تنسيق البريد الإلكتروني غير صالح'
	String get invalidEmailFormat => 'تنسيق البريد الإلكتروني غير صالح';

	/// ar: 'تم تسجيل الدخول بنجاح'
	String get loginSuccessful => 'تم تسجيل الدخول بنجاح';

	/// ar: 'فشل تسجيل الدخول'
	String get loginFailed => 'فشل تسجيل الدخول';

	/// ar: 'تسجيل الدخول باستخدام جوجل'
	String get loginWithGoogle => 'تسجيل الدخول باستخدام جوجل';

	/// ar: 'ليس لديك حساب؟'
	String get dontHaveAnAccount => 'ليس لديك  حساب؟';

	/// ar: 'إنشاء حساب'
	String get signUp => 'إنشاء حساب';

	/// ar: 'املأ هذا النموذج لإنشاء حساب'
	String get fillThisFormToCreateAnAccount => 'املأ هذا النموذج لإنشاء حساب';

	/// ar: 'يرجى ملء جميع الحقول النصية'
	String get pleaseFillAllTextFields => 'يرجى ملء جميع الحقول النصية';

	/// ar: 'أدخل اسمك الكامل'
	String get enterYourFullName => 'أدخل اسمك الكامل';

	/// ar: 'تأكيد كلمة المرور الخاصة بك'
	String get confirmYourPassword => 'تأكيد كلمة المرور الخاصة بك';

	/// ar: 'يرجى اختيار صورة ملف شخصي'
	String get pleaseSelectAProfilePicture => 'يرجى اختيار صورة ملف شخصي';

	/// ar: 'تم إنشاء الحساب بنجاح'
	String get signUpSuccessful => 'تم إنشاء الحساب بنجاح';

	/// ar: 'فشل إنشاء الحساب'
	String get signUpFailed => 'فشل إنشاء الحساب';

	/// ar: 'هل لديك حساب بالفعل?'
	String get alreadyHaveAnAccount => 'هل لديك حساب بالفعل?';

	/// ar: 'إنشاء حساب باستخدام جوجل'
	String get signupWithGoogle => 'إنشاء حساب باستخدام جوجل';
}

// Path: orders
class TranslationsOrdersAr {
	TranslationsOrdersAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ar: 'طلباتي'
	String get myOrders => 'طلباتي';

	/// ar: 'لم يتم العثور على طلبات'
	String get noOrdersFound => 'لم يتم العثور على طلبات';

	/// ar: 'تفاصيل الطلب'
	String get orderDetails => 'تفاصيل الطلب';

	/// ar: 'المبلغ الإجمالي'
	String get totalAmount => 'المبلغ الإجمالي';

	/// ar: 'حالة الطلب'
	String get orderStatus => 'حالة الطلب';

	/// ar: 'قيد الانتظار'
	String get pending => 'قيد الانتظار';

	/// ar: 'تم الشحن'
	String get shipped => 'تم الشحن';

	/// ar: 'تم التسليم'
	String get delivered => 'تم التسليم';

	/// ar: 'تم الإلغاء'
	String get cancelled => 'تم الإلغاء';
}

// Path: profile
class TranslationsProfileAr {
	TranslationsProfileAr._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ar: 'الملف الشخصي'
	String get profile => 'الملف الشخصي';

	/// ar: 'تعديل الملف الشخصي'
	String get editProfile => 'تعديل الملف الشخصي';

	/// ar: 'الاسم الكامل'
	String get fullName => 'الاسم الكامل';

	/// ar: 'البريد الإلكتروني'
	String get email => 'البريد الإلكتروني';

	/// ar: 'رقم الهاتف'
	String get phoneNumber => 'رقم الهاتف';

	/// ar: 'العنوان'
	String get address => 'العنوان';

	/// ar: 'حفظ التغييرات'
	String get saveChanges => 'حفظ التغييرات';

	/// ar: 'تسجيل الخروج'
	String get logout => 'تسجيل الخروج';

	/// ar: 'الإعدادات'
	String get settings => 'الإعدادات';

	/// ar: 'اللغة'
	String get language => 'اللغة';

	/// ar: 'وضع العرض'
	String get display => 'وضع العرض';

	/// ar: 'اختر الوضع'
	String get selectMode => 'اختر الوضع';

	/// ar: 'الإشعارات'
	String get notifications => 'الإشعارات';

	/// ar: 'الخصوصية والأمان'
	String get privacyAndSecurity => 'الخصوصية والأمان';

	/// ar: 'المساعدة والدعم'
	String get helpAndSupport => 'المساعدة والدعم';

	/// ar: 'حول'
	String get about => 'حول';

	/// ar: 'اختر اللغة'
	String get selectLanguage => 'اختر اللغة';

	/// ar: 'الإنجليزية'
	String get english => 'الإنجليزية';

	/// ar: 'العربية'
	String get arabic => 'العربية';

	/// ar: 'تمكين الإشعارات'
	String get enableNotifications => 'تمكين الإشعارات';

	/// ar: 'تعطيل الإشعارات'
	String get disableNotifications => 'تعطيل الإشعارات';

	/// ar: 'فاتح'
	String get light => 'فاتح';

	/// ar: 'داكن'
	String get dark => 'داكن';

	/// ar: 'النظام'
	String get system => 'النظام';
}

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'home.browseByCategory' => 'تصفح حسب الفئة',
			'home.searchProduct' => 'ابحث عن منتج',
			'home.products' => 'المنتجات',
			'home.categories' => 'الفئات',
			'home.noProductsFound' => 'لم يتم العثور على منتجات',
			'home.allProducts' => 'جميع المنتجات',
			'home.bestSellers' => 'الأكثر مبيعًا',
			'home.newArrivals' => 'الوافدون الجدد',
			'home.shoes' => 'أحذية',
			'home.bags' => 'حقائب',
			'home.hats' => 'قبعات',
			'home.watches' => 'ساعات',
			'auth.davaiStore' => 'Davai Store',
			'auth.enterYourEmail' => 'أدخل بريدك الإلكتروني',
			'auth.enterYourPassword' => 'أدخل كلمة المرور الخاصة بك',
			'auth.login' => 'تسجيل الدخول',
			'auth.pleaseFillInAllFields' => 'يرجى ملء جميع الحقول',
			'auth.invalidEmailFormat' => 'تنسيق البريد الإلكتروني غير صالح',
			'auth.loginSuccessful' => 'تم تسجيل الدخول بنجاح',
			'auth.loginFailed' => 'فشل تسجيل الدخول',
			'auth.loginWithGoogle' => 'تسجيل الدخول باستخدام جوجل',
			'auth.dontHaveAnAccount' => 'ليس لديك  حساب؟',
			'auth.signUp' => 'إنشاء حساب',
			'auth.fillThisFormToCreateAnAccount' => 'املأ هذا النموذج لإنشاء حساب',
			'auth.pleaseFillAllTextFields' => 'يرجى ملء جميع الحقول النصية',
			'auth.enterYourFullName' => 'أدخل اسمك الكامل',
			'auth.confirmYourPassword' => 'تأكيد كلمة المرور الخاصة بك',
			'auth.pleaseSelectAProfilePicture' => 'يرجى اختيار صورة ملف شخصي',
			'auth.signUpSuccessful' => 'تم إنشاء الحساب بنجاح',
			'auth.signUpFailed' => 'فشل إنشاء الحساب',
			'auth.alreadyHaveAnAccount' => 'هل لديك حساب بالفعل?',
			'auth.signupWithGoogle' => 'إنشاء حساب باستخدام جوجل',
			'orders.myOrders' => 'طلباتي',
			'orders.noOrdersFound' => 'لم يتم العثور على طلبات',
			'orders.orderDetails' => 'تفاصيل الطلب',
			'orders.totalAmount' => 'المبلغ الإجمالي',
			'orders.orderStatus' => 'حالة الطلب',
			'orders.pending' => 'قيد الانتظار',
			'orders.shipped' => 'تم الشحن',
			'orders.delivered' => 'تم التسليم',
			'orders.cancelled' => 'تم الإلغاء',
			'profile.profile' => 'الملف الشخصي',
			'profile.editProfile' => 'تعديل الملف الشخصي',
			'profile.fullName' => 'الاسم الكامل',
			'profile.email' => 'البريد الإلكتروني',
			'profile.phoneNumber' => 'رقم الهاتف',
			'profile.address' => 'العنوان',
			'profile.saveChanges' => 'حفظ التغييرات',
			'profile.logout' => 'تسجيل الخروج',
			'profile.settings' => 'الإعدادات',
			'profile.language' => 'اللغة',
			'profile.display' => 'وضع العرض',
			'profile.selectMode' => 'اختر الوضع',
			'profile.notifications' => 'الإشعارات',
			'profile.privacyAndSecurity' => 'الخصوصية والأمان',
			'profile.helpAndSupport' => 'المساعدة والدعم',
			'profile.about' => 'حول',
			'profile.selectLanguage' => 'اختر اللغة',
			'profile.english' => 'الإنجليزية',
			'profile.arabic' => 'العربية',
			'profile.enableNotifications' => 'تمكين الإشعارات',
			'profile.disableNotifications' => 'تعطيل الإشعارات',
			'profile.light' => 'فاتح',
			'profile.dark' => 'داكن',
			'profile.system' => 'النظام',
			_ => null,
		};
	}
}
