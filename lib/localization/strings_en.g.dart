///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get appTitle => 'base_repo';
	@override String get localName => 'En';
	@override String get retry => 'retry';
	@override String get all => 'all';
	@override String get noItemsFoundError => 'no items found';
	@override String get unknownError => 'unknown error';
	@override String get connectionError => 'connection error';
	@override String get invalidCredentials => 'invalid credentials';
	@override String get usedEmail => 'used email';
	@override String get invalidPasswordResetCode => 'invalid password reset code';
	@override String get expiredPasswordResetCode => 'expired password reset code';
	@override String get invalidRequest => 'invalid request';
	@override String get unauthorized => 'unauthorized';
	@override String get forbidden => 'forbidden';
	@override String get notFound => 'not found';
	@override String get unexpectedApi => 'unexpected api';
	@override String get sessionExpired => 'session expired';
	@override String get logout => 'logout';
	@override String get validatorEmail => 'Email is required';
	@override String validatorMinLength({required Object n}) => '${n} characters are required';
	@override String validatorMaxLength({required Object n}) => '${n} characters are required';
	@override String get validatorPhoneNumber => 'Phone number is required';
	@override String get validatorRequired => 'Field is required';
	@override String get validatorUrl => 'Url is required';
	@override String get validatorIp => 'Ip is required';
	@override String get validatorIpv6 => 'Ipv6 is required';
	@override String get phoneNumber => 'Phone number';
	@override String get search => 'Search';
	@override String get userName => 'User name';
	@override String get password => 'Password';
	@override String get login => 'Login';
	@override String get male => 'Male';
	@override String get female => 'Female';
	@override String get language => 'Language';
	@override String get arabic => 'Arabic';
	@override String get english => 'English';
	@override String get fillToLogin => 'Fill the data to login';
	@override String get problemToLogin => 'Having trouble logging in?';
	@override String get forgotPassword => 'Forgot Password?';
	@override String get resetPassword => 'Reset Password';
	@override String get contactSupport => 'Contact Support ';
	@override String get whatsapp => 'WhatsApp';
	@override String get email => 'Email';
	@override String get whatsapp_number => '+9647722657114';
	@override String get email_address => 'its.ali.adnan@gmail.com';
	@override String get we_are_here_to_help => 'We are here to help';
	@override String get choose_your_preferred_method => 'Choose your preferred method';
	@override String get could_not_open_email => 'Could not open email';
	@override String get could_not_open_WhatsApp => 'Could not open WhatsApp';
	@override String get costomer_support => 'Costomer Support';
	@override String get request_error => 'An error occurred during the request: {{error}}';
	@override String get kContinue => 'Continue';
	@override String get please_enter_valid_email => 'Please enter a valid email';
	@override String get please_enter_your_phone_number => 'Please enter your phone number';
	@override String get phone_number => 'Phone number';
	@override String get IQ => 'IQ';
	@override String get recover_methods => 'Choose the account verification method and then set a new password';
	@override String get otp_verification_code => 'Please enter the verification code';
	@override String get invalid_otp_code => 'Invalid verification code';
	@override String get confirm_otp_code => 'Confirm the verification code';
	@override String get otp_code => 'OTP Code';
	@override String get verification_code_sent => 'We have sent a verification code to your number.\nEnter the code to confirm the action.';
	@override String get fill_fields => 'Please fill all fields';
	@override String get passwords_not_match => 'Passwords do not match';
	@override String get password_reset_success => 'Password reset successfully';
	@override String get confirm_password => 'Confirm Password';
	@override String get new_password => 'New Password';
	@override String get enter_new_password => 'Enter new password';
	@override String get set_password => 'Set Password';
	@override String get password_hint => 'Enter password';
	@override String get strong_password => 'Strong password';
	@override String get medium_password => 'Medium password';
	@override String get weak_password => 'Weak password';
	@override String get good_password => 'Good password';
	@override String get short_password => 'Short password';
	@override String get currentPassword => 'Current Password';
	@override String get invalid_email => 'Invalid email';
	@override String get otp_verification => 'OTP Verification';
	@override String get home => 'Home';
	@override String get tasks => 'Tasks';
	@override String get operations => 'Operations';
	@override String get account => 'Account';
	@override String get achievedDays => 'Achieved Days';
	@override String get availableVacations => 'Available Vacations';
	@override String get achievedTasks => 'Achieved Tasks';
	@override String get haveNotBegin => 'Have Not Begin';
	@override String get startWork => 'Start Work';
	@override String get workHours => 'Work Hours';
	@override String get annualLeave => 'Annual Leave';
	@override String get sickLeave => 'Sick Leave';
	@override String get paidLeave => 'Paid Leave';
	@override String get shortLeave => 'Short Leave(hours)';
	@override String get pending => 'Pending';
	@override String get approved => 'Approved';
	@override String get rejected => 'Rejected';
	@override String get leaveDescription => 'Sick leave for surgery';
	@override String get expenses => 'النفقات';
	@override String get expensesSubtitle => 'You can submit a new expense request';
	@override String get totalAcceptedExpenses => 'Total Accepted Expenses';
	@override String get totalPendingExpenses => 'Total Pending Expenses';
	@override String get publicTransportationExpenses => 'Public Transportation Expenses';
	@override String get dateOfEmployment => 'Date Of Employment';
	@override String get employeeId => 'Employee ID';
	@override String get currentDepartment => 'Current Department';
	@override String get assigned => 'Assigned';
	@override String get done => 'Done';
	@override String get inProgress => 'In Progress';
	@override String get monthlyTotal => 'Monthly Total';
	@override String get completed => 'Completed ';
	@override String get nearDeadline => 'Near Deadline';
	@override String get changePassword => 'Change Password';
	@override String get changePasswordHint => 'You can update the account password';
	@override String get fullName => 'Full Name';
	@override String get fullNameHint => 'Enter your full name';
	@override String get birthDate => 'Date of Birth';
	@override String get birthDateHint => '14/10/1997';
	@override String get address => 'Address';
	@override String get addressHint => 'Baghdad - Rusafa - Al-Bidayat';
	@override String get primaryPhone => 'Primary Phone Number';
	@override String get secondaryPhone => 'Secondary Phone Number';
	@override String get userData => 'User Data';
	@override String get userDataHint => 'You can update user data';
	@override String get takePhoto => 'Take Photo';
	@override String get chooseFromGallery => 'Choose from Gallery';
	@override String get uploadedDocuments => 'Uploaded Documents';
	@override String get srOfficer => 'Sr.Officer';
	@override String get zainabAbdAlkreem => 'Zainab Abd Alkreem';
	@override String get zainabEmail => 'Z.abdAlgreem@Company.com';
	@override String get directManager => 'Direct Manager';
	@override String get faisalNuman => 'Faisal Numan';
	@override String get faisalEmail => 'F.numan@Company.com';
	@override String get leaves => 'Leaves';
	@override String get leavesHint => 'You can submit a new leave request';
	@override String get salarySlips => 'Salary Slips';
	@override String get salarySlipsHint => 'You can view your salary slips';
	@override String get showAll => 'Show All';
	@override String get uploadedDocumentsHint => 'You can update the user\'s uploaded documents';
	@override String get housingCard => 'Housing Card';
	@override String get unifiedCard => 'Unified Card';
	@override String get updateData => 'Update Data';
	@override String get frontSide => 'Front Side';
	@override String get backSide => 'Back Side';
	@override String get uploadSuccess => 'Documents uploaded successfully ';
	@override String get uploadError => 'An error occurred while uploading documents';
	@override String get attachNewDocument => 'Attach New Document';
	@override String get submitLoan => 'Submit Loan Application';
	@override String get loanSubmitted => 'Loan Application Submitted';
	@override String get monthlyAmount => 'The amount deducted every month';
	@override String get repaymentPeriod => 'Repayment Period';
	@override String get requestAmount => 'Request Amount';
	@override String get requestReason => 'Request Reason';
	@override String get needType => 'Need Type';
	@override String get requestType => 'Request Type';
	@override String get requestLoanAdvance => 'Request a new loan or advance';
	@override String get hintRequestLoan => 'Fill in the data to complete the application process';
	@override String get salaryTitle => 'Salary Statements';
	@override String get salaryHint => 'You can submit a new expense request';
	@override String get sickLeaveRequest => 'Sick Leave Request';
	@override String get annualLeaveRequest => 'Annual Leave Request';
	@override String get hourlyLeaveRequest => 'Hourly Leave Request';
	@override String get paidLeaveRequest => 'Paid Leave Request';
	@override String get from => 'From';
	@override String get to => 'To';
	@override String get requiredAmount => 'Required Amount';
	@override String get repaymentDuration => 'Repayment Duration';
	@override String get monthlyInstallment => 'Monthly Installment';
	@override String get orderList => 'Order List';
	@override String get netSalary => 'Net Salary';
	@override String get basicSalary => 'Basic Salary';
	@override String get allowances => 'Allowances';
	@override String get deductions => 'Deductions';
	@override String get newLeave => 'New Leave';
	@override String get newLeaveHint => 'Fill in the data to complete the application process';
	@override String get correspondence => 'Correspondence';
	@override String get noNewMessages => 'You have no new messages';
	@override String get composeNewMessage => 'Compose New Message';
	@override String get selectEmployeeToStartChat => 'Select the employee to start the conversation';
	@override String get profile => 'Profile';
	@override String get settings => 'Settings';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'base_repo';
			case 'localName': return 'En';
			case 'retry': return 'retry';
			case 'all': return 'all';
			case 'noItemsFoundError': return 'no items found';
			case 'unknownError': return 'unknown error';
			case 'connectionError': return 'connection error';
			case 'invalidCredentials': return 'invalid credentials';
			case 'usedEmail': return 'used email';
			case 'invalidPasswordResetCode': return 'invalid password reset code';
			case 'expiredPasswordResetCode': return 'expired password reset code';
			case 'invalidRequest': return 'invalid request';
			case 'unauthorized': return 'unauthorized';
			case 'forbidden': return 'forbidden';
			case 'notFound': return 'not found';
			case 'unexpectedApi': return 'unexpected api';
			case 'sessionExpired': return 'session expired';
			case 'logout': return 'logout';
			case 'validatorEmail': return 'Email is required';
			case 'validatorMinLength': return ({required Object n}) => '${n} characters are required';
			case 'validatorMaxLength': return ({required Object n}) => '${n} characters are required';
			case 'validatorPhoneNumber': return 'Phone number is required';
			case 'validatorRequired': return 'Field is required';
			case 'validatorUrl': return 'Url is required';
			case 'validatorIp': return 'Ip is required';
			case 'validatorIpv6': return 'Ipv6 is required';
			case 'phoneNumber': return 'Phone number';
			case 'search': return 'Search';
			case 'userName': return 'User name';
			case 'password': return 'Password';
			case 'login': return 'Login';
			case 'male': return 'Male';
			case 'female': return 'Female';
			case 'language': return 'Language';
			case 'arabic': return 'Arabic';
			case 'english': return 'English';
			case 'fillToLogin': return 'Fill the data to login';
			case 'problemToLogin': return 'Having trouble logging in?';
			case 'forgotPassword': return 'Forgot Password?';
			case 'resetPassword': return 'Reset Password';
			case 'contactSupport': return 'Contact Support ';
			case 'whatsapp': return 'WhatsApp';
			case 'email': return 'Email';
			case 'whatsapp_number': return '+9647722657114';
			case 'email_address': return 'its.ali.adnan@gmail.com';
			case 'we_are_here_to_help': return 'We are here to help';
			case 'choose_your_preferred_method': return 'Choose your preferred method';
			case 'could_not_open_email': return 'Could not open email';
			case 'could_not_open_WhatsApp': return 'Could not open WhatsApp';
			case 'costomer_support': return 'Costomer Support';
			case 'request_error': return 'An error occurred during the request: {{error}}';
			case 'kContinue': return 'Continue';
			case 'please_enter_valid_email': return 'Please enter a valid email';
			case 'please_enter_your_phone_number': return 'Please enter your phone number';
			case 'phone_number': return 'Phone number';
			case 'IQ': return 'IQ';
			case 'recover_methods': return 'Choose the account verification method and then set a new password';
			case 'otp_verification_code': return 'Please enter the verification code';
			case 'invalid_otp_code': return 'Invalid verification code';
			case 'confirm_otp_code': return 'Confirm the verification code';
			case 'otp_code': return 'OTP Code';
			case 'verification_code_sent': return 'We have sent a verification code to your number.\nEnter the code to confirm the action.';
			case 'fill_fields': return 'Please fill all fields';
			case 'passwords_not_match': return 'Passwords do not match';
			case 'password_reset_success': return 'Password reset successfully';
			case 'confirm_password': return 'Confirm Password';
			case 'new_password': return 'New Password';
			case 'enter_new_password': return 'Enter new password';
			case 'set_password': return 'Set Password';
			case 'password_hint': return 'Enter password';
			case 'strong_password': return 'Strong password';
			case 'medium_password': return 'Medium password';
			case 'weak_password': return 'Weak password';
			case 'good_password': return 'Good password';
			case 'short_password': return 'Short password';
			case 'currentPassword': return 'Current Password';
			case 'invalid_email': return 'Invalid email';
			case 'otp_verification': return 'OTP Verification';
			case 'home': return 'Home';
			case 'tasks': return 'Tasks';
			case 'operations': return 'Operations';
			case 'account': return 'Account';
			case 'achievedDays': return 'Achieved Days';
			case 'availableVacations': return 'Available Vacations';
			case 'achievedTasks': return 'Achieved Tasks';
			case 'haveNotBegin': return 'Have Not Begin';
			case 'startWork': return 'Start Work';
			case 'workHours': return 'Work Hours';
			case 'annualLeave': return 'Annual Leave';
			case 'sickLeave': return 'Sick Leave';
			case 'paidLeave': return 'Paid Leave';
			case 'shortLeave': return 'Short Leave(hours)';
			case 'pending': return 'Pending';
			case 'approved': return 'Approved';
			case 'rejected': return 'Rejected';
			case 'leaveDescription': return 'Sick leave for surgery';
			case 'expenses': return 'النفقات';
			case 'expensesSubtitle': return 'You can submit a new expense request';
			case 'totalAcceptedExpenses': return 'Total Accepted Expenses';
			case 'totalPendingExpenses': return 'Total Pending Expenses';
			case 'publicTransportationExpenses': return 'Public Transportation Expenses';
			case 'dateOfEmployment': return 'Date Of Employment';
			case 'employeeId': return 'Employee ID';
			case 'currentDepartment': return 'Current Department';
			case 'assigned': return 'Assigned';
			case 'done': return 'Done';
			case 'inProgress': return 'In Progress';
			case 'monthlyTotal': return 'Monthly Total';
			case 'completed': return 'Completed ';
			case 'nearDeadline': return 'Near Deadline';
			case 'changePassword': return 'Change Password';
			case 'changePasswordHint': return 'You can update the account password';
			case 'fullName': return 'Full Name';
			case 'fullNameHint': return 'Enter your full name';
			case 'birthDate': return 'Date of Birth';
			case 'birthDateHint': return '14/10/1997';
			case 'address': return 'Address';
			case 'addressHint': return 'Baghdad - Rusafa - Al-Bidayat';
			case 'primaryPhone': return 'Primary Phone Number';
			case 'secondaryPhone': return 'Secondary Phone Number';
			case 'userData': return 'User Data';
			case 'userDataHint': return 'You can update user data';
			case 'takePhoto': return 'Take Photo';
			case 'chooseFromGallery': return 'Choose from Gallery';
			case 'uploadedDocuments': return 'Uploaded Documents';
			case 'srOfficer': return 'Sr.Officer';
			case 'zainabAbdAlkreem': return 'Zainab Abd Alkreem';
			case 'zainabEmail': return 'Z.abdAlgreem@Company.com';
			case 'directManager': return 'Direct Manager';
			case 'faisalNuman': return 'Faisal Numan';
			case 'faisalEmail': return 'F.numan@Company.com';
			case 'leaves': return 'Leaves';
			case 'leavesHint': return 'You can submit a new leave request';
			case 'salarySlips': return 'Salary Slips';
			case 'salarySlipsHint': return 'You can view your salary slips';
			case 'showAll': return 'Show All';
			case 'uploadedDocumentsHint': return 'You can update the user\'s uploaded documents';
			case 'housingCard': return 'Housing Card';
			case 'unifiedCard': return 'Unified Card';
			case 'updateData': return 'Update Data';
			case 'frontSide': return 'Front Side';
			case 'backSide': return 'Back Side';
			case 'uploadSuccess': return 'Documents uploaded successfully ';
			case 'uploadError': return 'An error occurred while uploading documents';
			case 'attachNewDocument': return 'Attach New Document';
			case 'submitLoan': return 'Submit Loan Application';
			case 'loanSubmitted': return 'Loan Application Submitted';
			case 'monthlyAmount': return 'The amount deducted every month';
			case 'repaymentPeriod': return 'Repayment Period';
			case 'requestAmount': return 'Request Amount';
			case 'requestReason': return 'Request Reason';
			case 'needType': return 'Need Type';
			case 'requestType': return 'Request Type';
			case 'requestLoanAdvance': return 'Request a new loan or advance';
			case 'hintRequestLoan': return 'Fill in the data to complete the application process';
			case 'salaryTitle': return 'Salary Statements';
			case 'salaryHint': return 'You can submit a new expense request';
			case 'sickLeaveRequest': return 'Sick Leave Request';
			case 'annualLeaveRequest': return 'Annual Leave Request';
			case 'hourlyLeaveRequest': return 'Hourly Leave Request';
			case 'paidLeaveRequest': return 'Paid Leave Request';
			case 'from': return 'From';
			case 'to': return 'To';
			case 'requiredAmount': return 'Required Amount';
			case 'repaymentDuration': return 'Repayment Duration';
			case 'monthlyInstallment': return 'Monthly Installment';
			case 'orderList': return 'Order List';
			case 'netSalary': return 'Net Salary';
			case 'basicSalary': return 'Basic Salary';
			case 'allowances': return 'Allowances';
			case 'deductions': return 'Deductions';
			case 'newLeave': return 'New Leave';
			case 'newLeaveHint': return 'Fill in the data to complete the application process';
			case 'correspondence': return 'Correspondence';
			case 'noNewMessages': return 'You have no new messages';
			case 'composeNewMessage': return 'Compose New Message';
			case 'selectEmployeeToStartChat': return 'Select the employee to start the conversation';
			case 'profile': return 'Profile';
			case 'settings': return 'Settings';
			default: return null;
		}
	}
}

