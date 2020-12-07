class Appointment
    attr_accessor :location, :purpose, :hour, :min

    def initialize(location, purpose, hour, min)
      @location = location
      @purpose = purpose
      @hour = hour
      @min = min
    end

end

class Monthly_Appointment < Appointment
    attr_accessor :day

    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end
    
    def occurs_on?(day)
        @day = day
    end

    def to_s
        puts "Reunión mensual en #{location} sobre #{purpose} el dìa #{day} a las #{hour}:#{min}"
    end
end

class Daily_Appointment < Appointment

    def initialize (location, purpose, hour, min)
        super(location, purpose, hour, min)
    end 

    def occurs_on?(hour, min)
        @hour = hour
        @min = min
    end
    def to_s
        puts "Reunión diaria en #{location} sobre #{purpose} a las #{hour}:#{min}"
    end
end

class One_Time_Appointment < Appointment
    attr_accessor :day, :month, :year

    def initialize (location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end 
    def occurs_on?(day, month, year)
        @day = day
        @month = month
        @year = year
    end
    def to_s
        puts "Reunión unica en #{location} sobre #{purpose} el  #{day}/#{month}/#{year} a las #{hour}:#{min}"
    end
  
end

puts One_Time_Appointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
puts Daily_Appointment.new('Desafío Latam', 'Educación', 8, 15)
puts Monthly_Appointment.new('NASA', 'Aliens', 8, 15, 23)