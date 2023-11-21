import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume_builder_app/models/resume_model.dart';
import 'package:resume_builder_app/providers/data_provider.dart';
import 'package:resume_builder_app/services/firestore_services.dart';
import 'package:resume_builder_app/widgets/defaut_textfield_widget.dart';
import 'package:uuid/uuid.dart';

class UpdateResumeScreen extends ConsumerStatefulWidget {
  const UpdateResumeScreen({super.key});

  @override
  ConsumerState<UpdateResumeScreen> createState() => _UpdateResumeScreenState();
}

class _UpdateResumeScreenState extends ConsumerState<UpdateResumeScreen> {
  String id = const Uuid().v1();
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

  void addResume() {
    ResumeModel newResume = ResumeModel(
      // id: id,
      id: '${ref.watch(dataProvider.notifier).getid}',
      name: _nameController.text,
      email: _emailController.text,
      age: int.parse(_ageController.text),
      contactNumber: _contactController.text,
      programmingLanguages: _programmingLanguagesController.text,
      skills: _skillsController.text,
      projects: _projectsController.text,
      currentCompany: _currentCompanyController.text,
      pgCollegeName: _pgCollegeNameController.text,
      pgCollegeStartYear: _pgCollegeStartYearController.text,
      pgCollegeEndYear: _pgCollegeEndYearController.text,
      graduationCollegeName: _graduationCollegeNameController.text,
      graduationStartYear: _graduationStartYearController.text,
      graduationEndYear: _graduationEndYearController.text,
      interMediateCollegeName: _interMediateCollegeNameController.text,
      interMediateStartYear: _interMediateStartYearController.text,
      interMediateEndYear: _interMediateEndYearController.text,
      highSchoolCollegeName: _highSchoolCollegeNameController.text,
      highSchoolStartYear: _highSchoolStartYearController.text,
      highSchoolEndYear: _highSchoolEndYearController.text,
    );
    FirestoreServices().addUser(newResume);
    _nameController.clear();
    _emailController.clear();
    _ageController.clear();
    _contactController.clear();
    _programmingLanguagesController.clear();
    _skillsController.clear();
    _projectsController.clear();
    _currentCompanyController.clear();
    _pgCollegeNameController.clear();
    _pgCollegeStartYearController.clear();
    _pgCollegeEndYearController.clear();
    _graduationCollegeNameController.clear();
    _graduationStartYearController.clear();
    _graduationEndYearController.clear();
    _interMediateCollegeNameController.clear();
    _interMediateStartYearController.clear();
    _interMediateEndYearController.clear();
    _highSchoolCollegeNameController.clear();
    _highSchoolStartYearController.clear();
    _highSchoolEndYearController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Resume'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DefaultTextFieldWidget(
                controller: _nameController,
                hintText: 'Enter your name',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _emailController,
                hintText: 'Enter your email',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _contactController,
                      hintText: 'Enter your Mobile Number',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    child: DefaultTextFieldWidget(
                      controller: _ageController,
                      hintText: 'Age',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _programmingLanguagesController,
                hintText: 'Enter Programming languages',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _skillsController,
                hintText: 'Enter All Skills',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _projectsController,
                hintText: 'Enter All projects',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _currentCompanyController,
                hintText: 'Current company',
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _pgCollegeNameController,
                hintText: 'Enter PG college Name',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _pgCollegeStartYearController,
                      hintText: 'From',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _pgCollegeEndYearController,
                      hintText: 'To',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _graduationCollegeNameController,
                hintText: 'Enter Graduation college Name',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _graduationStartYearController,
                      hintText: 'From',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _graduationEndYearController,
                      hintText: 'To',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _interMediateCollegeNameController,
                hintText: 'Inter mediate college Name',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _interMediateStartYearController,
                      hintText: 'From',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _interMediateEndYearController,
                      hintText: 'To',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTextFieldWidget(
                controller: _highSchoolCollegeNameController,
                hintText: 'Enter High school college Name',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _highSchoolStartYearController,
                      hintText: 'From',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DefaultTextFieldWidget(
                      controller: _highSchoolEndYearController,
                      hintText: 'To',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    addResume();
                  },
                  child: const Text('Create Resume'),
                ),
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
