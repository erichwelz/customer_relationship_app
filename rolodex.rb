class Rolodex

  @contacts = []
  @id = 1000

  def self.add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end

  def self.contacts
    @contacts
  end

  def self.delete_contact
    display_all_contacts
    print "Please select contact number to delete: "
    id = (gets.chomp.to_i)+999
    index = @contacts.index {|contact| contact.id == id}
    @contacts.delete_at(index)
    puts "Contact #{id-999}. deleted"
  end

  def self.display_info_by_attribute
    puts "*********Attribute Menu*********"
    puts "[1] Display all First Names"
    puts "[2] Display all Last Names"
    puts "[3] Display all E-mail addresses"
    puts "[4] Display all notes"
    puts "[5] Return to main menu"

    

    
  end

  def self.display_all_contacts
    contacts.each do |contact|
    puts "#{contact.id-999}. #{contact.first_name} #{contact.last_name}"
    end
  end
    
end
