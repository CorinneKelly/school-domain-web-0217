class School

	attr_reader :grade, :student_name

	

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end
	

	def add_student(student_name, grade)

		# @student_name = student_name
		# @grade = grade
		if @roster[grade] 
			@roster[grade] << student_name
		else
			@roster[grade] = [student_name]
		end
		puts @roster
	end

	def roster
		@roster
	end

	def grade(num)
		@roster[num]
	end

	def sort
		new_hash = {}
		@roster.each do |grade, names|
			new_hash[grade] = names.sort
		end

		new_hash.sort_by { |grade, names| grade}
		new_hash
	end

end