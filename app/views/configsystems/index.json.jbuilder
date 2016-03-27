json.array!(@configsystems) do |configsystem|
  json.extract! configsystem, :id, :interesttype_id, :interesttypeperc, :interestreceivableaccount_id, :penaltyamount, :penaltyreceivableaccount_id, :periodyear, :periodmonth, :periodinit, :periodfin, :extension, :correctionday
  json.url configsystem_url(configsystem, format: :json)
end
