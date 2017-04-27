require "Contacts"
require "rspec"
require "pry"


describe(Contact) do
  describe('#first_name') do
    it('returns the first name of the contact') do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      expect(test_contact.first_name()).to(eq("Phil"))
    end
  end

  describe("#last_name") do
      it('returns the last name of the contact') do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      expect(test_contact.last_name()).to(eq("Knight"))
      end
    end

  describe('#company') do
    it('returns the company for the contact') do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      expect(test_contact.company()).to(eq("Nike"))
    end
  end

  describe('#job_title') do
    it('returns the job title for the contact') do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      expect(test_contact.job_title()).to(eq("CEO"))
    end
  end

  describe('#id') do
  it("returns the id of the contact") do
    test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
    expect(test_contact.id()).to(eq(1))
  end
end

  describe(".all") do
    it("starts out as empty") do
    expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the contact information to the all contacts array") do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe("#add_email") do
    it("adds an email to the contact's emails array") do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      test_email = Email.new({:email => "philknight@gmail.com", :type => "personal"})
      test_contact.add_email(test_email)
      expect(test_contact.email_addresses()).to(eq([test_email]))
    end
  end

  describe("#add_number") do
    it("adds a phone number to the contact's numbers array") do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      test_number = Number.new({:number => "5031111111", :type => "personal"})
      test_contact.add_number(test_number)
      expect(test_contact.phone_numbers()).to(eq([test_number]))
    end
  end

  describe("#add_address") do
    it("adds an to the contact's address array") do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      test_address = Address.new({:street=> "1000 Main Street", :city=> "Beaverton", :state=> "OR", :zip=> 97111, :type=> "home"})
      test_contact.add_address(test_address)
      expect(test_contact.mailing_addresses()).to(eq([test_address]))
    end
  end

  describe(".find") do
    it("returns a contact by its id number") do
      test_contact = Contact.new({:first_name=> "Phil", :last_name=> "Knight", :company=> "Nike", :job_title=> "CEO"})
      test_contact.save()
      test_contact2 = Contact.new({:first_name=> "Steve", :last_name=> "Jobs", :company=> "Apple", :job_title=> "CEO"})
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end

end
