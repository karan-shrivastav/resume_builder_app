import 'package:flutter/material.dart';
import 'package:resume_builder_app/widgets/text_widget.dart';

class ResumeScreen extends StatelessWidget {
  final String? name;
  final String? email;
  final String? contact;
  final int? age;
  final String? skills;
  final String? programmingLanguages;
  final String? projects;
  final String? currentCompany;
  final String? pgCollegeName;
  final String? pgCollegeStartYear;
  final String? pgCollegeEndYear;
  final String? graduationCollegeName;
  final String? graduationCollegeStartYear;
  final String? graduationCollegeEndYear;
  final String? interMediateCollegeName;
  final String? interMediateCollegeStartYear;
  final String? interMediateCollegeEndYear;
  final String? highSchoolCollegeName;
  final String? highSchoolCollegeStartYear;
  final String? highSchoolCollegeEndYear;
  const ResumeScreen({
    super.key,
    this.name,
    this.email,
    this.contact,
    this.age,
    this.skills,
    this.programmingLanguages,
    this.projects,
    this.currentCompany,
    this.pgCollegeName,
    this.pgCollegeStartYear,
    this.pgCollegeEndYear,
    this.graduationCollegeName,
    this.graduationCollegeStartYear,
    this.graduationCollegeEndYear,
    this.interMediateCollegeName,
    this.interMediateCollegeStartYear,
    this.interMediateCollegeEndYear,
    this.highSchoolCollegeName,
    this.highSchoolCollegeStartYear,
    this.highSchoolCollegeEndYear,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          text: 'Resume of $name',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0).copyWith(left: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                height: 5,
                thickness: 5,
                color: Colors.green,
              ),
              const SizedBox(
                height: 20,
              ),
              TextWidget(
                text: '$name',
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
              TextWidget(
                text: 'Skills: $skills',
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Email: ',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: email ?? '',
                        style: const TextStyle(
                          color: Colors.blue,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  TextWidget(text: 'Contact: $contact'),
                  const SizedBox(
                    width: 10,
                  ),
                  TextWidget(text: 'Age: $age'),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              TextWidget(text: 'Current Company: $currentCompany'),
              const SizedBox(
                height: 30,
              ),
              const TextWidget(
                text: 'TECHNICAL SKILLS',
                fontSize: 14,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
              const TextWidget(
                text: 'Programming Languages',
                fontWeight: FontWeight.w600,
              ),
              TextWidget(text: '$programmingLanguages'),
              const SizedBox(
                height: 30,
              ),
              const TextWidget(
                text: 'PROJECTS',
                fontSize: 14,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
              const TextWidget(
                text: 'Projects are',
                fontWeight: FontWeight.w600,
              ),
              TextWidget(text: '$projects'),
              const SizedBox(
                height: 30,
              ),
              const TextWidget(
                text: 'EDUCATION',
                fontSize: 14,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
              const TextWidget(
                text: 'Post Graduation',
                fontWeight: FontWeight.w600,
              ),
              TextWidget(text: 'College Name: $pgCollegeName'),
              const SizedBox(
                height: 5,
              ),
              TextWidget(text: 'From: $pgCollegeStartYear - $pgCollegeEndYear'),
              const SizedBox(
                height: 10,
              ),
              const TextWidget(
                text: 'Graduation',
                fontWeight: FontWeight.w600,
              ),
              TextWidget(text: 'College Name: $graduationCollegeName'),
              const SizedBox(
                height: 5,
              ),
              TextWidget(
                  text:
                      'From: $graduationCollegeStartYear - $graduationCollegeEndYear'),
              const SizedBox(
                height: 10,
              ),
              const TextWidget(
                text: 'Intermediate',
                fontWeight: FontWeight.w600,
              ),
              TextWidget(text: 'School Name: $interMediateCollegeName'),
              const SizedBox(
                height: 5,
              ),
              TextWidget(
                  text:
                      'From: $interMediateCollegeStartYear - $interMediateCollegeEndYear'),
              const SizedBox(
                height: 10,
              ),
              const TextWidget(
                text: 'Highschool',
                fontWeight: FontWeight.w600,
              ),
              TextWidget(
                text: 'School Name: $highSchoolCollegeName',
              ),
              const SizedBox(
                height: 5,
              ),
              TextWidget(
                text:
                    'From: $highSchoolCollegeStartYear - $highSchoolCollegeEndYear',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
