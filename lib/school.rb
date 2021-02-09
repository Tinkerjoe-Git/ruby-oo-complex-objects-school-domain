class School
    attr_accessor :school, :name
    
    
   
    def roster
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        list={}
        @roster.each do |key, value|
            list[key]=value.sort
            
        end
        list
    end


    def initialize(school)
        @roster = {}
    end

    def add_student(name, grade)
        if(roster[grade]) ## if @roster has a grade do this
            @roster[grade] << name
        ###@roster.merge(student_hash)
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end
end
