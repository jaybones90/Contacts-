class Contact
  @@all_contacts = []

  attr_accessor(:first_name, :last_name, :company, :job_title)

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @company = attributes.fetch(:company)
    @job_title = attributes.fetch(:job_title)
    @phone_numbers = []
    @email_addresses = []
    @mailing_addresses = []
  end

  define_singleton_method(:all) do
    @@all_contacts
  end

  define_method(:save) do
    @@all_contacts.push(self)
  end
end




class Email

  attr_accessor(:email, :type, :id)
  @@all_emails = []

  define_method(:initialize) do |attributes|
    @email = attributes.fetch(:email)
    @type = attributes.fetch(:type)
    @id = @@all_emails.length().+(1)

  end

  define_singleton_method(:all) do
    @@all_emails
  end

  define_method(:save) do
    @@all_emails.push(self)
  end
end

class Number

  attr_accessor(:number, :type, :id)
  @@all_numbers = []

  define_method(:initialize) do |attributes|
    @number = attributes.fetch(:number)
    @type = attributes.fetch(:type)
    @id = @@all_numbers.length().+(1)

  end

  define_singleton_method(:all) do
    @@all_numbers
  end

  define_method(:save) do
    @@all_numbers.push(self)
  end
end

class Address

  attr_accessor(:street, :city, :state, :zip, :type, :id)
  @@all_addresses = []

  define_method(:initialize) do |attributes|
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @type = attributes.fetch(:type)
    @id = @@all_addresses.length().+(1)
  end

    define_singleton_method(:all) do
      @@all_addresses
    end

    define_method(:save) do
      @@all_addresses.push(self)
    end
  end
