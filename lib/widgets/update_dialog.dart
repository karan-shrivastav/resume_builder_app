import 'package:flutter/material.dart';
import 'package:resume_builder_app/services/firestore_services.dart';

import 'defaut_textfield_widget.dart';

class UpdateDilaog extends StatefulWidget {
  final String id;
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
  const UpdateDilaog(
      {super.key,
      required this.id,
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
      this.highSchoolCollegeEndYear});

  @override
  State<UpdateDilaog> createState() => _UpdateDilaogState();
}

class _UpdateDilaogState extends State<UpdateDilaog> {
  final FirestoreServices _firestoreService = FirestoreServices();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _programmingLanguagesController =
      TextEditingController();
  final TextEditingController _skillsController = TextEditingController();
  final TextEditingController _projectsController = TextEditingController();
  final TextEditingController _currentCompanyController =
      TextEditingController();
  final TextEditingController _pgCollegeNameController =
      TextEditingController();
  final TextEditingController _pgCollegeStartYearController =
      TextEditingController();
  final TextEditingController _pgCollegeEndYearController =
      TextEditingController();
  final TextEditingController _graduationCollegeNameController =
      TextEditingController();
  final TextEditingController _graduationStartYearController =
      TextEditingController();
  final TextEditingController _graduationEndYearController =
      TextEditingController();
  final TextEditingController _interMediateCollegeNameController =
      TextEditingController();
  final TextEditingController _interMediateStartYearController =
      TextEditingController();
  final TextEditingController _interMediateEndYearController =
      TextEditingController();
  final TextEditingController _highSchoolCollegeNameController =
      TextEditingController();
  final TextEditingController _highSchoolStartYearController =
      TextEditingController();
  final TextEditingController _highSchoolEndYearController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Basic dialog title'),
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DefaultTextFieldWidget(
                controller: TextEditingController(
                    text: _nameController.text.isEmpty
                        ? widget.name
                        : _nameController.text),
                hintText: 'Enter your name',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                    text: _emailController.text.isEmpty
                        ? widget.email
                        : _emailController.text),
                hintText: 'Enter your email',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                          text: _contactController.text.isEmpty
                              ? widget.contact
                              : _contactController.text),
                      hintText: 'Enter your Mobile Number',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                          text: _ageController.text.isEmpty
                              ? '${widget.age}'
                              : _ageController.text),
                      hintText: 'Age',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                    text: _programmingLanguagesController.text.isEmpty
                        ? widget.programmingLanguages
                        : _programmingLanguagesController.text),
                hintText: 'Enter Programming languages',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                    text: _skillsController.text.isEmpty
                        ? widget.skills
                        : _skillsController.text),
                hintText: 'Enter All Skills',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                    text: _projectsController.text.isEmpty
                        ? widget.projects
                        : _projectsController.text),
                hintText: 'Enter All projects',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                    text: _currentCompanyController.text.isEmpty
                        ? widget.currentCompany
                        : _currentCompanyController.text),
                hintText: 'Current company',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                    text: _pgCollegeNameController.text.isEmpty
                        ? widget.pgCollegeName
                        : _pgCollegeNameController.text),
                hintText: 'Enter PG college Name',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                          text: _pgCollegeStartYearController.text.isEmpty
                              ? widget.pgCollegeStartYear
                              : _pgCollegeStartYearController.text),
                      hintText: 'From',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                        text: _pgCollegeEndYearController.text.isEmpty
                            ? widget.pgCollegeEndYear
                            : _pgCollegeEndYearController.text,
                      ),
                      hintText: 'To',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                    text: _graduationCollegeNameController.text.isEmpty
                        ? widget.graduationCollegeName
                        : _graduationCollegeNameController.text),
                hintText: 'Enter Graduation college Name',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                          text: _graduationStartYearController.text.isEmpty
                              ? widget.graduationCollegeStartYear
                              : _graduationStartYearController.text),
                      hintText: 'From',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                          text: _graduationEndYearController.text.isEmpty
                              ? widget.graduationCollegeEndYear
                              : _graduationEndYearController.text),
                      hintText: 'To',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                  text: _interMediateCollegeNameController.text.isEmpty
                      ? widget.interMediateCollegeName
                      : _interMediateCollegeNameController.text,
                ),
                hintText: 'Inter mediate college Name',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                          text: _interMediateStartYearController.text.isEmpty
                              ? widget.interMediateCollegeStartYear
                              : _interMediateStartYearController.text),
                      hintText: 'From',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                          text: _interMediateEndYearController.text.isEmpty
                              ? widget.graduationCollegeEndYear
                              : _interMediateEndYearController.text),
                      hintText: 'To',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: TextEditingController(
                  text: _highSchoolCollegeNameController.text.isEmpty
                      ? widget.highSchoolCollegeName
                      : _highSchoolCollegeNameController.text,
                ),
                hintText: 'Enter High school college Name',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                          text: _highSchoolStartYearController.text.isEmpty
                              ? widget.highSchoolCollegeStartYear
                              : _highSchoolStartYearController.text),
                      hintText: 'From',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: TextEditingController(
                        text: _highSchoolEndYearController.text.isEmpty
                            ? widget.highSchoolCollegeEndYear
                            : _highSchoolEndYearController.text,
                      ),
                      hintText: 'To',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Disable'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Update'),
          onPressed: () {
            Map<String, dynamic> dataMap = {
              'name': _nameController.text,
              'email': _emailController.text,
              'age': _ageController.text,
              'contact_number': _contactController.text,
              'programmingLanguages': _programmingLanguagesController.text,
              'skills': _skillsController.text,
              'projects': _projectsController.text,
              'current_company': _currentCompanyController.text,
              'pg_college_name': _pgCollegeNameController.text,
              'pg_college_start_year': _pgCollegeStartYearController.text,
              'pg_college_end_year': _pgCollegeEndYearController.text,
              'graduation_college_name': _graduationCollegeNameController.text,
              'graduation_college_start_year':
                  _graduationStartYearController.text,
              'graduation_college_end_year': _graduationEndYearController.text,
              'intermediate_college_name':
                  _interMediateCollegeNameController.text,
              'intermediate_college_start_year':
                  _interMediateStartYearController.text,
              'intermediate_college_end_year':
                  _interMediateEndYearController.text,
              'high_school_college_name': _highSchoolCollegeNameController.text,
              'high_school_start_year': _highSchoolStartYearController.text,
              'high_school_end_year': _highSchoolEndYearController.text,
            };
            _firestoreService.updateUser(widget.id, dataMap);
            setState(() {

            });
          },
        ),
      ],
    );
  }
}
