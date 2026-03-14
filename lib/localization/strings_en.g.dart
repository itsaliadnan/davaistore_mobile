///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn with BaseTranslations<AppLocale, Translations> implements Translations {
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
	@override late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
	@override late final _TranslationsAuthEn auth = _TranslationsAuthEn._(_root);
	@override late final _TranslationsOrdersEn orders = _TranslationsOrdersEn._(_root);
	@override late final _TranslationsProfileEn profile = _TranslationsProfileEn._(_root);
}

// Path: home
class _TranslationsHomeEn implements TranslationsHomeAr {
	_TranslationsHomeEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get browseByCategory => 'Browse by Category';
	@override String get searchProduct => 'Search Product';
	@override String get products => 'Products';
	@override String get categories => 'Categories';
	@override String get noProductsFound => 'No products found';
	@override String get allProducts => 'All Products';
	@override String get bestSellers => 'Best Sellers';
	@override String get newArrivals => 'New Arrivals';
	@override String get shoes => 'Shoes';
	@override String get bags => 'Bags';
	@override String get hats => 'Hats';
	@override String get watches => 'Watches';
}

// Path: auth
class _TranslationsAuthEn implements TranslationsAuthAr {
	_TranslationsAuthEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get davaiStore => 'Davai Store';
	@override String get enterYourEmail => 'Enter your email';
	@override String get enterYourPassword => 'Enter your password';
	@override String get login => 'Login';
	@override String get pleaseFillInAllFields => 'Please fill in all fields';
	@override String get invalidEmailFormat => 'Invalid email format';
	@override String get loginSuccessful => 'Login successful';
	@override String get loginFailed => 'Login failed';
	@override String get loginWithGoogle => 'Login with Google';
	@override String get dontHaveAnAccount => 'Don\'t have an account?';
	@override String get fillThisFormToCreateAnAccount => 'Fill this form to create an account';
	@override String get signUp => 'Sign Up';
	@override String get enterYourFullName => 'Enter your full name';
	@override String get confirmYourPassword => 'Confirm your password';
	@override String get pleaseFillAllTextFields => 'Please fill all Text fields';
	@override String get pleaseSelectAProfilePicture => 'Please select a profile picture';
	@override String get signUpSuccessful => 'Sign up successful';
	@override String get signUpFailed => 'Sign up failed';
	@override String get alreadyHaveAnAccount => 'Already have an account?';
	@override String get signupWithGoogle => 'Sign up with Google';
}

// Path: orders
class _TranslationsOrdersEn implements TranslationsOrdersAr {
	_TranslationsOrdersEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get myOrders => 'My Orders';
	@override String get noOrdersFound => 'No orders found';
	@override String get orderDetails => 'Order Details';
	@override String get totalAmount => 'Total Amount';
	@override String get orderStatus => 'Order Status';
	@override String get pending => 'Pending';
	@override String get shipped => 'Shipped';
	@override String get delivered => 'Delivered';
	@override String get cancelled => 'Cancelled';
}

// Path: profile
class _TranslationsProfileEn implements TranslationsProfileAr {
	_TranslationsProfileEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get profile => 'Profile';
	@override String get editProfile => 'Edit Profile';
	@override String get fullName => 'Full Name';
	@override String get email => 'Email';
	@override String get phoneNumber => 'Phone Number';
	@override String get address => 'Address';
	@override String get saveChanges => 'Save Changes';
	@override String get logout => 'Logout';
	@override String get settings => 'Settings';
	@override String get language => 'Language';
	@override String get display => 'Display ';
	@override String get selectMode => 'Select Mode';
	@override String get notifications => 'Notifications';
	@override String get privacyAndSecurity => 'Privacy & Security';
	@override String get helpAndSupport => 'Help & Support';
	@override String get about => 'About';
	@override String get selectLanguage => 'Select Language';
	@override String get english => 'English';
	@override String get arabic => 'Arabic';
	@override String get enableNotifications => 'Enable Notifications';
	@override String get disableNotifications => 'Disable Notifications';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
	@override String get system => 'System';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'home.browseByCategory' => 'Browse by Category',
			'home.searchProduct' => 'Search Product',
			'home.products' => 'Products',
			'home.categories' => 'Categories',
			'home.noProductsFound' => 'No products found',
			'home.allProducts' => 'All Products',
			'home.bestSellers' => 'Best Sellers',
			'home.newArrivals' => 'New Arrivals',
			'home.shoes' => 'Shoes',
			'home.bags' => 'Bags',
			'home.hats' => 'Hats',
			'home.watches' => 'Watches',
			'auth.davaiStore' => 'Davai Store',
			'auth.enterYourEmail' => 'Enter your email',
			'auth.enterYourPassword' => 'Enter your password',
			'auth.login' => 'Login',
			'auth.pleaseFillInAllFields' => 'Please fill in all fields',
			'auth.invalidEmailFormat' => 'Invalid email format',
			'auth.loginSuccessful' => 'Login successful',
			'auth.loginFailed' => 'Login failed',
			'auth.loginWithGoogle' => 'Login with Google',
			'auth.dontHaveAnAccount' => 'Don\'t have an account?',
			'auth.fillThisFormToCreateAnAccount' => 'Fill this form to create an account',
			'auth.signUp' => 'Sign Up',
			'auth.enterYourFullName' => 'Enter your full name',
			'auth.confirmYourPassword' => 'Confirm your password',
			'auth.pleaseFillAllTextFields' => 'Please fill all Text fields',
			'auth.pleaseSelectAProfilePicture' => 'Please select a profile picture',
			'auth.signUpSuccessful' => 'Sign up successful',
			'auth.signUpFailed' => 'Sign up failed',
			'auth.alreadyHaveAnAccount' => 'Already have an account?',
			'auth.signupWithGoogle' => 'Sign up with Google',
			'orders.myOrders' => 'My Orders',
			'orders.noOrdersFound' => 'No orders found',
			'orders.orderDetails' => 'Order Details',
			'orders.totalAmount' => 'Total Amount',
			'orders.orderStatus' => 'Order Status',
			'orders.pending' => 'Pending',
			'orders.shipped' => 'Shipped',
			'orders.delivered' => 'Delivered',
			'orders.cancelled' => 'Cancelled',
			'profile.profile' => 'Profile',
			'profile.editProfile' => 'Edit Profile',
			'profile.fullName' => 'Full Name',
			'profile.email' => 'Email',
			'profile.phoneNumber' => 'Phone Number',
			'profile.address' => 'Address',
			'profile.saveChanges' => 'Save Changes',
			'profile.logout' => 'Logout',
			'profile.settings' => 'Settings',
			'profile.language' => 'Language',
			'profile.display' => 'Display ',
			'profile.selectMode' => 'Select Mode',
			'profile.notifications' => 'Notifications',
			'profile.privacyAndSecurity' => 'Privacy & Security',
			'profile.helpAndSupport' => 'Help & Support',
			'profile.about' => 'About',
			'profile.selectLanguage' => 'Select Language',
			'profile.english' => 'English',
			'profile.arabic' => 'Arabic',
			'profile.enableNotifications' => 'Enable Notifications',
			'profile.disableNotifications' => 'Disable Notifications',
			'profile.light' => 'Light',
			'profile.dark' => 'Dark',
			'profile.system' => 'System',
			_ => null,
		};
	}
}
