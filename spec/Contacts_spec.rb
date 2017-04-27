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
    
  end
end
