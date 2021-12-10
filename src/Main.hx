import haxe.Json;

typedef Item = {
    name: String,
    count: Int,
}

typedef Recipe = {
    // has 9 inputs and 1 output
    input: Array<Item>,
    output: Item,
}

class Mock {
    public static function how_it_looks_in_lua() {
        var array = [1,2,3,4,5];
        var item = {name: "name", count: 1};
        return array;
    }

    public static function get_recipes() {
        trace('heres where all the recipes will come from');
        var recipes: Array<Recipe> = [
            {
                input: [
                    null, 
                    {name: "minecraft:piston", count: 1}, 
                    null, 
                    {name: "minecraft:flint", count: 1}, 
                    {name: "thermalexpansion:machine_frame", count: 1}, 
                    {name: "minecraft:flint", count: 1},
                    {name: "thermalexpansion:copper_gear", count: 1},
                    {name: "thermalexpansion:redstone_reception_coil", count: 1},
                    {name: "thermalexpansion:copper_gear", count: 1}
                ], 
                output: {name: "thermalexpansion:pulverizer", count: 1}
            },
        ];
        return recipes;
    }
}


// goal is to make a crafty turtle craft a dang tortilla
// like cooking for blockheads but for everything



function main() {
    var item = {name: "minecraft:iron_ingot", count: 5};
    var recipes = Mock.get_recipes();

    trace('Item is ${item.count}x ${item.name}');
    trace('Recipe makes ${recipes[0].output.name}');

    var array = Mock.how_it_looks_in_lua();
    trace('This array has $array and this item has $item');

    for (recipe in recipes) {
        var rec = Json.stringify(recipe);
        trace(rec);
        var val: Array<Recipe> = Json.parse(rec);
        trace("after converting back");
        trace(val);

    }

}