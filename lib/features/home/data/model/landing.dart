import 'package:json_annotation/json_annotation.dart';

part 'landing.g.dart';

@JsonSerializable()
class Landing {
  int? id;
  @JsonKey(name: 'investment_plans')
  List<InvestmentPlans>? investmentPlans;
  List<Questions>? questions;
  List<Feedback>? feedback;
  @JsonKey(name: 'gallery_items')
  List<GalleryItems>? galleryItems;
  @JsonKey(name: 'arabic_title')
  String? arabicTitle;
  @JsonKey(name: 'english_title')
  String? englishTitle;
  @JsonKey(name: 'arabic_slogan')
  String? arabicSlogan;
  @JsonKey(name: 'english_slogan')
  String? englishSlogan;
  @JsonKey(name: 'video_link')
  String? videoLink;
  @JsonKey(name: 'arabic_action_button_text')
  String? arabicActionButtonText;
  @JsonKey(name: 'english_action_button_text')
  String? englishActionButtonText;
  @JsonKey(name: 'action_button_link')
  String? actionButtonLink;
  @JsonKey(name: 'arabic_aboutus_slogan')
  String? arabicAboutusSlogan;
  @JsonKey(name: 'english_aboutus_slogan')
  String? englishAboutusSlogan;
  @JsonKey(name: 'arabic_aboutus_title')
  String? arabicAboutusTitle;
  @JsonKey(name: 'english_aboutus_title')
  String? englishAboutusTitle;
  @JsonKey(name: 'arabic_aboutus_desc')
  String? arabicAboutusDesc;
  @JsonKey(name: 'english_aboutus_desc')
  String? englishAboutusDesc;
  @JsonKey(name: 'arabic_aboutus_button')
  String? arabicAboutusButton;
  @JsonKey(name: 'english_aboutus_button')
  String? englishAboutusButton;
  @JsonKey(name: 'aboutus_photo')
  String? aboutusPhoto;
  @JsonKey(name: 'arabic_features_slogan')
  String? arabicFeaturesSlogan;
  @JsonKey(name: 'english_features_slogan')
  String? englishFeaturesSlogan;
  @JsonKey(name: 'arabic_plans_slogan')
  String? arabicPlansSlogan;
  @JsonKey(name: 'english_plans_slogan')
  String? englishPlansSlogan;
  @JsonKey(name: 'android_app_link')
  String? androidAppLink;
  @JsonKey(name: 'ios_app_link')
  String? iosAppLink;
  @JsonKey(name: 'arabic_contact_slogan')
  String? arabicContactSlogan;
  @JsonKey(name: 'english_contact_slogan')
  String? englishContactSlogan;
  @JsonKey(name: 'arabic_contact_message')
  String? arabicContactMessage;
  @JsonKey(name: 'english_contact_message')
  String? englishContactMessage;
  @JsonKey(name: 'map_link')
  String? mapLink;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'location_as_text')
  String? locationAsText;
  String? email;
  @JsonKey(name: 'arabic_faq_slogan')
  String? arabicFaqSlogan;
  @JsonKey(name: 'english_faq_slogan')
  String? englishFaqSlogan;
  @JsonKey(name: 'type_a_price')
  int? typeAPrice;
  @JsonKey(name: 'type_b_price')
  int? typeBPrice;
  @JsonKey(name: 'type_c_price')
  int? typeCPrice;
  @JsonKey(name: 'type_d_price')
  int? typeDPrice;
  @JsonKey(name: 'footer_word')
  String? footerWord;
  @JsonKey(name: 'fb_link')
  String? fbLink;
  @JsonKey(name: 'x_link')
  String? xLink;
  @JsonKey(name: 'youtube_link')
  String? youtubeLink;
  @JsonKey(name: 'insta_link')
  String? instaLink;

  Landing(
      {this.id,
      this.investmentPlans,
      this.questions,
      this.feedback,
      this.galleryItems,
      this.arabicTitle,
      this.englishTitle,
      this.arabicSlogan,
      this.englishSlogan,
      this.videoLink,
      this.arabicActionButtonText,
      this.englishActionButtonText,
      this.actionButtonLink,
      this.arabicAboutusSlogan,
      this.englishAboutusSlogan,
      this.arabicAboutusTitle,
      this.englishAboutusTitle,
      this.arabicAboutusDesc,
      this.englishAboutusDesc,
      this.arabicAboutusButton,
      this.englishAboutusButton,
      this.aboutusPhoto,
      this.arabicFeaturesSlogan,
      this.englishFeaturesSlogan,
      this.arabicPlansSlogan,
      this.englishPlansSlogan,
      this.androidAppLink,
      this.iosAppLink,
      this.arabicContactSlogan,
      this.englishContactSlogan,
      this.arabicContactMessage,
      this.englishContactMessage,
      this.mapLink,
      this.phoneNumber,
      this.locationAsText,
      this.email,
      this.arabicFaqSlogan,
      this.englishFaqSlogan,
      this.typeAPrice,
      this.typeBPrice,
      this.typeCPrice,
      this.typeDPrice,
      this.footerWord,
      this.fbLink,
      this.xLink,
      this.youtubeLink,
      this.instaLink});

  factory Landing.fromJson(Map<String, dynamic> json) =>
      _$LandingFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$LandingToJson(this);
}

@JsonSerializable()
class InvestmentPlans {
  int? id;
  @JsonKey(name: 'arabic_name')
  String? arabicName;
  @JsonKey(name: 'english_name')
  String? englishName;
  @JsonKey(name: 'number_of_trees')
  int? numberOfTrees;
  @JsonKey(name: 'arabic_years_roi')
  String? arabicYearsRoi;
  @JsonKey(name: 'english_years_roi')
  String? englishYearsRoi;
  String? roi;
  String? price;
  @JsonKey(name: 'arabic_note1')
  String? arabicNote1;
  @JsonKey(name: 'arabic_note2')
  String? arabicNote2;
  @JsonKey(name: 'arabic_note3')
  String? arabicNote3;
  @JsonKey(name: 'arabic_note4')
  String? arabicNote4;
  @JsonKey(name: 'arabic_note5')
  String? arabicNote5;
  @JsonKey(name: 'arabic_note6')
  String? arabicNote6;
  @JsonKey(name: 'english_note1')
  String? englishNote1;
  @JsonKey(name: 'english_note2')
  String? englishNote2;
  @JsonKey(name: 'english_note3')
  String? englishNote3;
  @JsonKey(name: 'english_note4')
  String? englishNote4;
  @JsonKey(name: 'english_note5')
  String? englishNote5;
  @JsonKey(name: 'english_note6')
  String? englishNote6;
  @JsonKey(name: 'is_most_popular')
  bool? isMostPopular;
  int? years;

  InvestmentPlans(
      {this.id,
      this.arabicName,
      this.englishName,
      this.numberOfTrees,
      this.arabicYearsRoi,
      this.englishYearsRoi,
      this.roi,
      this.price,
      this.arabicNote1,
      this.arabicNote2,
      this.arabicNote3,
      this.arabicNote4,
      this.arabicNote5,
      this.arabicNote6,
      this.englishNote1,
      this.englishNote2,
      this.englishNote3,
      this.englishNote4,
      this.englishNote5,
      this.englishNote6,
      this.isMostPopular,
      this.years});

  factory InvestmentPlans.fromJson(Map<String, dynamic> json) =>
      _$InvestmentPlansFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$InvestmentPlansToJson(this);
}

@JsonSerializable()
class Questions {
  int? id;
  @JsonKey(name: 'arabic_question')
  String? arabicQuestion;
  @JsonKey(name: 'english_question')
  String? englishQuestion;
  @JsonKey(name: 'arabic_answer')
  String? arabicAnswer;
  @JsonKey(name: 'english_answer')
  String? englishAnswer;

  Questions(
      {this.id,
      this.arabicQuestion,
      this.englishQuestion,
      this.arabicAnswer,
      this.englishAnswer});
  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$QuestionsToJson(this);
}

@JsonSerializable()
class Feedback {
  int? id;
  @JsonKey(name: 'arabic_name')
  String? arabicName;
  @JsonKey(name: 'english_name')
  String? englishName;
  @JsonKey(name: 'arabic_word')
  String? arabicWord;
  @JsonKey(name: 'english_word')
  String? englishWord;
  @JsonKey(name: 'person_photo')
  String? personPhoto;

  Feedback(
      {this.id,
      this.arabicName,
      this.englishName,
      this.arabicWord,
      this.englishWord,
      this.personPhoto});

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FeedbackToJson(this);
}

@JsonSerializable()
class GalleryItems {
  int? id;
  @JsonKey(name: 'arabic_title')
  String? arabicTitle;
  @JsonKey(name: 'english_title')
  String? englishTitle;
  String? photo;

  GalleryItems({this.id, this.arabicTitle, this.englishTitle, this.photo});

  factory GalleryItems.fromJson(Map<String, dynamic> json) =>
      _$GalleryItemsFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$GalleryItemsToJson(this);
}
