Category.destroy_all
Item.destroy_all

small = Category.create(name: "small")
medium = Category.create(name: "medium")
large = Category.create(name: "large")

small.items.create(title: "succulent", name: "echeveria agavoides", price: 3)
small.items.create(title: "cactus", name: "bunny ears", price: 5)
small.items.create(title: "bonsai", name:"juniper", price: 8)

medium.items.create(title: "pothos", name: "marble queen", price: 10)
medium.items.create(title: "snake plant", name: "zeylanica", price: 16)
medium.items.create(title: "monstera", name: "swiss cheese", price: 22)

large.items.create(title: "majesty palm", name: "ravenea rivularis", price: 35)
large.items.create(title: "fiddleleaf fig tree", name: "ficus lyrata",price: 50)
large.items.create(title: "bird of paradise", name: "strelitzia reginae", price: 65)
