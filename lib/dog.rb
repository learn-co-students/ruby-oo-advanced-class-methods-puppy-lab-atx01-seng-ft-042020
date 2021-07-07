class Dog

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        self.all.each do |dog|
            puts dog.name
        end
    end
end