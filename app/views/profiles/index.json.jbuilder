json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :fatname, :motname, :gender, :dob, :email, :phone, :image
  json.url profile_url(profile, format: :json)
end
