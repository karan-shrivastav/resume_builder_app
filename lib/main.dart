import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume_builder_app/screens/create_resume_screen.dart';
import 'package:resume_builder_app/screens/resume_screen.dart';
import 'package:resume_builder_app/services/firestore_services.dart';
import 'package:resume_builder_app/widgets/update_dialog.dart';
import 'models/resume_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: 'AIzaSyC6CkqZy-aAg_fL4Hwsp5lOO1uuVbLaL1g',
          appId: '1:295541898652:android:8d3eca106415fa3e3a5c59',
          messagingSenderId: '295541898652',
          projectId: 'resumebuilderapp-e2d2e',
        ))
      : await Firebase.initializeApp();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  final FirestoreServices _firestoreService = FirestoreServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: StreamBuilder<List<ResumeModel>>(
        stream: _firestoreService.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done &&
              !snapshot.hasData) {
            return const Center(
              child: Text('No users found'),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            List<ResumeModel> users = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: users.length,
              itemBuilder: (context, index) {
                //ref.read(dataProvider.notifier).setId(users.length + 1);
                print(users.length);
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResumeScreen(
                            name: users[index].name ?? '',
                            email: users[index].email ?? '',
                            age: users[index].age,
                            contact: users[index].contactNumber ?? '',
                            skills: users[index].skills ?? '',
                            programmingLanguages:
                                users[index].programmingLanguages ?? '',
                            projects: users[index].projects ?? '',
                            currentCompany: users[index].currentCompany ?? '',
                            pgCollegeName: users[index].pgCollegeName ?? '',
                            pgCollegeStartYear:
                                users[index].pgCollegeStartYear ?? '',
                            pgCollegeEndYear:
                                users[index].pgCollegeEndYear ?? '',
                            graduationCollegeName:
                                users[index].graduationCollegeName ?? '',
                            graduationCollegeStartYear:
                                users[index].graduationStartYear ?? '',
                            graduationCollegeEndYear:
                                users[index].graduationEndYear ?? '',
                            interMediateCollegeName:
                                users[index].interMediateCollegeName ?? '',
                            interMediateCollegeStartYear:
                                users[index].interMediateStartYear ?? '',
                            interMediateCollegeEndYear:
                                users[index].interMediateEndYear ?? '',
                            highSchoolCollegeName:
                                users[index].highSchoolCollegeName ?? '',
                            highSchoolCollegeStartYear:
                                users[index].highSchoolStartYear ?? '',
                            highSchoolCollegeEndYear:
                                users[index].highSchoolEndYear ?? '',
                          ),
                        ));
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(users[index].name ?? ''),
                      subtitle: Text(users[index].email ?? ''),
                      trailing: InkWell(
                          onTap: () {
                            showDialog<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return UpdateDilaog(
                                    id : '1a2d7b00-a5ff-1db3-b70f-3138758cb2d1',

                                   // id: users[index].id ?? '',
                                    name: users[index].name ?? '',
                                    email: users[index].email ?? '',
                                    age: users[index].age,
                                    contact: users[index].contactNumber ?? '',
                                    skills: users[index].skills ?? '',
                                    programmingLanguages:
                                        users[index].programmingLanguages ?? '',
                                    projects: users[index].projects ?? '',
                                    currentCompany:
                                        users[index].currentCompany ?? '',
                                    pgCollegeName:
                                        users[index].pgCollegeName ?? '',
                                    pgCollegeStartYear:
                                        users[index].pgCollegeStartYear ?? '',
                                    pgCollegeEndYear:
                                        users[index].pgCollegeEndYear ?? '',
                                    graduationCollegeName:
                                        users[index].graduationCollegeName ??
                                            '',
                                    graduationCollegeStartYear:
                                        users[index].graduationStartYear ?? '',
                                    graduationCollegeEndYear:
                                        users[index].graduationEndYear ?? '',
                                    interMediateCollegeName:
                                        users[index].interMediateCollegeName ??
                                            '',
                                    interMediateCollegeStartYear:
                                        users[index].interMediateStartYear ??
                                            '',
                                    interMediateCollegeEndYear:
                                        users[index].interMediateEndYear ?? '',
                                    highSchoolCollegeName:
                                        users[index].highSchoolCollegeName ??
                                            '',
                                    highSchoolCollegeStartYear:
                                        users[index].highSchoolStartYear ?? '',
                                    highSchoolCollegeEndYear:
                                        users[index].highSchoolEndYear ?? '',
                                  );
                                });
                          },
                          child: Icon(Icons.edit)),
                      // Additional UI elements as per your model
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateResumeScreen()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
