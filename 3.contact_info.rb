def create_contact(name:, contact_number:, email:, dob: nil, organisation: nil, **other_details) 
  return "name is a invalid type" unless name.is_a? String
  return "number is a invalid type" unless contact_number.is_a? Integer
  return "DOB is a invalid type" unless (dob.is_a?(String) || dob.is_a?(NilClass))
  return "orgainsation is a invalid type" unless (organisation.is_a?(String) || organisation.is_a?(NilClass))
  return "email is a invalid type" unless email.match(/[a-z]+@[a-z]+\.[a-z]+/)
  contact = {name: name, contact_number: contact_number, email: email, dob: dob, organisation: organisation}
  contact.merge!(other_details)
end
