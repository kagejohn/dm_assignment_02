student(alexander).
student(christian).
student(christopher).
student(joachim).
student(mahnaz).
student(viktor).
student(william).
student(xinkai).
student(zaeem).

class(monday, lsd).
class(wednesday, si).
class(thursday, bi).
class(thursday, dm).
class(thursday, ufo).

room(203).

% lsd, si, ufo
classes_for_everyone(Student, Class):-
	student(Student),
	(Class == 'lsd'; Class == 'si'; Class == 'ufo').

% bi
student_class(joachim, bi).
student_class(xinkai, bi).
student_class(zaeem, bi).

% dm
student_class_dm(Student, Class):-
	student(Student),
	not(student_class(Student, 'bi')),
	Class == 'dm'.

student_info(Student, Class):-
	classes_for_everyone(Student, Class);
	student_class(Student, Class);
	student_class_dm(Student, Class).
	
classes(Day, Class, Room):-
	class(Day, Class),
	room(Room).