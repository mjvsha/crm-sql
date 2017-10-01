require_relative "contact"

class CRM

  def initialize(name)
    puts "This CRM has the name " + name

  end

  def main_menu
    while true
      print_main_menu
      user_selected =gets.chomp.strip.to_i
      call_option(user_selected)
    end

  end

  def print_main_menu
    puts "[1]Add a contact"
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '

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
    search_by_attribute
  when 6
    abort("Goodbye, loser!")

end

  end


  def add_new_contact

  print "Enter first name: "
  first_name = gets.chomp.strip

  print "Enter last name: "
  last_name = gets.chomp.strip

  print "Enter email address: "
  email = gets.chomp.strip

  print "Enter a note: "
  note = gets.chomp.strip

  Contact.create(first_name, last_name, email, note)

  end


  def modify_existing_contact

    puts "What is the id of the user you want to modify?"

      id = gets.chomp.strip.to_i

        contact_to_modify= Contact.find(id)


    puts "Which attribute do you want to change?"
    puts "first name"
    puts "last name"
    puts "email"
    puts "note"

      attribute = gets.chomp.strip

    puts "What will you update it to?"

      new_value = gets.chomp.strip

        contact_to_modify.update(attribute, new_value)

    end

  def delete_contact()
      puts "What is the id of the person you want to delete?"

      id = gets.chomp.strip.to_i

      Contact.delete(id)




  end

  def display_all_contacts
    Contact.all.each do |contact|
      puts "Contact ID: #{contact.contact_id}"
      puts "Contact First Name: #{contact.first_name}"
      puts "Contact Last Name: #{contact.last_name}"
      puts "Contact email: #{contact.email}"
      puts "Contact note: #{contact.note}"
    end
  end

  def search_by_attribute
    puts "Please enter your search criteria"
    puts "first name"
    puts "last name"
    puts "email"
    puts "note"

    attrib = gets.chomp.strip

    puts "Please enter the #{attrib} to search by"
    value = gets.chomp.strip


     Contact.find_by(attrib, value)




  end


end



puts mycrm = CRM.new("Bingo")
puts mycrm.add_new_contact
puts mycrm.add_new_contact
puts mycrm.add_new_contact
puts Contact.all


puts mycrm.main_menu
puts mycrm.display_all_contacts
