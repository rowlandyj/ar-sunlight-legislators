require 'csv'
require_relative '../app/models/politician'

class SunlightLegislatorsImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/legislators.csv")
    csv = CSV.new(File.open(filename), :headers => true, :header_converters => :symbol)
    csv.each do |row| 
      politician = Politician.create!(title: row[:title],
        firstname: row[:firstname],
        lastname: row[:lastname],                                         
        party: row[:party],
        state: row[:state],
        in_office: row[:in_office],
        gender: row[:gender],
        phone: row[:phone],
        fax: row[:fax],
        website: row[:website],
        webform: row[:webform],
        congress_office: row[:congress_office],
        twitter_id: row[:twitter_id],
        birthdate: row[:birthdate])
    end
  end
end

        # raise NotImplementedError, "TODO: figure out what to do with this row and do it!"
        # TODO: end
# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end
