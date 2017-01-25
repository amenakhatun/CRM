#not finished yet.. need help!

class CRM

  def initialize

  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number:'

  end

  def call_option
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact

  end

  def add_new_contact
    print 'Enter First Name'
    first_name = gets.chomp
    print 'Enter Last Name'
    last_name = gets.chomp
    print 'Enter Email Address'
    email = gets.chomp
    print 'Enter a note'
    note = gets.chop
  c =  Contact.create(first_name, last_name, email, note)
  end

# need to find out how to properly modify a contact
  # def modify_existing_contact
  #   display_all_contacts
  #
  #   print "enter id to modify:"
  #   id = gets.chomp.to_i
  #   modify_contact = Contact.find(id)
  #   unless modify_contact
  #   puts "ID not found"
  #   return
  #
  #   attribute_list
  #
  #    while user_selected =gets.to_i
  #
  # end

  def delete_contact
    print 'Enter the ID of the contact to delete: '
    id = gets.chomp.to_i
    c = Contact.find(id)
    display_a_contact(c)
    print "Are you sure you want to delete?(y/n) "
    answer = gets.chomp.downcase.to_s
    if answer == "y"
      c.delete
    else
      main_menu
    end
  end

  def display_all_contacts
    puts "ID: #{c.id} Name: #{c.full_name} Email: #{c.email} Note: #{c.note}"
  end

  def search_by_attribute
    print "Enter the attribute you want to search: First name, Last Name, Email and Note "
    attribute = gets.chomp

    print "Enter the value you are looking: "
    value = gets.chomp
    contacts = Contact.find_by(attribute, value)
    puts result

  end


end
