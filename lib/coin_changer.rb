class CoinChanger
    def dispense(change_total)
        coins_dispensed = []

        while change_total > 24
            change_total -= 25
            coins_dispensed << "quarter"
        end
        
        while change_total > 9
            change_total -= 10
            coins_dispensed << "dime"
        end

        while change_total > 4
            change_total -= 5
            coins_dispensed << "nickel"
        end

        if change_total <= 4
            change_total.times do
                coins_dispensed << "penny"
            end 
        end
        coins_dispensed
    end
end