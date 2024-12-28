import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPortfolio(),
    );
  }
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
            const Center(child: Text("My PortFolio",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
           const Padding(
             padding: EdgeInsets.only(top:15,bottom: 15,left:50),
             child: Text("Tabish Niaz",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
           ),
            const Text("I AM MOBILE APP\nDEVELOPER AND DESIGNER",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
          const Padding(
            padding: EdgeInsets.only(top: 50,bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, size: 40, color: Colors.blue),
                SizedBox(width: 50),
                Icon(Icons.alternate_email, size: 40, color: Colors.pink),
                SizedBox(width: 50),
                Icon(Icons.phone, size: 40, color: Colors.blueAccent),
                SizedBox(width: 50),
                Icon(Icons.telegram, size: 40, color: Colors.blue),
              ],
            ),
          ),
          Image.asset('assets/images/flutter.jpg'),
          const Padding(
            padding: EdgeInsets.only(top: 20,bottom: 20,left:50),
            child: Text("Tabish Niaz",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding:  EdgeInsets.only(left: 30),
            child: Text("Passionate developer adept at crafting elegant and efficient solutions to complex problems. Dedicated to continuous learning and staying abreast of emerging.",style: TextStyle(color: Colors.black,fontSize: 25),),
          ),
         Padding(
           padding: const EdgeInsets.only(top: 10,right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Education()));}, child: const Text("Next>",style: TextStyle(color: Colors.black,fontSize: 20),)),
             ],
           ),
         )
           
        ],
  )
    );
  } 
}

class Education extends StatelessWidget {
   const Education({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
              "Education",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
            ),
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        Container(
            height: 3, 
            width: double.infinity, 
            color: Colors.black,
          ),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text("Graduation",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             Text("The University of Lahore",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          const SizedBox(height: 10,),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Bachelor of Science in Information Engineering Technology, BSIET (Continue)",style: TextStyle(color: Colors.black,fontSize: 20),),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 1, 
            width: double.infinity, 
            color: Colors.black,
          ),
           const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text("Intermediate",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             Text("Govt. College Lahore",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          const SizedBox(height: 10,),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Intermediate in Computer Science (2020-2022)",style: TextStyle(color: Colors.black,fontSize: 20),),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 1, 
            width: double.infinity, 
            color: Colors.black,
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Skills()));}, child: const Text("Next>",style: TextStyle(color: Colors.black,fontSize: 20),)),
            ],
          )
      ],
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
            'Skills:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
      ),
      backgroundColor: Colors.white,
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const SizedBox(height: 20), 
        
         
          buildSkillRow('Flutter', 0.9),
          const SizedBox(height: 16),
          buildSkillRow('Dart', 0.85),
          const SizedBox(height: 16),
          buildSkillRow('UI/UX Design', 0.8),
          const SizedBox(height: 15,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>   Experience()));}, child: const Text("Next>",style: TextStyle(color: Colors.black,fontSize: 20),)),
            ],
          )
        ],
      ),
    );
  }


  Widget buildSkillRow(String skillName, double percentage) {
    return Row(
      children: [
        
        Expanded(
          flex: 2,
          child: Text(
            skillName,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: percentage, 
            backgroundColor: Colors.grey[300],
            color: Colors.blue,
            minHeight: 10,
          ),
        ),
        const SizedBox(width: 10), 
        Text(
                  '${(percentage * 100).toInt()}%', 
                  style: const TextStyle(fontSize: 18),
                ),
        ],
    );
  }
}

class Experience extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Todo App',
      'description': 'A simple todo list app built with Flutter and Firebase.',
    },
    {
      'title': 'Weather App',
      'description': 'A weather app built with Flutter that fetches data from a REST API.',
    },
    {
      'title': 'Expense Tracker App',
      'description':
          'The app enables users to efficiently manage their expenses on-the-go by providing a user-friendly interface to track their spending habits.',
    },
  ];
   Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         title:  const Text("Projects and Experience",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
        ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project = projects[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            project['title']!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            project['description']!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  Interest()));}, child: const Text("Next>",style: TextStyle(color: Colors.black,fontSize: 20),)),
        ],
      ),
    );
  }
}


class Interest extends StatelessWidget {
  final List<Map<String, String>> interests = [
    {
      'title': 'My Interests:',
      'description': '',
    },
    {
      'title': 'Mobile App Development',
      'description': 'Creating innovative and user-friendly mobile applications.',
    },
    {
      'title': 'Web Development',
      'description': 'Building responsive and scalable web applications.',
    },
    {
      'title': 'Machine Learning',
      'description': 'Exploring algorithms and models to extract insights from data.',
    },
    {
      'title': 'UI/UX Design',
      'description': 'Designing intuitive and visually appealing user interfaces.',
    },
    {
      'title': 'Cloud Computing',
      'description': 'Leveraging cloud platforms for efficient and scalable solutions.',
    },
    {
      'title': 'Open Source Contribution',
      'description': 'Contributing to open source projects and communities.',
    },
  ];
  Interest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child:  Text('Portfolio Interest Section')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: interests.length,
                itemBuilder: (context, index) {
                  final interest = interests[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          interest['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          interest['description']!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Resume()));}, child: const Text("Next>",style: TextStyle(color: Colors.black,fontSize: 20),)),
        ],
      ),
    );
  }
}

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Resume",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
         
          children: [
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profession",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Software Developer",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.black,thickness: 2,),

            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date Of Birth",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "22-06-2004",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.black,thickness: 2,),

           
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Education",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Higher Education",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
           const Divider(color: Colors.black,thickness: 2,),
           OutlinedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const MyResume()));},style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)) ), child:  const Text("Check Resume",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
           const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyWidget()));}, child: const Text("Next>",style: TextStyle(color: Colors.black,fontSize: 20),)),
            ],
           )
          ]
        ),
      )
    );
  }
}

class MyResume extends StatelessWidget {
  const MyResume({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      
    );
  }
}

class MyWidget extends StatelessWidget {
  final List<Map<String, String>> experiences = [
    {
      'title': 'Front-End Web Developer',
      'company': 'Code Alpha',
      'type': 'Remote Intern',
      'description':
          'Successfully completed internship at Code Alpha Software House, gaining valuable hands-on experience in software development and contributing to real-world projects. Engaged in collaborative teamwork, honed technical skills, and gained insights into the professional software development environment.'
    },
    {
      'title': 'Flutter Developer',
      'company': 'Tech Innovators',
      'type': 'Intern',
      'description':
          'Developed cross-platform mobile applications, implemented responsive UI designs, and integrated RESTful APIs for dynamic app functionality.'
    },
    {
      'title': 'Backend Developer',
      'company': 'Soft Solutions',
      'type': 'Full-Time',
      'description':
          'Designed and maintained scalable backend systems using Node.js, optimized database queries, and ensured seamless integration with front-end components.'
    },
  ];
   MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Container Inside Scrollbar Example",
          style: TextStyle(fontSize: 18),
        ),
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Here 3 experience Minimum inside the Container',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: experiences.map((experience) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                experience['title']!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                experience['company']!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                experience['type']!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                experience['description']!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
