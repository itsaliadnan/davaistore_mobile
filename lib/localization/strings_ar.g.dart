///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsAr = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
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

	/// ar: 'base_repo'
	String get appTitle => 'base_repo';

	/// ar: 'Ar'
	String get localName => 'Ar';

	/// ar: 'اعد المحاولة'
	String get retry => 'اعد المحاولة';

	/// ar: 'الكل'
	String get all => 'الكل';

	/// ar: 'لا يوجد عناصر'
	String get noItemsFoundError => 'لا يوجد عناصر';

	/// ar: 'حدث خطأ'
	String get unknownError => 'حدث خطأ';

	/// ar: 'حدث خطأ في الاتصال'
	String get connectionError => 'حدث خطأ في الاتصال';

	/// ar: 'البريد الالكتروني أو كلمة المرور غير صحيح'
	String get invalidCredentials => 'البريد الالكتروني أو كلمة المرور غير صحيح';

	/// ar: 'البريد الالكتروني مستخدم'
	String get usedEmail => 'البريد الالكتروني مستخدم';

	/// ar: 'الكود غير صحيح'
	String get invalidPasswordResetCode => 'الكود غير صحيح';

	/// ar: 'الكود انتهي'
	String get expiredPasswordResetCode => 'الكود انتهي';

	/// ar: 'الطلب غير صحيح'
	String get invalidRequest => 'الطلب غير صحيح';

	/// ar: 'غير مصرح'
	String get unauthorized => 'غير مصرح';

	/// ar: 'غير مصرح'
	String get forbidden => 'غير مصرح';

	/// ar: 'غير موجود'
	String get notFound => 'غير موجود';

	/// ar: 'حدث خطأ في الاتصال'
	String get unexpectedApi => 'حدث خطأ في الاتصال';

	/// ar: 'انتهت الجلسة'
	String get sessionExpired => 'انتهت الجلسة';

	/// ar: 'تسجيل الخروج'
	String get logout => 'تسجيل الخروج';

	/// ar: 'البريد الالكتروني مطلوب'
	String get validatorEmail => 'البريد الالكتروني مطلوب';

	/// ar: '$n حرف مطلوب'
	String validatorMinLength({required Object n}) => '${n} حرف مطلوب';

	/// ar: '$n حرف مطلوب'
	String validatorMaxLength({required Object n}) => '${n} حرف مطلوب';

	/// ar: 'رقم الهاتف مطلوب'
	String get validatorPhoneNumber => 'رقم الهاتف مطلوب';

	/// ar: 'الحقل مطلوب'
	String get validatorRequired => 'الحقل مطلوب';

	/// ar: 'الرابط مطلوب'
	String get validatorUrl => 'الرابط مطلوب';

	/// ar: 'الไอبي مطلوب'
	String get validatorIp => 'الไอبي مطلوب';

	/// ar: 'الايبي في 6 مطلوب'
	String get validatorIpv6 => 'الايبي في 6 مطلوب';

	/// ar: 'رقم الهاتف'
	String get phoneNumber => 'رقم الهاتف';

	/// ar: 'بحث'
	String get search => 'بحث';

	/// ar: 'اسم المستخدم'
	String get userName => 'اسم المستخدم';

	/// ar: 'كلمة المرور'
	String get password => 'كلمة المرور';

	/// ar: 'تسجيل الدخول'
	String get login => 'تسجيل الدخول';

	/// ar: 'ذكر'
	String get male => 'ذكر';

	/// ar: 'انثى'
	String get female => 'انثى';

	/// ar: 'اللغة'
	String get language => 'اللغة';

	/// ar: 'العربية'
	String get arabic => 'العربية';

	/// ar: 'الانجليزية'
	String get english => 'الانجليزية';

	/// ar: 'قم بملئ البيانات لتسجيل الدخول'
	String get fillToLogin => 'قم بملئ البيانات لتسجيل الدخول';

	/// ar: 'هل تواجه مشكلة في تسجيل الدخول؟'
	String get problemToLogin => 'هل تواجه مشكلة في تسجيل الدخول؟';

	/// ar: 'نسيت كلمة المرور؟'
	String get forgotPassword => 'نسيت كلمة المرور؟';

	/// ar: ' تعيين كلمة المرور'
	String get resetPassword => ' تعيين كلمة المرور';

	/// ar: 'تواصل مع الدعم '
	String get contactSupport => 'تواصل مع الدعم ';

	/// ar: 'واتساب'
	String get whatsapp => 'واتساب';

	/// ar: 'إيميل'
	String get email => 'إيميل';

	/// ar: '+9647722657114'
	String get whatsapp_number => '+9647722657114';

	/// ar: 'its.ali.adnan@gmail.com'
	String get email_address => 'its.ali.adnan@gmail.com';

	/// ar: 'نحن هنا للمساعدة'
	String get we_are_here_to_help => 'نحن هنا للمساعدة';

	/// ar: 'اختر طريقة الاتصال المفضلة لديك'
	String get choose_your_preferred_method => 'اختر طريقة الاتصال المفضلة لديك';

	/// ar: 'تعذر فتح البريد الإلكتروني'
	String get could_not_open_email => 'تعذر فتح البريد الإلكتروني';

	/// ar: 'تعذر فتح واتساب'
	String get could_not_open_WhatsApp => 'تعذر فتح واتساب';

	/// ar: 'دعم العملاء'
	String get costomer_support => 'دعم العملاء';

	/// ar: 'حدث خطأ أثناء الطلب: {{error}}'
	String get request_error => 'حدث خطأ أثناء الطلب: {{error}}';

	/// ar: 'متابعة'
	String get kContinue => 'متابعة';

	/// ar: 'الرجاء إدخال بريد إلكتروني صحيح'
	String get please_enter_valid_email => 'الرجاء إدخال بريد إلكتروني صحيح';

	/// ar: 'الرجاء إدخال رقم هاتفك'
	String get please_enter_your_phone_number => 'الرجاء إدخال رقم هاتفك';

	/// ar: 'رقم الهاتف'
	String get phone_number => 'رقم الهاتف';

	/// ar: 'العراق'
	String get IQ => 'العراق';

	/// ar: 'قم بختيار طريقة تأكيد الحساب ومن ثم قم بضبط كلمة مرور جديدة'
	String get recover_methods => 'قم بختيار طريقة تأكيد الحساب ومن ثم قم بضبط كلمة مرور جديدة';

	/// ar: 'الرجاء إدخال رمز التحقق'
	String get otp_verification_code => 'الرجاء إدخال رمز التحقق';

	/// ar: 'رمز التحقق غير صحيح'
	String get invalid_otp_code => 'رمز التحقق غير صحيح';

	/// ar: 'تأكيد رمز التحقق'
	String get confirm_otp_code => 'تأكيد رمز التحقق';

	/// ar: 'رمز التحقق'
	String get otp_code => 'رمز التحقق';

	/// ar: 'لقد أرسلنا كود تحقق على رقمك أدخل الرمز لتأكيد العملية'
	String get verification_code_sent => 'لقد أرسلنا كود تحقق على رقمك\nأدخل الرمز لتأكيد العملية';

	/// ar: 'الرجاء ملء جميع الحقول'
	String get fill_fields => 'الرجاء ملء جميع الحقول';

	/// ar: 'كلمتا المرور غير متطابقتان'
	String get passwords_not_match => 'كلمتا المرور غير متطابقتان';

	/// ar: 'تم إعادة تعيين كلمة المرور بنجاح'
	String get password_reset_success => 'تم إعادة تعيين كلمة المرور بنجاح';

	/// ar: 'تأكيد كلمة المرور'
	String get confirm_password => 'تأكيد كلمة المرور';

	/// ar: 'كلمة المرور الجديدة'
	String get new_password => 'كلمة المرور الجديدة';

	/// ar: 'ادخل كلمة المرور الجديدة'
	String get enter_new_password => 'ادخل كلمة المرور الجديدة';

	/// ar: 'تعيين كلمة المرور'
	String get set_password => 'تعيين كلمة المرور';

	/// ar: 'ادخل كلمة المرور'
	String get password_hint => 'ادخل كلمة المرور';

	/// ar: 'كلمة مرور قوية'
	String get strong_password => 'كلمة مرور قوية';

	/// ar: 'كلمة مرور متوسطة'
	String get medium_password => 'كلمة مرور متوسطة';

	/// ar: 'كلمة مرور ضعيفة'
	String get weak_password => 'كلمة مرور ضعيفة';

	/// ar: 'كلمة مرور جيدة'
	String get good_password => 'كلمة مرور جيدة';

	/// ar: 'كلمة المرور قصيرة '
	String get short_password => 'كلمة المرور قصيرة ';

	/// ar: 'كلمة المرور الحالية'
	String get currentPassword => 'كلمة المرور الحالية';

	/// ar: 'البريد الإلكتروني غير صالح'
	String get invalid_email => 'البريد الإلكتروني غير صالح';

	/// ar: 'رمز التحقق OTP'
	String get otp_verification => 'رمز التحقق OTP';

	/// ar: 'الرئيسية'
	String get home => 'الرئيسية';

	/// ar: 'المهام'
	String get tasks => 'المهام';

	/// ar: 'العمليات'
	String get operations => 'العمليات';

	/// ar: 'الحساب'
	String get account => 'الحساب';

	/// ar: 'أيام الدوام المحققة'
	String get achievedDays => 'أيام الدوام المحققة';

	/// ar: 'الإجازات المتاحة'
	String get availableVacations => 'الإجازات المتاحة';

	/// ar: 'المهام المحققة'
	String get achievedTasks => 'المهام المحققة';

	/// ar: 'لم تقم بالتقرير لبدء العمل لذا لم يبدأ عدد ساعات العمل بعد'
	String get haveNotBegin => 'لم تقم بالتقرير لبدء العمل لذا لم يبدأ عدد ساعات العمل بعد';

	/// ar: 'أبدأ العمل'
	String get startWork => 'أبدأ العمل';

	/// ar: 'ساعات العمل'
	String get workHours => 'ساعات العمل';

	/// ar: 'سنوية'
	String get annualLeave => 'سنوية';

	/// ar: 'مرضية'
	String get sickLeave => 'مرضية';

	/// ar: 'مدفوعة'
	String get paidLeave => 'مدفوعة';

	/// ar: 'زمنية(ساعات)'
	String get shortLeave => 'زمنية(ساعات)';

	/// ar: 'قيد المراجعة '
	String get pending => 'قيد المراجعة ';

	/// ar: 'تمت الموافقة'
	String get approved => 'تمت الموافقة';

	/// ar: 'تم الرفض '
	String get rejected => 'تم الرفض ';

	/// ar: 'اجازة مرضية من اجل عملية '
	String get leaveDescription => 'اجازة مرضية من اجل عملية ';

	/// ar: 'النفقات '
	String get expenses => 'النفقات ';

	/// ar: 'يمكنك تقديم طلب نفقات جديد'
	String get expensesSubtitle => 'يمكنك تقديم طلب نفقات جديد';

	/// ar: 'اجمالي النفقات المقبولة'
	String get totalAcceptedExpenses => 'اجمالي النفقات المقبولة';

	/// ar: 'اجمالي النفقات المعلقة '
	String get totalPendingExpenses => 'اجمالي النفقات المعلقة ';

	/// ar: 'نفقات النق العام '
	String get publicTransportationExpenses => 'نفقات النق العام ';

	/// ar: 'تاريخ التوظيف'
	String get dateOfEmployment => 'تاريخ التوظيف';

	/// ar: 'الرقم الوظيفي'
	String get employeeId => 'الرقم الوظيفي';

	/// ar: ' القسم الحالي'
	String get currentDepartment => ' القسم الحالي';

	/// ar: 'مسند'
	String get assigned => 'مسند';

	/// ar: 'تم التنفيذ'
	String get done => 'تم التنفيذ';

	/// ar: 'المهام تحت العمل'
	String get inProgress => 'المهام تحت العمل';

	/// ar: 'اجمالي المهام الشهرية'
	String get monthlyTotal => 'اجمالي المهام الشهرية';

	/// ar: 'المهام الكاملة'
	String get completed => 'المهام الكاملة';

	/// ar: 'المهام قريبة موعد التسليم'
	String get nearDeadline => 'المهام قريبة موعد التسليم';

	/// ar: 'تغيير كلمة المرور'
	String get changePassword => 'تغيير كلمة المرور';

	/// ar: 'يمكنك تحديث كلمة المرور للحساب'
	String get changePasswordHint => 'يمكنك تحديث كلمة المرور للحساب';

	/// ar: 'الاسم الكامل'
	String get fullName => 'الاسم الكامل';

	/// ar: 'اكتب اسمك الكامل'
	String get fullNameHint => 'اكتب اسمك الكامل';

	/// ar: 'تاريخ الولادة'
	String get birthDate => 'تاريخ الولادة';

	/// ar: '14/10/1997'
	String get birthDateHint => '14/10/1997';

	/// ar: 'مكان السكن'
	String get address => 'مكان السكن';

	/// ar: 'بغداد - الرصافة - البديات'
	String get addressHint => 'بغداد - الرصافة - البديات';

	/// ar: 'رقم الهاتف الأساسي'
	String get primaryPhone => 'رقم الهاتف الأساسي';

	/// ar: 'رقم الهاتف الثانوي'
	String get secondaryPhone => 'رقم الهاتف الثانوي';

	/// ar: 'بيانات المستخدم'
	String get userData => 'بيانات المستخدم';

	/// ar: 'يمكنك تحديث بيانات المستخدم'
	String get userDataHint => 'يمكنك تحديث بيانات المستخدم';

	/// ar: 'التقاط من الكاميرا'
	String get takePhoto => 'التقاط من الكاميرا';

	/// ar: 'اختيار من الاستوديو'
	String get chooseFromGallery => 'اختيار من الاستوديو';

	/// ar: 'المستمسكات المرفوعة'
	String get uploadedDocuments => 'المستمسكات المرفوعة';

	/// ar: 'Sr.Officer'
	String get srOfficer => 'Sr.Officer';

	/// ar: 'زينب عبد الكريم'
	String get zainabAbdAlkreem => 'زينب عبد الكريم';

	/// ar: 'Z.abdAlgreem@Company.com'
	String get zainabEmail => 'Z.abdAlgreem@Company.com';

	/// ar: 'المدير المباشر'
	String get directManager => 'المدير المباشر';

	/// ar: 'فيصل نعمان'
	String get faisalNuman => 'فيصل نعمان';

	/// ar: 'F.numan@Company.com'
	String get faisalEmail => 'F.numan@Company.com';

	/// ar: 'يمكنك تقديم إجازة زمنية جديدة'
	String get leavesHint => 'يمكنك تقديم إجازة زمنية جديدة';

	/// ar: 'الإجازات'
	String get leaves => 'الإجازات';

	/// ar: 'كشوفات المرتب'
	String get salarySlips => 'كشوفات المرتب';

	/// ar: 'يمكنك الاطلاع على كشوفات المرتب'
	String get salarySlipsHint => 'يمكنك الاطلاع على كشوفات المرتب';

	/// ar: 'عرض الجميع'
	String get showAll => 'عرض الجميع';

	/// ar: 'يمكنك تحديث المستمسكات المرفوعة للمستخدم'
	String get uploadedDocumentsHint => 'يمكنك تحديث المستمسكات المرفوعة للمستخدم';

	/// ar: 'بطاقة السكن'
	String get housingCard => 'بطاقة السكن';

	/// ar: 'البطاقة الموحدة'
	String get unifiedCard => 'البطاقة الموحدة';

	/// ar: 'تحديث البيانات'
	String get updateData => 'تحديث البيانات';

	/// ar: 'الوجه الأمامي'
	String get frontSide => 'الوجه الأمامي';

	/// ar: 'الوجه الخلفي'
	String get backSide => 'الوجه الخلفي';

	/// ar: 'تم رفع المستمسكات بنجاح '
	String get uploadSuccess => 'تم رفع المستمسكات بنجاح ';

	/// ar: 'حدث خطأ أثناء رفع المستمسكات'
	String get uploadError => 'حدث خطأ أثناء رفع المستمسكات';

	/// ar: 'إرفاق مستمسك جديد'
	String get attachNewDocument => 'إرفاق مستمسك جديد';

	/// ar: 'تقديم طلب قرض'
	String get submitLoan => 'تقديم طلب قرض';

	/// ar: 'تم تقديم طلب القرض'
	String get loanSubmitted => 'تم تقديم طلب القرض';

	/// ar: 'المبلغ المستقطع كل الشهري'
	String get monthlyAmount => 'المبلغ المستقطع كل الشهري';

	/// ar: 'مدة السداد'
	String get repaymentPeriod => 'مدة السداد';

	/// ar: 'مبلغ الطلب'
	String get requestAmount => 'مبلغ الطلب';

	/// ar: 'سبب الطلب'
	String get requestReason => 'سبب الطلب';

	/// ar: 'نوع الاحتياج'
	String get needType => 'نوع الاحتياج';

	/// ar: 'نوع الطب'
	String get requestType => 'نوع الطب';

	/// ar: 'طلب قرض او سلفة جديدة'
	String get requestLoanAdvance => 'طلب قرض او سلفة جديدة';

	/// ar: 'قم بملئ البيانات لاتمام عملية الطلب'
	String get hintRequestLoan => 'قم بملئ البيانات لاتمام عملية الطلب';

	/// ar: 'كشوفات الراتب'
	String get salaryTitle => 'كشوفات الراتب';

	/// ar: 'يمكنك تقديم طلب نفقات جديد'
	String get salaryHint => 'يمكنك تقديم طلب نفقات جديد';

	/// ar: 'طلب اجازة مرضية'
	String get sickLeaveRequest => 'طلب اجازة مرضية';

	/// ar: 'طلب اجازة سنوية'
	String get annualLeaveRequest => 'طلب اجازة سنوية';

	/// ar: 'طلب زمنية'
	String get hourlyLeaveRequest => 'طلب زمنية';

	/// ar: 'طلب اجازة مدفوعة'
	String get paidLeaveRequest => 'طلب اجازة مدفوعة';

	/// ar: 'من'
	String get from => 'من';

	/// ar: 'الى'
	String get to => 'الى';

	/// ar: 'المبلغ المطلوب'
	String get requiredAmount => 'المبلغ المطلوب';

	/// ar: 'فترة السداد'
	String get repaymentDuration => 'فترة السداد';

	/// ar: 'القسط الشهري'
	String get monthlyInstallment => 'القسط الشهري';

	/// ar: 'قائمة الطلبات'
	String get orderList => 'قائمة الطلبات';

	/// ar: 'صافي الراتب'
	String get netSalary => 'صافي الراتب';

	/// ar: 'الراتب الاسمي'
	String get basicSalary => 'الراتب الاسمي';

	/// ar: 'الاضافات'
	String get allowances => 'الاضافات';

	/// ar: 'الخصومات'
	String get deductions => 'الخصومات';

	/// ar: 'طلب اجازة جديدة'
	String get newLeave => 'طلب اجازة جديدة';

	/// ar: 'قم بملئ البيانات لاتمام عملية الطلب'
	String get newLeaveHint => 'قم بملئ البيانات لاتمام عملية الطلب';

	/// ar: 'المراسلات'
	String get correspondence => 'المراسلات';

	/// ar: 'لا تمتلك أي رسالة جديدة'
	String get noNewMessages => 'لا تمتلك أي رسالة جديدة';

	/// ar: 'كتابة رسالة جديدة'
	String get composeNewMessage => 'كتابة رسالة جديدة';

	/// ar: 'قم باختيار الموظف لبدء المراسلة'
	String get selectEmployeeToStartChat => 'قم باختيار الموظف لبدء المراسلة';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'base_repo';
			case 'localName': return 'Ar';
			case 'retry': return 'اعد المحاولة';
			case 'all': return 'الكل';
			case 'noItemsFoundError': return 'لا يوجد عناصر';
			case 'unknownError': return 'حدث خطأ';
			case 'connectionError': return 'حدث خطأ في الاتصال';
			case 'invalidCredentials': return 'البريد الالكتروني أو كلمة المرور غير صحيح';
			case 'usedEmail': return 'البريد الالكتروني مستخدم';
			case 'invalidPasswordResetCode': return 'الكود غير صحيح';
			case 'expiredPasswordResetCode': return 'الكود انتهي';
			case 'invalidRequest': return 'الطلب غير صحيح';
			case 'unauthorized': return 'غير مصرح';
			case 'forbidden': return 'غير مصرح';
			case 'notFound': return 'غير موجود';
			case 'unexpectedApi': return 'حدث خطأ في الاتصال';
			case 'sessionExpired': return 'انتهت الجلسة';
			case 'logout': return 'تسجيل الخروج';
			case 'validatorEmail': return 'البريد الالكتروني مطلوب';
			case 'validatorMinLength': return ({required Object n}) => '${n} حرف مطلوب';
			case 'validatorMaxLength': return ({required Object n}) => '${n} حرف مطلوب';
			case 'validatorPhoneNumber': return 'رقم الهاتف مطلوب';
			case 'validatorRequired': return 'الحقل مطلوب';
			case 'validatorUrl': return 'الرابط مطلوب';
			case 'validatorIp': return 'الไอبي مطلوب';
			case 'validatorIpv6': return 'الايبي في 6 مطلوب';
			case 'phoneNumber': return 'رقم الهاتف';
			case 'search': return 'بحث';
			case 'userName': return 'اسم المستخدم';
			case 'password': return 'كلمة المرور';
			case 'login': return 'تسجيل الدخول';
			case 'male': return 'ذكر';
			case 'female': return 'انثى';
			case 'language': return 'اللغة';
			case 'arabic': return 'العربية';
			case 'english': return 'الانجليزية';
			case 'fillToLogin': return 'قم بملئ البيانات لتسجيل الدخول';
			case 'problemToLogin': return 'هل تواجه مشكلة في تسجيل الدخول؟';
			case 'forgotPassword': return 'نسيت كلمة المرور؟';
			case 'resetPassword': return ' تعيين كلمة المرور';
			case 'contactSupport': return 'تواصل مع الدعم ';
			case 'whatsapp': return 'واتساب';
			case 'email': return 'إيميل';
			case 'whatsapp_number': return '+9647722657114';
			case 'email_address': return 'its.ali.adnan@gmail.com';
			case 'we_are_here_to_help': return 'نحن هنا للمساعدة';
			case 'choose_your_preferred_method': return 'اختر طريقة الاتصال المفضلة لديك';
			case 'could_not_open_email': return 'تعذر فتح البريد الإلكتروني';
			case 'could_not_open_WhatsApp': return 'تعذر فتح واتساب';
			case 'costomer_support': return 'دعم العملاء';
			case 'request_error': return 'حدث خطأ أثناء الطلب: {{error}}';
			case 'kContinue': return 'متابعة';
			case 'please_enter_valid_email': return 'الرجاء إدخال بريد إلكتروني صحيح';
			case 'please_enter_your_phone_number': return 'الرجاء إدخال رقم هاتفك';
			case 'phone_number': return 'رقم الهاتف';
			case 'IQ': return 'العراق';
			case 'recover_methods': return 'قم بختيار طريقة تأكيد الحساب ومن ثم قم بضبط كلمة مرور جديدة';
			case 'otp_verification_code': return 'الرجاء إدخال رمز التحقق';
			case 'invalid_otp_code': return 'رمز التحقق غير صحيح';
			case 'confirm_otp_code': return 'تأكيد رمز التحقق';
			case 'otp_code': return 'رمز التحقق';
			case 'verification_code_sent': return 'لقد أرسلنا كود تحقق على رقمك\nأدخل الرمز لتأكيد العملية';
			case 'fill_fields': return 'الرجاء ملء جميع الحقول';
			case 'passwords_not_match': return 'كلمتا المرور غير متطابقتان';
			case 'password_reset_success': return 'تم إعادة تعيين كلمة المرور بنجاح';
			case 'confirm_password': return 'تأكيد كلمة المرور';
			case 'new_password': return 'كلمة المرور الجديدة';
			case 'enter_new_password': return 'ادخل كلمة المرور الجديدة';
			case 'set_password': return 'تعيين كلمة المرور';
			case 'password_hint': return 'ادخل كلمة المرور';
			case 'strong_password': return 'كلمة مرور قوية';
			case 'medium_password': return 'كلمة مرور متوسطة';
			case 'weak_password': return 'كلمة مرور ضعيفة';
			case 'good_password': return 'كلمة مرور جيدة';
			case 'short_password': return 'كلمة المرور قصيرة ';
			case 'currentPassword': return 'كلمة المرور الحالية';
			case 'invalid_email': return 'البريد الإلكتروني غير صالح';
			case 'otp_verification': return 'رمز التحقق OTP';
			case 'home': return 'الرئيسية';
			case 'tasks': return 'المهام';
			case 'operations': return 'العمليات';
			case 'account': return 'الحساب';
			case 'achievedDays': return 'أيام الدوام المحققة';
			case 'availableVacations': return 'الإجازات المتاحة';
			case 'achievedTasks': return 'المهام المحققة';
			case 'haveNotBegin': return 'لم تقم بالتقرير لبدء العمل لذا لم يبدأ عدد ساعات العمل بعد';
			case 'startWork': return 'أبدأ العمل';
			case 'workHours': return 'ساعات العمل';
			case 'annualLeave': return 'سنوية';
			case 'sickLeave': return 'مرضية';
			case 'paidLeave': return 'مدفوعة';
			case 'shortLeave': return 'زمنية(ساعات)';
			case 'pending': return 'قيد المراجعة ';
			case 'approved': return 'تمت الموافقة';
			case 'rejected': return 'تم الرفض ';
			case 'leaveDescription': return 'اجازة مرضية من اجل عملية ';
			case 'expenses': return 'النفقات ';
			case 'expensesSubtitle': return 'يمكنك تقديم طلب نفقات جديد';
			case 'totalAcceptedExpenses': return 'اجمالي النفقات المقبولة';
			case 'totalPendingExpenses': return 'اجمالي النفقات المعلقة ';
			case 'publicTransportationExpenses': return 'نفقات النق العام ';
			case 'dateOfEmployment': return 'تاريخ التوظيف';
			case 'employeeId': return 'الرقم الوظيفي';
			case 'currentDepartment': return ' القسم الحالي';
			case 'assigned': return 'مسند';
			case 'done': return 'تم التنفيذ';
			case 'inProgress': return 'المهام تحت العمل';
			case 'monthlyTotal': return 'اجمالي المهام الشهرية';
			case 'completed': return 'المهام الكاملة';
			case 'nearDeadline': return 'المهام قريبة موعد التسليم';
			case 'changePassword': return 'تغيير كلمة المرور';
			case 'changePasswordHint': return 'يمكنك تحديث كلمة المرور للحساب';
			case 'fullName': return 'الاسم الكامل';
			case 'fullNameHint': return 'اكتب اسمك الكامل';
			case 'birthDate': return 'تاريخ الولادة';
			case 'birthDateHint': return '14/10/1997';
			case 'address': return 'مكان السكن';
			case 'addressHint': return 'بغداد - الرصافة - البديات';
			case 'primaryPhone': return 'رقم الهاتف الأساسي';
			case 'secondaryPhone': return 'رقم الهاتف الثانوي';
			case 'userData': return 'بيانات المستخدم';
			case 'userDataHint': return 'يمكنك تحديث بيانات المستخدم';
			case 'takePhoto': return 'التقاط من الكاميرا';
			case 'chooseFromGallery': return 'اختيار من الاستوديو';
			case 'uploadedDocuments': return 'المستمسكات المرفوعة';
			case 'srOfficer': return 'Sr.Officer';
			case 'zainabAbdAlkreem': return 'زينب عبد الكريم';
			case 'zainabEmail': return 'Z.abdAlgreem@Company.com';
			case 'directManager': return 'المدير المباشر';
			case 'faisalNuman': return 'فيصل نعمان';
			case 'faisalEmail': return 'F.numan@Company.com';
			case 'leavesHint': return 'يمكنك تقديم إجازة زمنية جديدة';
			case 'leaves': return 'الإجازات';
			case 'salarySlips': return 'كشوفات المرتب';
			case 'salarySlipsHint': return 'يمكنك الاطلاع على كشوفات المرتب';
			case 'showAll': return 'عرض الجميع';
			case 'uploadedDocumentsHint': return 'يمكنك تحديث المستمسكات المرفوعة للمستخدم';
			case 'housingCard': return 'بطاقة السكن';
			case 'unifiedCard': return 'البطاقة الموحدة';
			case 'updateData': return 'تحديث البيانات';
			case 'frontSide': return 'الوجه الأمامي';
			case 'backSide': return 'الوجه الخلفي';
			case 'uploadSuccess': return 'تم رفع المستمسكات بنجاح ';
			case 'uploadError': return 'حدث خطأ أثناء رفع المستمسكات';
			case 'attachNewDocument': return 'إرفاق مستمسك جديد';
			case 'submitLoan': return 'تقديم طلب قرض';
			case 'loanSubmitted': return 'تم تقديم طلب القرض';
			case 'monthlyAmount': return 'المبلغ المستقطع كل الشهري';
			case 'repaymentPeriod': return 'مدة السداد';
			case 'requestAmount': return 'مبلغ الطلب';
			case 'requestReason': return 'سبب الطلب';
			case 'needType': return 'نوع الاحتياج';
			case 'requestType': return 'نوع الطب';
			case 'requestLoanAdvance': return 'طلب قرض او سلفة جديدة';
			case 'hintRequestLoan': return 'قم بملئ البيانات لاتمام عملية الطلب';
			case 'salaryTitle': return 'كشوفات الراتب';
			case 'salaryHint': return 'يمكنك تقديم طلب نفقات جديد';
			case 'sickLeaveRequest': return 'طلب اجازة مرضية';
			case 'annualLeaveRequest': return 'طلب اجازة سنوية';
			case 'hourlyLeaveRequest': return 'طلب زمنية';
			case 'paidLeaveRequest': return 'طلب اجازة مدفوعة';
			case 'from': return 'من';
			case 'to': return 'الى';
			case 'requiredAmount': return 'المبلغ المطلوب';
			case 'repaymentDuration': return 'فترة السداد';
			case 'monthlyInstallment': return 'القسط الشهري';
			case 'orderList': return 'قائمة الطلبات';
			case 'netSalary': return 'صافي الراتب';
			case 'basicSalary': return 'الراتب الاسمي';
			case 'allowances': return 'الاضافات';
			case 'deductions': return 'الخصومات';
			case 'newLeave': return 'طلب اجازة جديدة';
			case 'newLeaveHint': return 'قم بملئ البيانات لاتمام عملية الطلب';
			case 'correspondence': return 'المراسلات';
			case 'noNewMessages': return 'لا تمتلك أي رسالة جديدة';
			case 'composeNewMessage': return 'كتابة رسالة جديدة';
			case 'selectEmployeeToStartChat': return 'قم باختيار الموظف لبدء المراسلة';
			default: return null;
		}
	}
}

