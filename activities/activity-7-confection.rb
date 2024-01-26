class Confection
    def bake
        puts "Baking at 350 degrees for 25 minutes"
    end
end

class BananaCake < Confection
end

class Cupcake < Confection
    def applyFrosting
        puts " Applying Frosting"
    end
end

bananaCake = BananaCake.new
bananaCake.bake

cupcake = Cupcake.new
cupcake.bake
cupcake.applyFrosting
