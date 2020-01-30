Category.destroy_all
Item.destroy_all

small = Category.create(name: "small")
medium = Category.create(name: "medium")
large = Category.create(name: "large")

small.item.create(title: "succulent", price: 3)
small.item.create(title: "cactus", price: 5)
small.item.create(title: "bonsai", price: 8)

medium.item.create(title: "pothos", price: 10)
medium.item.create(title: "snake plant", price: 16)
medium.item.create(title: "monstera", price: 22)

large.item.create(title: "majesty palm", price: 35)
large.item.create(title: "fiddleleaf fig tree", price: 50)
large.item.create(title: "bird of paradise", price: 65)