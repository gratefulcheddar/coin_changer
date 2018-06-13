require "coin_changer"

RSpec.describe CoinChanger, "#dispense" do

    coin_changer = CoinChanger.new

    it "if given one cent, return a penny" do
        expect(coin_changer.dispense(1)).to eq ["penny"]
    end

    it "if given two cents, return two penny" do
        expect(coin_changer.dispense(2)).to eq ["penny", "penny"]
    end

    it "if given five cents, return a nickel" do
        expect(coin_changer.dispense(5)).to eq ["nickel"]
    end

    it "if given six cents, return a nickel and penny" do
        expect(coin_changer.dispense(6)).to eq ["nickel", "penny"]
    end

    it "if given ten cents, return a dime" do
        expect(coin_changer.dispense(10)).to eq ["dime"]
    end

    it "if given eleven cents, return a dime and penny" do
        expect(coin_changer.dispense(11)).to eq ["dime", "penny"]
    end

    it "if given twelve cents, return a dime and two pennies" do
        expect(coin_changer.dispense(12)).to eq ["dime", "penny", "penny"]
    end

    it "if given seventeen cents, return a dime, a nickel, and two pennies" do
        expect(coin_changer.dispense(17)).to eq ["dime", "nickel", "penny", 
        "penny"]
    end

    it "if given 24 cents, return two dimes, four pennies" do
        expect(coin_changer.dispense(24)).to eq ["dime", "dime", "penny", 
        "penny", "penny", "penny"]
    end

    it "if given 25 cents, returns a quarter" do
        expect(coin_changer.dispense(25)).to eq ["quarter"]
    end

    it "if given 99 cents, returns three quarters, two dimes, four pennies" do
        expect(coin_changer.dispense(99)).to eq ["quarter", "quarter", "quarter",
    "dime", "dime", "penny", "penny", "penny", "penny"]
    end
end
