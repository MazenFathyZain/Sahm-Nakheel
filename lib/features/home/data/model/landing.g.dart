// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Landing _$LandingFromJson(Map<String, dynamic> json) => Landing(
      id: json['id'] as int?,
      investmentPlans: (json['investment_plans'] as List<dynamic>?)
          ?.map((e) => InvestmentPlans.fromJson(e as Map<String, dynamic>))
          .toList(),
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Questions.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedback: (json['feedback'] as List<dynamic>?)
          ?.map((e) => Feedback.fromJson(e as Map<String, dynamic>))
          .toList(),
      galleryItems: (json['gallery_items'] as List<dynamic>?)
          ?.map((e) => GalleryItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      arabicTitle: json['arabic_title'] as String?,
      englishTitle: json['english_title'] as String?,
      arabicSlogan: json['arabic_slogan'] as String?,
      englishSlogan: json['english_slogan'] as String?,
      videoLink: json['video_link'] as String?,
      arabicActionButtonText: json['arabic_action_button_text'] as String?,
      englishActionButtonText: json['english_action_button_text'] as String?,
      actionButtonLink: json['action_button_link'] as String?,
      arabicAboutusSlogan: json['arabic_aboutus_slogan'] as String?,
      englishAboutusSlogan: json['english_aboutus_slogan'] as String?,
      arabicAboutusTitle: json['arabic_aboutus_title'] as String?,
      englishAboutusTitle: json['english_aboutus_title'] as String?,
      arabicAboutusDesc: json['arabic_aboutus_desc'] as String?,
      englishAboutusDesc: json['english_aboutus_desc'] as String?,
      arabicAboutusButton: json['arabic_aboutus_button'] as String?,
      englishAboutusButton: json['english_aboutus_button'] as String?,
      aboutusPhoto: json['aboutus_photo'] as String?,
      arabicFeaturesSlogan: json['arabic_features_slogan'] as String?,
      englishFeaturesSlogan: json['english_features_slogan'] as String?,
      arabicPlansSlogan: json['arabic_plans_slogan'] as String?,
      englishPlansSlogan: json['english_plans_slogan'] as String?,
      androidAppLink: json['android_app_link'] as String?,
      iosAppLink: json['ios_app_link'] as String?,
      arabicContactSlogan: json['arabic_contact_slogan'] as String?,
      englishContactSlogan: json['english_contact_slogan'] as String?,
      arabicContactMessage: json['arabic_contact_message'] as String?,
      englishContactMessage: json['english_contact_message'] as String?,
      mapLink: json['map_link'] as String?,
      phoneNumber: json['phone_number'] as String?,
      locationAsText: json['location_as_text'] as String?,
      email: json['email'] as String?,
      arabicFaqSlogan: json['arabic_faq_slogan'] as String?,
      englishFaqSlogan: json['english_faq_slogan'] as String?,
      typeAPrice: json['type_a_price'] as int?,
      typeBPrice: json['type_b_price'] as int?,
      typeCPrice: json['type_c_price'] as int?,
      typeDPrice: json['type_d_price'] as int?,
      footerWord: json['footer_word'] as String?,
      fbLink: json['fb_link'] as String?,
      xLink: json['x_link'] as String?,
      youtubeLink: json['youtube_link'] as String?,
      instaLink: json['insta_link'] as String?,
    );

Map<String, dynamic> _$LandingToJson(Landing instance) => <String, dynamic>{
      'id': instance.id,
      'investment_plans': instance.investmentPlans,
      'questions': instance.questions,
      'feedback': instance.feedback,
      'gallery_items': instance.galleryItems,
      'arabic_title': instance.arabicTitle,
      'english_title': instance.englishTitle,
      'arabic_slogan': instance.arabicSlogan,
      'english_slogan': instance.englishSlogan,
      'video_link': instance.videoLink,
      'arabic_action_button_text': instance.arabicActionButtonText,
      'english_action_button_text': instance.englishActionButtonText,
      'action_button_link': instance.actionButtonLink,
      'arabic_aboutus_slogan': instance.arabicAboutusSlogan,
      'english_aboutus_slogan': instance.englishAboutusSlogan,
      'arabic_aboutus_title': instance.arabicAboutusTitle,
      'english_aboutus_title': instance.englishAboutusTitle,
      'arabic_aboutus_desc': instance.arabicAboutusDesc,
      'english_aboutus_desc': instance.englishAboutusDesc,
      'arabic_aboutus_button': instance.arabicAboutusButton,
      'english_aboutus_button': instance.englishAboutusButton,
      'aboutus_photo': instance.aboutusPhoto,
      'arabic_features_slogan': instance.arabicFeaturesSlogan,
      'english_features_slogan': instance.englishFeaturesSlogan,
      'arabic_plans_slogan': instance.arabicPlansSlogan,
      'english_plans_slogan': instance.englishPlansSlogan,
      'android_app_link': instance.androidAppLink,
      'ios_app_link': instance.iosAppLink,
      'arabic_contact_slogan': instance.arabicContactSlogan,
      'english_contact_slogan': instance.englishContactSlogan,
      'arabic_contact_message': instance.arabicContactMessage,
      'english_contact_message': instance.englishContactMessage,
      'map_link': instance.mapLink,
      'phone_number': instance.phoneNumber,
      'location_as_text': instance.locationAsText,
      'email': instance.email,
      'arabic_faq_slogan': instance.arabicFaqSlogan,
      'english_faq_slogan': instance.englishFaqSlogan,
      'type_a_price': instance.typeAPrice,
      'type_b_price': instance.typeBPrice,
      'type_c_price': instance.typeCPrice,
      'type_d_price': instance.typeDPrice,
      'footer_word': instance.footerWord,
      'fb_link': instance.fbLink,
      'x_link': instance.xLink,
      'youtube_link': instance.youtubeLink,
      'insta_link': instance.instaLink,
    };

InvestmentPlans _$InvestmentPlansFromJson(Map<String, dynamic> json) =>
    InvestmentPlans(
      id: json['id'] as int?,
      arabicName: json['arabic_name'] as String?,
      englishName: json['english_name'] as String?,
      numberOfTrees: json['number_of_trees'] as int?,
      arabicYearsRoi: json['arabic_years_roi'] as String?,
      englishYearsRoi: json['english_years_roi'] as String?,
      roi: json['roi'] as String?,
      price: json['price'] as String?,
      arabicNote1: json['arabic_note1'] as String?,
      arabicNote2: json['arabic_note2'] as String?,
      arabicNote3: json['arabic_note3'] as String?,
      arabicNote4: json['arabic_note4'] as String?,
      arabicNote5: json['arabic_note5'] as String?,
      arabicNote6: json['arabic_note6'] as String?,
      englishNote1: json['english_note1'] as String?,
      englishNote2: json['english_note2'] as String?,
      englishNote3: json['english_note3'] as String?,
      englishNote4: json['english_note4'] as String?,
      englishNote5: json['english_note5'] as String?,
      englishNote6: json['english_note6'] as String?,
      isMostPopular: json['is_most_popular'] as bool?,
      years: json['years'] as int?,
    );

Map<String, dynamic> _$InvestmentPlansToJson(InvestmentPlans instance) =>
    <String, dynamic>{
      'id': instance.id,
      'arabic_name': instance.arabicName,
      'english_name': instance.englishName,
      'number_of_trees': instance.numberOfTrees,
      'arabic_years_roi': instance.arabicYearsRoi,
      'english_years_roi': instance.englishYearsRoi,
      'roi': instance.roi,
      'price': instance.price,
      'arabic_note1': instance.arabicNote1,
      'arabic_note2': instance.arabicNote2,
      'arabic_note3': instance.arabicNote3,
      'arabic_note4': instance.arabicNote4,
      'arabic_note5': instance.arabicNote5,
      'arabic_note6': instance.arabicNote6,
      'english_note1': instance.englishNote1,
      'english_note2': instance.englishNote2,
      'english_note3': instance.englishNote3,
      'english_note4': instance.englishNote4,
      'english_note5': instance.englishNote5,
      'english_note6': instance.englishNote6,
      'is_most_popular': instance.isMostPopular,
      'years': instance.years,
    };

Questions _$QuestionsFromJson(Map<String, dynamic> json) => Questions(
      id: json['id'] as int?,
      arabicQuestion: json['arabic_question'] as String?,
      englishQuestion: json['english_question'] as String?,
      arabicAnswer: json['arabic_answer'] as String?,
      englishAnswer: json['english_answer'] as String?,
    );

Map<String, dynamic> _$QuestionsToJson(Questions instance) => <String, dynamic>{
      'id': instance.id,
      'arabic_question': instance.arabicQuestion,
      'english_question': instance.englishQuestion,
      'arabic_answer': instance.arabicAnswer,
      'english_answer': instance.englishAnswer,
    };

Feedback _$FeedbackFromJson(Map<String, dynamic> json) => Feedback(
      id: json['id'] as int?,
      arabicName: json['arabic_name'] as String?,
      englishName: json['english_name'] as String?,
      arabicWord: json['arabic_word'] as String?,
      englishWord: json['english_word'] as String?,
      personPhoto: json['person_photo'] as String?,
    );

Map<String, dynamic> _$FeedbackToJson(Feedback instance) => <String, dynamic>{
      'id': instance.id,
      'arabic_name': instance.arabicName,
      'english_name': instance.englishName,
      'arabic_word': instance.arabicWord,
      'english_word': instance.englishWord,
      'person_photo': instance.personPhoto,
    };

GalleryItems _$GalleryItemsFromJson(Map<String, dynamic> json) => GalleryItems(
      id: json['id'] as int?,
      arabicTitle: json['arabic_title'] as String?,
      englishTitle: json['english_title'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$GalleryItemsToJson(GalleryItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'arabic_title': instance.arabicTitle,
      'english_title': instance.englishTitle,
      'photo': instance.photo,
    };
