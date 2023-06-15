class MyService {
  int? id;
  CourseOwner? courseOwner;
  int? enrolledStudents;
  bool? isFree;
  CourseRating? courseRating;
  String? courseDuration;
  int? videoCount;
  int? commentsCount;
  int? viewsCount;
  String? name;
  String? type;
  String? lang;
  String? level;
  Null keyWords;
  String? whatToLearn;
  String? whomThisCourse;
  int? price;
  String? shortDescr;
  String? recommendation;
  Null exchangeUrl;
  String? createdAt;
  String? updatedAt;
  int? discountPrice;
  String? coverImg;
  String? trailerFile;
  String? trailerUrl;
  bool? isTop;
  bool? isBest;
  String? isValid;
  int? category;
  int? subcategory;

  MyService(
      {this.id,
      this.courseOwner,
      this.enrolledStudents,
      this.isFree,
      this.courseRating,
      this.courseDuration,
      this.videoCount,
      this.commentsCount,
      this.viewsCount,
      this.name,
      this.type,
      this.lang,
      this.level,
      this.keyWords,
      this.whatToLearn,
      this.whomThisCourse,
      this.price,
      this.shortDescr,
      this.recommendation,
      this.exchangeUrl,
      this.createdAt,
      this.updatedAt,
      this.discountPrice,
      this.coverImg,
      this.trailerFile,
      this.trailerUrl,
      this.isTop,
      this.isBest,
      this.isValid,
      this.category,
      this.subcategory});

  MyService.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseOwner = json['course_owner'] != null
        ? new CourseOwner.fromJson(json['course_owner'])
        : null;
    enrolledStudents = json['enrolled_students'];
    isFree = json['is_free'];
    courseRating = json['course_rating'] != null
        ? new CourseRating.fromJson(json['course_rating'])
        : null;
    courseDuration = json['course_duration'];
    videoCount = json['video_count'];
    commentsCount = json['comments_count'];
    viewsCount = json['views_count'];
    name = json['name'];
    type = json['type'];
    lang = json['lang'];
    level = json['level'];
    keyWords = json['key_words'];
    whatToLearn = json['what_to_learn'];
    whomThisCourse = json['whom_this_course'];
    price = json['price'];
    shortDescr = json['short_descr'];
    recommendation = json['recommendation'];
    exchangeUrl = json['exchange_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    discountPrice = json['discount_price'];
    coverImg = json['cover_img'];
    trailerFile = json['trailer_file'];
    trailerUrl = json['trailer_url'];
    isTop = json['is_top'];
    isBest = json['is_best'];
    isValid = json['is_valid'];
    category = json['category'];
    subcategory = json['subcategory'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.courseOwner != null) {
      data['course_owner'] = this.courseOwner!.toJson();
    }
    data['enrolled_students'] = this.enrolledStudents;
    data['is_free'] = this.isFree;
    if (this.courseRating != null) {
      data['course_rating'] = this.courseRating!.toJson();
    }
    data['course_duration'] = this.courseDuration;
    data['video_count'] = this.videoCount;
    data['comments_count'] = this.commentsCount;
    data['views_count'] = this.viewsCount;
    data['name'] = this.name;
    data['type'] = this.type;
    data['lang'] = this.lang;
    data['level'] = this.level;
    data['key_words'] = this.keyWords;
    data['what_to_learn'] = this.whatToLearn;
    data['whom_this_course'] = this.whomThisCourse;
    data['price'] = this.price;
    data['short_descr'] = this.shortDescr;
    data['recommendation'] = this.recommendation;
    data['exchange_url'] = this.exchangeUrl;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['discount_price'] = this.discountPrice;
    data['cover_img'] = this.coverImg;
    data['trailer_file'] = this.trailerFile;
    data['trailer_url'] = this.trailerUrl;
    data['is_top'] = this.isTop;
    data['is_best'] = this.isBest;
    data['is_valid'] = this.isValid;
    data['category'] = this.category;
    data['subcategory'] = this.subcategory;
    return data;
  }
}

class CourseOwner {
  int? id;
  String? fullName;
  String? profilePicture;

  CourseOwner({this.id, this.fullName, this.profilePicture});

  CourseOwner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    profilePicture = json['profile_picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['full_name'] = this.fullName;
    data['profile_picture'] = this.profilePicture;
    return data;
  }
}

class CourseRating {
  String? rating;
  int? votersNumber;
  int? fiveRating;
  int? fourRating;
  int? threeRating;
  int? twoRating;
  int? oneRating;

  CourseRating(
      {this.rating,
      this.votersNumber,
      this.fiveRating,
      this.fourRating,
      this.threeRating,
      this.twoRating,
      this.oneRating});

  CourseRating.fromJson(Map<String, dynamic> json) {
    rating = json['rating'];
    votersNumber = json['voters_number'];
    fiveRating = json['five_rating'];
    fourRating = json['four_rating'];
    threeRating = json['three_rating'];
    twoRating = json['two_rating'];
    oneRating = json['one_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this.rating;
    data['voters_number'] = this.votersNumber;
    data['five_rating'] = this.fiveRating;
    data['four_rating'] = this.fourRating;
    data['three_rating'] = this.threeRating;
    data['two_rating'] = this.twoRating;
    data['one_rating'] = this.oneRating;
    return data;
  }
}
