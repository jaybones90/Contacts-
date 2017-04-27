require "Contacts"
require "rspec"
require "pry"


describe(Email) do
  describe('#email') do
    it('returns an email address of the contact') do
      test_email = Email.new({:email => "philknight@gmail.com", :type => "personal"})
      expect(test_email.email()).to(eq("philknight@gmail.com"))
    end
  end

  describe('#type') do
    it('returns the type of email of the contact') do
      test_email = Email.new({:email => "philknight@gmail.com", :type => "personal"})
      expect(test_email.type()).to(eq("personal"))
    end
  end

  describe('#id') do
  it("returns the id of the email") do
    test_email = Email.new({:email => "philknight@gmail.com", :type => "personal"})
    expect(test_email.id()).to(eq(1))
  end
end

  describe('.all') do
    it('is empty to start') do
      expect(Email.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the email to all emails array') do
      test_email = Email.new({:email => "philknight@gmail.com", :type => "personal"})
      test_email.save()
      expect(Email.all()).to(eq([test_email]))
    end
  end
end
