class House < ActiveRecord::Base
  searchkick

  def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    House.create! row.to_hash
    end
  end
  
end
