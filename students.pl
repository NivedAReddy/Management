% Name of students that are going to be enrolled in class
student(dan).
student(croe).
student(david).
student(goggins).
student(andrew).
student(mike).
student(robello).
student(chay).
student(ansh).
student(eve).
student(oliver).
student(emily).
student(croe).
student(randioten).
student(jhoncena).
student(randy).
student(batman).
student(alucard).
student(natan).
student(dracula).
student(abhi).
student(cristin).
student(charan).
student(sai).
student(sathwin).

% 15 classes that studets are going to be enrolled in
class(math107).
class(cse110).
class(fse100).
class(bio100).
class(asu101).
class(maths265).
class(math266).
class(gph111).
class(phy204).
class(ppe240).
class(cse120).
class(cse240).
class(gph112).
class(cse310).
class(sos111).

% enrolled
enrolled(dan, math107).
enrolled(dan, cse110).
enrolled(dan, fse100).
enrolled(croe, math107).
enrolled(croe, bio100).
enrolled(croe, asu101).
enrolled(david, cse110).
enrolled(david, bio100).
enrolled(david, math266).
enrolled(goggins, math107).
enrolled(goggins, asu101).
enrolled(goggins, phy204).
enrolled(andrew, fse100).
enrolled(andrew, ppe240).
enrolled(andrew, cse120).
enrolled(mike, math107).
enrolled(mike, gph111).
enrolled(mike, gph112).
enrolled(robello, cse110).
enrolled(robello, phy204).
enrolled(robello, cse310).
enrolled(chay, bio100).
enrolled(chay, ppe240).
enrolled(chay, sos111).
enrolled(ansh, math266).
enrolled(ansh, cse120).
enrolled(ansh, gph112).
enrolled(eve, fse100).
enrolled(eve, gph111).
enrolled(eve, cse310).
enrolled(oliver, asu101).
enrolled(oliver, ppe240).
enrolled(oliver, sos111).
enrolled(emily, math107).
enrolled(emily, cse110).
enrolled(emily, phy204).
enrolled(croe, bio100).
enrolled(croe, cse120).
enrolled(croe, cse310).
enrolled(randioten, fse100).
enrolled(randioten, math266).
enrolled(randioten, sos111).
enrolled(jhoncena, asu101).
enrolled(jhoncena, ppe240).
enrolled(jhoncena, gph112).
enrolled(randy, gph111).
enrolled(randy, cse120).
enrolled(randy, phy204).
enrolled(batman, math107).
enrolled(batman, math266).
enrolled(batman, cse310).
enrolled(alucard, bio100).
enrolled(alucard, cse110).
enrolled(alucard, fse100).
enrolled(natan, asu101).
enrolled(natan, gph111).
enrolled(natan, ppe240).
enrolled(dracula, math266).
enrolled(dracula, cse120).
enrolled(dracula, cse310).
enrolled(abhi, math107).
enrolled(abhi, phy204).
enrolled(abhi, sos111).
enrolled(cristin, cse110).
enrolled(cristin, ppe240).
enrolled(cristin, gph112).
enrolled(charan, bio100).
enrolled(charan, gph111).
enrolled(charan, cse120).
enrolled(sai, asu101).
enrolled(sai, math266).
enrolled(sai, cse310).
enrolled(sathwin, fse100).
enrolled(sathwin, ppe240).
enrolled(sathwin, sos111).

% This checks if two stuents are enrolled in the same class
courses_together(Student1, Student2, Class) :-
    enrolled(Student1, Class), % checks if student one is enrolled in class
    enrolled(Student2, Class), % checks if student 2 is enrolled in the same class
    Student1 \= Student2. % this for making sure that student1 and 2 are the same class

% shared classes between students
print_shared_classes :-
    student(Student1),
    student(Student2),
    Student1 @< Student2,
    courses_together(Student1, Student2, Class), 
    format('~w shares a ~w class with ~w~n', [Student1, Class, Student2]), % prints shared class
    fail.

% prints shared classes between students
?- print_shared_classes.