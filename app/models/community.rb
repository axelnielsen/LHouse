class Community < ActiveRecord::Base

	attr_accessible   :nombre, :address, :phone, :email, :website, :community_id, :userpass, :adminpass, :concierge

	has_many :users
	has_many :common_rooms
	has_many :bankaccounts
	has_many :vendors
	has_many :payableaccounts
	has_many :receivableaccounts
	has_many :journals
	
	


	def self.import(file)
	  spreadsheet = open_spreadsheet(file)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    community = find_by_id(row["id"]) || new
	    community.attributes = row.to_hash.slice(*accessible_attributes)
	    community.save!
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

	def name
		nombre
	end
	def randompassuser	   
	   		p "u"+SecureRandom.urlsafe_base64(6)
	end
	def randompassadmin	   
	   		p "a"+SecureRandom.urlsafe_base64(6)
	end
	def randompassconcierge	   
	   		p "c"+SecureRandom.urlsafe_base64(6)
	end

	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |community|
	      csv << community.attributes.values_at(*column_names)
    end
  end
end
end
