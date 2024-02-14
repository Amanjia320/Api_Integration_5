class GetStatusModel {
  GetStatusModel({
    required this.success,
    required this.data,
    required this.totalServices,
    required this.totalPages,
  });

  final bool? success;
  final List<Datum> data;
  final int? totalServices;
  final int? totalPages;

  factory GetStatusModel.fromJson(Map<String, dynamic> json) {
    return GetStatusModel(
      success: json["success"],
      data: json["data"] == null
          ? []
          : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      totalServices: json["totalServices"],
      totalPages: json["totalPages"],
    );
  }
}

class Datum {
  Datum({
    required this.id,
    required this.title,
    required this.description,
    required this.user,
    required this.category,
    required this.subCategory,
    required this.clicks,
    required this.impressions,
    required this.keywords,
    required this.priceType,
    required this.priceValue,
    required this.experience,
    required this.status,
    required this.isOrder,
    required this.createdAt,
    required this.v,
    required this.reviews,
    required this.requests,
  });

  final String? id;
  final String? title;
  final String? description;
  final User? user;
  final Category? category;
  final SubCategory? subCategory;
  final int? clicks;
  final int? impressions;
  final List<String> keywords;
  final String? priceType;
  final int? priceValue;
  final String? experience;
  final String? status;
  final bool? isOrder;
  final DateTime? createdAt;
  final int? v;
  final List<dynamic> reviews;
  final int? requests;

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json["_id"],
      title: json["title"],
      description: json["description"],
      user: json["user"] == null ? null : User.fromJson(json["user"]),
      category:
          json["category"] == null ? null : Category.fromJson(json["category"]),
      subCategory: json["subCategory"] == null
          ? null
          : SubCategory.fromJson(json["subCategory"]),
      clicks: json["clicks"],
      impressions: json["impressions"],
      keywords: json["keywords"] == null
          ? []
          : List<String>.from(json["keywords"]!.map((x) => x)),
      priceType: json["priceType"],
      priceValue: json["priceValue"],
      experience: json["experience"],
      status: json["status"],
      isOrder: json["isOrder"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      v: json["__v"],
      reviews: json["reviews"] == null
          ? []
          : List<dynamic>.from(json["reviews"]!.map((x) => x)),
      requests: json["requests"],
    );
  }
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.v,
    required this.image,
  });

  final String? id;
  final String? name;
  final DateTime? createdAt;
  final int? v;
  final String? image;

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["_id"],
      name: json["name"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      v: json["__v"],
      image: json["image"],
    );
  }
}

class SubCategory {
  SubCategory({
    required this.id,
    required this.name,
    required this.category,
    required this.v,
  });

  final String? id;
  final String? name;
  final String? category;
  final int? v;

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      id: json["_id"],
      name: json["name"],
      category: json["category"],
      v: json["__v"],
    );
  }
}

class User {
  User({
    required this.id,
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.insurance,
    required this.type,
    required this.role,
    required this.status,
    required this.country,
    required this.city,
    required this.state,
    required this.hourlyRate,
    required this.email,
    required this.verified,
    required this.skills,
    required this.organization,
    required this.currency,
    required this.language,
    required this.drugTest,
    required this.criminalTest,
    required this.twoStepAuth,
    required this.phoneVerified,
    required this.createdAt,
    required this.accountSuspendedTill,
    required this.profileImage,
    required this.about,
    required this.address,
    required this.businessId,
    required this.latitude,
    required this.longitude,
    required this.occupation,
    required this.dob,
    required this.zipcode,
    required this.verificationToken,
    required this.password,
    required this.candidateId,
    required this.paymentVerified,
    required this.updatedAt,
  });

  final String? id;
  final String? userName;
  final String? firstName;
  final String? lastName;
  final bool? insurance;
  final String? type;
  final String? role;
  final String? status;
  final String? country;
  final String? city;
  final String? state;
  final int? hourlyRate;
  final String? email;
  final bool? verified;
  final List<String> skills;
  final bool? organization;
  final String? currency;
  final String? language;
  final String? drugTest;
  final String? criminalTest;
  final bool? twoStepAuth;
  final bool? phoneVerified;
  final DateTime? createdAt;
  final dynamic accountSuspendedTill;
  final String? profileImage;
  final String? about;
  final String? address;
  final String? businessId;
  final String? latitude;
  final String? longitude;
  final String? occupation;
  final String? dob;
  final String? zipcode;
  final dynamic verificationToken;
  final String? password;
  final String? candidateId;
  final bool? paymentVerified;
  final DateTime? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["_id"],
      userName: json["userName"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      insurance: json["insurance"],
      type: json["type"],
      role: json["role"],
      status: json["status"],
      country: json["country"],
      city: json["city"],
      state: json["state"],
      hourlyRate: json["hourlyRate"],
      email: json["email"],
      verified: json["verified"],
      skills: json["skills"] == null
          ? []
          : List<String>.from(json["skills"]!.map((x) => x)),
      organization: json["organization"],
      currency: json["currency"],
      language: json["language"],
      drugTest: json["drugTest"],
      criminalTest: json["criminalTest"],
      twoStepAuth: json["twoStepAuth"],
      phoneVerified: json["phoneVerified"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      accountSuspendedTill: json["accountSuspendedTill"],
      profileImage: json["profileImage"],
      about: json["about"],
      address: json["address"],
      businessId: json["businessId"],
      latitude: json["latitude"],
      longitude: json["longitude"],
      occupation: json["occupation"],
      dob: json["dob"],
      zipcode: json["zipcode"],
      verificationToken: json["verificationToken"],
      password: json["password"],
      candidateId: json["candidateId"],
      paymentVerified: json["paymentVerified"],
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
    );
  }
}
