class Rolodex

  @contacts = []
  @id = 1000

  def self.add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
    puts 
  end

  def self.contacts
    @contacts
  end

  def self.display_all_contacts
    contacts.each do |contact|
    puts "[#{contact.id-999}] ,#{contact.first_name} #{contact.last_name}"
    end
  end
    
end
