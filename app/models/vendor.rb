class Vendor < ActiveRecord::Base

attr_accessible  :name, :rut, :accountnum, :bankname, :community_id, :contactphone, :contactmail, :website, :address, :bankaccount_id
belongs_to :community
has_many :journals

validates :name, presence: true 


def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |vendor|
	      csv << vendor.attributes.values_at(*column_names)
    end
  end
end

	def self.import(file)
	  spreadsheet = open_spreadsheet(file)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    vendor = find_by_id(row["id"]) || new
	    vendor.attributes = row.to_hash.slice(*accessible_attributes)
	    vendor.save!
	  end
	end

	def self.open_spreadsheet(file)
		case File.extname(file.original_filename)
		when ".csv" then CSV.new(file.path, nil, :ignore)
		when ".xls" then Excel.new(file.path, nil, :ignore)
		when ".xlsx" then Excelx.new(file.path, nil, :ignore)
		else raise "Archivo no permitido: #{file.original_filename}"
		end
	end


end
