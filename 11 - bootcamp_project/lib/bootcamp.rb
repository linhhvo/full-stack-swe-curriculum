class Bootcamp

    # #initialize
    # should accept a name (string), slogan (string), and student_capacity (number) as args
    # should set the instance variables @name, @slogan, and @student_capacity
    # should set the instance variables @teachers and @students to empty arrays
    # should set the instance variable @grades to an empty hash where the default values are distinct empty arrays

    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new {|hash, key| hash[key] = []}
    end

    # #name
    # should get (return) the bootcamp's @name    
    
    def name
        @name
    end

    # #slogan
    # should get (return) the bootcamp's @slogan

    def slogan
        @slogan
    end

    # #teachers
    # should get (return) the bootcamp's @teachers
    
    def teachers
        @teachers
    end

    # #students
    # should get (return) the bootcamp's @students

    def students
        @students
    end

    # #hire
    # should accept a teacher (string) and add them to the end of @teachers
    
    def hire(teacher)
        @teachers << teacher
    end

    # #enroll
    # should accept a student (string) as an arg
    # when the number of enrolled students is below @student_capacity
    #   should add the student to @students
    #   should return true since the enrollment was successful
    # when the number of enrolled students is at @student_capacity
    #   should not add the student to @students
    #   should return false since the enrollment was not successful

    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        end
        false
    end

    # #enrolled?
    # should accept a student (string) and return a boolean indicating whether the student is enrolled in the bootcamp
    
    def enrolled?(student)
        @students.map(&:downcase).include?(student.downcase)
    end

    # #student_to_teacher_ratio
    # should return an integer representing the ratio between # students to 1 teacher rounded down to the nearest integer

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    # #add_grade
    # should accept a student (string) and a grade (number) and add that grade to the student's grades array inside of the @grades hash
    # when the student is already enrolled
    #   should add the grade to the student's grades array inside of the @grades hash
    #   should return true
    # when the student is not enrolled in the bootcamp
    #   should not add the grade
    #   should return false

    def add_grade(student, grade)
        if enrolled?(student)
            @grades[student] << grade
            true
        else
            false
        end
    end

    # #num_grades
    # should accept a student (string) and return the number of grades they have

    def num_grades(student)
        @grades[student].length
    end

    # #average_grade
    # should accept a student (string) and return a number representing their average grade rounded down to the nearest integer
    # should return nil if the student has no grades or is not enrolled
    
    def average_grade(student)
        if enrolled?(student) && num_grades(student) > 0
            @grades[student].sum / num_grades(student)
        end
    end
end
