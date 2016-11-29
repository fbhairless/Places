require('rspec')
require('places_ib')

describe(Places_ib) do
  # before () do
  #   Place_ib.clear()
  # end
end

  describe('#places') do
    it('lets you input a location') do
      test_place = Places_ib.new('Rome, Italy')
      expect(test_place.places()).to(eq('Rome, Italy'))
    end

    describe (".all") do
      it("is empty at first") do
      expect(Places_ib.all()).to(eq([]))
      end
    end
end
