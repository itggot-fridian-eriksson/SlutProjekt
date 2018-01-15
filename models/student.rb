class Student

    attr_reader :id, :name; :pnr

    def initialize(array)
        @id = array[0]
        @name = array[1]
        @pnr = array[2]  
    end

    def self.all
        db = SQLite3::Database.open('db/db.sqlite')
        array = db.execute('SELECT * FROM students')
        return array.map { |row| Student.new(row) }
    end

    
end
