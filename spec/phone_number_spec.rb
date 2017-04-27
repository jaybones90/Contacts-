require "Contacts"
require "rspec"
require "pry"


describe(Number) do
  describe('#number') do
    it('returns a phone number of the contact') do
      test_number = Number.new({:number => "5031111111", :type => "personal"})
      expect(test_number.number()).to(eq("5031111111"))
    end
  end

  describe('#type') do
    it('returns the type of number of the contact') do
      test_number = Number.new({:number => "5031111111", :type => "personal"})
      expect(test_number.type()).to(eq("personal"))
    end
  end

  describe('#id') do
  it("returns the id of the number") do
    test_number = Number.new({:number => "5031111111", :type => "personal"})
    expect(test_number.id()).to(eq(1))
  end
end

  describe('.all') do
    it('is empty to start') do
      expect(Number.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the number to all numbers array') do
      test_number = Number.new({:number => "5031111111", :type => "personal"})
      test_number.save()
      expect(Number.all()).to(eq([test_number]))
    end
  end
end
