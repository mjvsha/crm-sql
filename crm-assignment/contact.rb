class Contact

@@contacts = []
@@id = 1
  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note = "none")
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id

    @@id +=1


  end


def first_name_update=(first_name)
  @first_name = first_name
end

def last_name_update=(last_name)
  @last_name = last_name
end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

def email_update=(email)
  @email = email

end


  def email
    @email

  end

def note

@note
end


  def note_update=(note)
    @note = note
  end


  def contact_id
    @id
  end




  #class methods are performed by the class itself
  #and therefore operate on the whole set of objects of that type
  #therefore if we want to make changes that operate on whole sets of objects of that type, we should use class methods

  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, note)
    @@contacts << new_contact
    return new_contact



  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts

  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)

    @@contacts.each do |contact|
      if contact.contact_id == id
        return contact
      end
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, new_value)

    if attribute == "first name"
      self.first_name_update=(new_value)

    elsif attribute == "last name"
      self.last_name_update=(new_value)

    elsif attribute == "email"
      self.email_update=(new_value)

    elsif attribute == "note"
      self.note_update=(new_value)
    end


  end


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attrib, value)

  @@contacts.each do |contact|

    #well DAMN.....look at how much i repeat myself......


      if value == contact.first_name
          puts "Contact ID: #{contact.contact_id}"
          puts "Contact first name: #{contact.first_name}"
          puts "Contact last name: #{contact.last_name}"
          puts "Contact email: #{contact.email}"

      end


      if value == contact.last_name
        puts "Contact ID: #{contact.contact_id}"
        puts "Contact first name: #{contact.first_name}"
        puts "Contact last name: #{contact.last_name}"
        puts "Contact email: #{contact.email}"

      end




      if value == contact.email
        puts "Contact ID: #{contact.contact_id}"
        puts "Contact first name: #{contact.first_name}"
        puts "Contact last name: #{contact.last_name}"
        puts "Contact email: #{contact.email}"

      end



      if value == contact.note
        puts "Contact ID: #{contact.contact_id}"
        puts "Contact first name: #{contact.first_name}"
        puts "Contact last name: #{contact.last_name}"
        puts "Contact email: #{contact.email}"

      end


    end

end




  # This method should delete all of the contacts
  def self.delete_all
    delete_all = []

    @@contacts.each do |contact|
      delete_all << contact
    end

    delete_all.each do |tbd|
      @@contacts.delete(tbd)


    end

  p @@contacts


  end

  def full_name


  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def self.delete(id)
    to_delete = Contact.find(id) #find the id of the contact to be deleted, return contact

    @@contacts.delete(to_delete)

    @@contacts
  end

end
