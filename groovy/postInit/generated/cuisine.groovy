
// Dough (class net.minecraftforge.oredict.ShapelessOreRecipe)
item('cuisine:food', 2).tweakRecipe(
    ore('foodFlour'), (item('minecraft:water_bucket') | item('pyrotech:bucket_refractory').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_stone').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_wood').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('pyrotech:bucket_clay').withNbt(["fluids": ["FluidName": "water", "Amount": 1000]]) | item('harvestcraft:freshwateritem'))
)
