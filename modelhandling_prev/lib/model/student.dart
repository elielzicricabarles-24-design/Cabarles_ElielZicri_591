class Student {
  final String id;
  final String name;
  final int age;
  final double gpa;

  // Constructor
  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.gpa,
  });

  // Converts web data(base) into .json format / to PULL
  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'] as String,
      name: map['id'] as String,
      age: map['id'] as int,
      gpa: (map['id'] as num).toDouble(),
    );
  } // Makes data dynamic

  // Converts .json into raw data / to STORE
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'age': age, 'gpa': gpa};
  }
}
