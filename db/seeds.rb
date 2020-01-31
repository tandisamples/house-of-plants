Category.destroy_all
Item.destroy_all

small = Category.create(name: "small")
medium = Category.create(name: "medium")
large = Category.create(name: "large")

small.item.create(title: "succulent", name: "echeveria agavoides", price: 3)
small.item.create(title: "cactus", name: "bunny ears", price: 5)
small.item.create(title: "bonsai", name:"juniper", price: 8)

medium.item.create(title: "pothos", name: "marble queen", price: 10)
medium.item.create(title: "snake plant", name: "zeylanica", price: 16)
medium.item.create(title: "monstera", name: "swiss cheese", price: 22)

large.item.create(title: "majesty palm", name: "ravenea rivularis", price: 35)
large.item.create(title: "fiddleleaf fig tree", name: "ficus lyrata",price: 50)
large.item.create(title: "bird of paradise", name: "strelitzia reginae", price: 65)
