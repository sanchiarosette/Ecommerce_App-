class ReviewModel {
  final String? reviewerName;
  final double? rating;
  final String? comment;
  final DateTime? date;

  ReviewModel({
    this.reviewerName,
    this.rating,
    this.comment,
    this.date,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      reviewerName: json['reviewerName']?.toString(),
      rating: json['rating'] is double
          ? json['rating']
          : double.tryParse(json['rating']?.toString() ?? '0') ?? 0.0,
      comment: json['comment']?.toString(),
      date: json['date'] != null
          ? DateTime.tryParse(json['date'].toString())
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'reviewerName': reviewerName,
      'rating': rating,
      'comment': comment,
      'date': date?.toIso8601String(),
    };
  }

  Map<String, dynamic> toJson() {
    return toMap();
  }
}
