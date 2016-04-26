class Bankaccount < ActiveRecord::Base

attr_accessible :name, :accountholder, :accountnum, :bankname, :initbalance, :community_id

belongs_to :community

validates :name, presence: true 
validates :accountholder, presence: true 
validates :accountnum, presence: true 
validates :bankname, presence: true 
validates :initbalance, presence: true 


def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |bankaccount|
	      csv << bankaccount.attributes.values_at(*column_names)
    end
  end
end

	def self.import(file)
	  spreadsheet = open_spreadsheet(file)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    bankaccount = find_by_id(row["id"]) || new
	    bankaccount.attributes = row.to_hash.slice(*accessible_attributes)
	    bankaccount.save!
	  end
	end

	def self.open_spreadsheet(file)
		case File.extname(file.original_filename)
		when ".csv" then CSV.new(file.path, nil, :ignore)
		when ".xls" then Excel.new(file.path, nil, :ignore)
		when ".xlsx" then Excelx.new(file.path, nil, :ignore)
		else raise "Unknown file type: #{file.original_filename}"
		end
	end

end
