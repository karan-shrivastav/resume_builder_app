class ResumeModel {
  final String? name;
  final String? email;
  final int? age;
  final String? contactNumber;
  final String? programmingLanguages;
  final String? skills;
  final String? projects;
  final String? currentCompany;
  final String? pgCollegeName;
  final String? pgCollegeStartYear;
  final String? pgCollegeEndYear;
  final String? graduationCollegeName;
  final String? graduationStartYear;
  final String? graduationEndYear;
  final String? interMediateCollegeName;
  final String? interMediateStartYear;
  final String? interMediateEndYear;
  final String? highSchoolCollegeName;
  final String? highSchoolStartYear;
  final String? highSchoolEndYear;

  ResumeModel({
    this.name,
    this.email,
    this.age,
    this.contactNumber,
    this.programmingLanguages,
    this.skills,
    this.projects,
    this.currentCompany,
    this.pgCollegeName,
    this.pgCollegeStartYear,
    this.pgCollegeEndYear,
    this.graduationCollegeName,
    this.graduationStartYear,
    this.graduationEndYear,
    this.interMediateCollegeName,
    this.interMediateStartYear,
    this.interMediateEndYear,
    this.highSchoolCollegeName,
    this.highSchoolStartYear,
    this.highSchoolEndYear,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'age': age,
      'contact_number': contactNumber,
      'programmingLanguages': programmingLanguages,
      'skills': skills,
      'projects': projects,
      'current_company': currentCompany,
      'pg_college_name' : pgCollegeName,
      'pg_college_start_year': pgCollegeStartYear,
      'pg_college_end_year': pgCollegeEndYear,
      'graduation_college_name': graduationCollegeName,
      'graduation_college_start_year': graduationStartYear,
      'graduation_college_end_year': graduationEndYear,
      'intermediate_college_name': interMediateCollegeName,
      'intermediate_college_start_year': interMediateStartYear,
      'intermediate_college_end_year': interMediateEndYear,
      'high_school_college_name': highSchoolCollegeName,
      'high_school_start_year': highSchoolStartYear,
      'high_school_end_year': highSchoolEndYear,

    };
  }

  factory ResumeModel.fromMap(Map<String, dynamic> map) {
    return ResumeModel(
      name: map['name'],
      email: map['email'],
      age: map['age'],
      contactNumber: map['contact_number'],
      programmingLanguages: map['programmingLanguages'],
      skills : map['skills'],
      projects: map['projects'],
      currentCompany: map['current_company'],
      pgCollegeName: map['pg_college_name'],
      pgCollegeStartYear: map['pg_college_start_year'],
      pgCollegeEndYear: map['pg_college_end_year'],
      graduationCollegeName: map['graduation_college_name'],
      graduationStartYear: map['graduation_college_start_year'],
      graduationEndYear: map['graduation_college_end_year'],
      interMediateCollegeName: map['intermediate_college_name'],
      interMediateStartYear: map['intermediate_college_start_year'],
      interMediateEndYear: map['intermediate_college_end_year'],
      highSchoolCollegeName: map['high_school_college_name'],
      highSchoolStartYear: map['high_school_start_year'],
      highSchoolEndYear: map['highSchoolEndYear'],
    );
  }
}
