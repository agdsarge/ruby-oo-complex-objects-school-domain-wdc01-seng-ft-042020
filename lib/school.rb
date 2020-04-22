# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_reader :roster

    def add_student(nomen, grade)
        @roster[grade] ? @roster[grade] << nomen : @roster[grade] = [nomen]
    end

    def grade(gr)
        return @roster[gr]
    end

    def sort
        @roster.each_pair {|grade, name_arr| name_arr.sort!}
    end

end

wa = School.new("hogwarts")
wa.add_student("samuel", 9)
wa.add_student("mark", 9)
wa.add_student("adam", 9)
wa.add_student("luke", 10)

p wa.grade(9)
wa.sort
p wa.grade(9)
