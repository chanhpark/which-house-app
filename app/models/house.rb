class House < ActiveRecord::Base
  def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    House.create!
    end
  end
end
