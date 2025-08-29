local garden = {}

garden.fruits = {
    "apple","apricot","avocado","banana","blackberry","blueberry","boysenberry","cantaloupe","cherry","coconut",
    "cranberry","currant","date","dragonfruit","durian","elderberry","fig","gooseberry","grape","grapefruit",
    "guava","honeydew","jackfruit","kiwi","kumquat","lemon","lime","lychee","mandarin","mango","mulberry",
    "nectarine","olive","orange","papaya","passionfruit","peach","pear","persimmon","pineapple","plum",
    "pomegranate","quince","raspberry","starfruit","strawberry","tangerine","watermelon"
}

garden.vegetables = {
    "artichoke","arugula","asparagus","basil","bean","beet","bellpepper","bokchoy","broccoli","brusselsprout",
    "butternutsquash","cabbage","carrot","cauliflower","celery","chard","chili","chive","collard","corn",
    "cucumber","daikon","dill","eggplant","endive","fennel","garlic","ginger","horseradish","kale","kohlrabi",
    "leek","lentil","lettuce","mushroom","mustardgreens","okra","onion","parsley","parsnip","pea","potato",
    "pumpkin","radish","rhubarb","rosemary","rutabaga","sage","shallot","soybean","spinach","squash",
    "sweetpotato","taro","thyme","tomato","turnip","watercress","yam","zucchini"
}

function garden:getall()
    local all = {}
    for _, v in ipairs(self.fruits) do table.insert(all, v) end
    for _, v in ipairs(self.vegetables) do table.insert(all, v) end
    return all
end

return garden
