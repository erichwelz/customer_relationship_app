class Contact
  attr_accessor(:id, :first_name, :last_name, :email, :note)

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    # puts Rolodex.contacts
  end
end


# Testing

# # read test
# contact = Contact.new("Adrian", "Carton de Wiart", "adianwiart@gmail.com", "Even cooler.")
# puts contact.email

# # write test
# contact.note = "Test"
# puts contact.note

