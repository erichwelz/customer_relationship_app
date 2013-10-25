require_relative "contact"
require_relative "rolodex"

class CRM
    def initialize(name)
      @name = name
  end

  def print_main_menu
    puts 
    puts "Welcome to #{@name} CRM"
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Display an attribute" 
    puts "[6] Exit"
    print "Enter a number: "
  end

  def main_menu
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
  end

  def call_option(user_selected)
    case user_selected
    when 1 
      add_new_contact
    when 2
      modify_existing_contact
    when 3
      delete_contact
    when 4
      display_all_contacts
    when 5
      display_an_attribute
    when 6
      exit_program
    else
      puts "Please enter [1] to [6]:"
    end
  end
     # Finish off and do the rest for 3 through 6
    # To be clear, the methods add_new_contact and modify_existing_contact
    # haven't been defined yet
    
  def add_new_contact
    print "Enter First Name: "
    first_name = gets.chomp
    print "Enter Last Name: "
    last_name = gets.chomp
    print "Enter Email Address: "
    email = gets.chomp
    print "Enter a Note: "
    note = gets.chomp
    contact = Contact.new(first_name, last_name, email, note)
    Rolodex.add_contact(contact)
    main_menu
  end

    def modify_existing_contact
   puts "IMPLEMENT modify"
     main_menu
    end

    def delete_contact
      puts "IMPLEMENT delete"
      main_menu 
    end

    def display_all_contacts
      Rolodex.display_all_contacts
      main_menu
    end

    def display_an_attribute
      puts "IMPLEMENT display"
      main_menu
    end

    def exit_program
      puts "Thank you for using #{@name} CRM"
      puts "Returning to Command Prompt"
      puts "\n\n"
    end  
end

alpha = CRM.new("alpha")
alpha.main_menu

## TESTING ## 

# puts contact.email

# # write test
# contact.note = "Test"
# puts contact.note

