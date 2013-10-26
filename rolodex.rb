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
    puts "\n  ****Attribute Menu****"
    puts "[1] Display all First Names"
    puts "[2] Display all Last Names"
    puts "[3] Display all E-mail addresses"
    puts "[4] Display all notes"
    puts "[5] Return to main menu"
    print "Enter a number: "

    input = gets.to_i
    case input
    when 1 
      @contacts.each {|contact| puts contact.first_name}
    when 2
      @contacts.each {|contact| puts contact.last_name}
    when 3
      @contacts.each {|contact| puts contact.email}
    when 4
      @contacts.each {|contact| puts contact.note}
    when 5
    else
      puts "Please enter [1] to [5]:"

    end
    

  end

  def self.display_all_contacts
    puts
    contacts.each do |contact|
    puts "[#{contact.id-999}] #{contact.first_name} #{contact.last_name}"
    end
  end

  def self.modify_existing_contact
    display_all_contacts
    print "Please select contact to modify: "

    id = (gets.chomp.to_i)+999
    index = @contacts.index {|contact| contact.id == id}
    puts "\nYou've selected: "
    puts "First name: #{Rolodex.contacts[index].first_name}"
    puts "Last name: #{Rolodex.contacts[index].last_name}"
    puts "E-mail address: #{Rolodex.contacts[index].email}"
    puts "Notes: #{Rolodex.contacts[index].note}"
    
    puts "\n"
    puts "[1] Modify First Name"
    puts "[2] Modify Last Name"
    puts "[3] Modify E-mail address"
    puts "[4] Modify note"
    puts "[5] Return to main menu"
    print "Enter a number: "
    input = gets.to_i

    case input
    when 1
    print "Enter new First Name: " 
      new_first = gets.chomp
      Rolodex.contacts[index].first_name = new_first

    when 2
    print "Enter new Last Name: " 
      new_last = gets.chomp
      Rolodex.contacts[index].last_name = new_last
    
    when 3
    print "Enter new E-mail address: " 
      new_email = gets.chomp
      Rolodex.contacts[index].email = new_email
    
    when 4
    print "Enter new note: " 
      new_note = gets.chomp
      Rolodex.contacts[index].note = new_note
    when 5
    else
      puts "Please enter [1] to [5]:"

    end
  end

   # @contacts.each {|contact| puts contact.first_name}
   # puts @contacts.fetch(index){|contact| contact.first_name}
    
end
