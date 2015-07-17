def compose_mail(to_add, body, from_add, sign = "Thank You")
  return "receipient ia a invalid type" unless to_add.match(/[a-z]+@[a-z]+\.[a-z]+/)
  return "sender is a invalid type" unless from_add.match(/[a-z]+@[a-z]+\.[a-z]+/)
  return "sign is a invalid type" unless sign.is_a? String
  return "To : #{to_add} 
  From : #{from_add} 
  #{body}
  #{sign}"
end

