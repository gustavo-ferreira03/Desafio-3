# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
csv = CSV.foreach(Rails.root.join('lib', 'seeds', 'notas.csv'), headers: true) do |t|
    if !Student.find_by(id: t["MATRICULA"].to_i) 
        puts "Creating student #{t["MATRICULA"]}"
        student = Student.create(id: t["MATRICULA"].to_i, course_id: t["COD_CURSO"].to_i)
    end
    if !Course.find_by(id: t["COD_CURSO"].to_i) 
        puts "Creating course #{t["COD_CURSO"]}"
        course = Course.create(id: t["COD_CURSO"].to_i)
    end
    if !Subject.find_by(code: t["COD_DISCIPLINA"])
        puts "Creating subject #{t["COD_DISCIPLINA"]}"
        subject = Subject.create(code: t["COD_DISCIPLINA"], hours: t["CARGA_HORARIA"].to_i)
    end

    puts "Creating attended subject(#{t["COD_DISCIPLINA"]}) for student #{t["MATRICULA"]} | grade: #{t["NOTA"]} | period: #{t["ANO_SEMESTRE"]}"
    AttendedSubject.create(
        student_id: t["MATRICULA"],
        subject_id: Subject.find_by(code: t["COD_DISCIPLINA"]).id,
        grade: t["NOTA"],
        period: t["ANO_SEMESTRE"]
    )
end