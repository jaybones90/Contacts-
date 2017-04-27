require "Contacts"
require "rspec"
require "pry"


describe(Address) do
  describe('#street') do
    it('returns the street address of the contact') do
      test_address = Address.new({:street=> "1000 Main Street", :city=> "Beaverton", :state=> "OR", :zip=> 97111, :type=> "home"})
      expect(test_address.street()).to(eq("1000 Main Street"))
    end
  end

  describe('#city') do
    it('returns the city of the contact') do
      test_address = Address.new({:street=> "1000 Main Street", :city=> "Beaverton", :state=> "OR", :zip=> 97111, :type=> "home"})
      expect(test_address.city()).to(eq("Beaverton"))
    end
  end

  describe('#state') do
    it('returns the state of the contact') do
      test_address = Address.new({:street=> "1000 Main Street", :city=> "Beaverton", :state=> "OR", :zip=> 97111, :type=> "home"})
      expect(test_address.state()).to(eq("OR"))
    end
  end

  describe('#zip') do
    it('returns the zip code of the contact') do
      test_address = Address.new({:street=> "1000 Main Street", :city=> "Beaverton", :state=> "OR", :zip=> 97111, :type=> "home"})
      expect(test_address.zip()).to(eq(97111))
    end
  end

  describe('#type') do
    it('returns the type of address of the contact') do
      test_address = Address.new({:street=> "1000 Main Street", :city=> "Beaverton", :state=> "OR", :zip=> 97111, :type=> "home"})
      expect(test_address.type()).to(eq("home"))
    end
  end

  describe('#id') do
  it("returns the id of the adddress") do
      test_address = Address.new({:street=> "1000 Main Street", :city=> "Beaverton", :state=> "OR", :zip=> 97111, :type=> "home"})
    expect(test_address.id()).to(eq(1))
  end
end

  describe('.all') do
    it('is empty to start') do
      expect(Address.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the address to all address array') do
      test_address = Address.new({:street=> "1000 Main Street", :city=> "Beaverton", :state=> "OR", :zip=> 97111, :type=> "home"})
      test_address.save()
      expect(Address.all()).to(eq([test_address]))
    end
  end
end
