#mall as hash with stores/attractions name as symbol as keys
#Stores as hash with 'name', 'type of store', 'number of employees', 'top 3 items' as keys
#'top 3 items' as array, 'number of employees' as hash with keys of 'managers' and 'employees'

mall = {
  Polo_RL: {
    name: "Polo Ralph Lauren",
    type: "Clothing",
    jobs: {
      managers: 5,
      employees: 22
    },
    top_selling: [
      "Red polo shirts", 
      "douche bag shorts", 
      "fabric belts"
    ]
  },
  Starbucks: {
    name: "Starbucks",
    type: "coffee shop",
    jobs: {
      managers: 3,
      employees: 15
    },
    top_selling: [
      "Vanilla Latte",
      "Java Chip Frappuccino",
      "Coffee"
    ]
  },
  Tommy_H: {
    name: "Tommy Hilfiger",
    type: "Clothing",
    jobs: {
      managers: 8,
      employees: 15
    },
    top_selling: [
      "Blue polo shirt",
      "red white and blue belts",
      "douche bag shorts"
    ]
  },
  Carousel: {
    name: "Professor Wonder's Magical Dragons",
    type: "ride/attraction",
    jobs: {
      managers: 1,
      employees: 2
    },
    top_selling: [
      "Green Dragon",
      "Purple Horse",
      "Orange Half Moon w/ saddle"
    ]
  },
  Wetseal: {
    name: "Wet Seal",
    type: "Clothing",
    jobs: {
      managers: 3,
      employees: 13
    },
    top_selling: [
      "Trashy Tops", 
      "Too short shorts", 
      "American Flag Scarfs"
    ]
  },
  Frumpyflats: {
    name: "Frumpy Flats",
    type: "Shoes",
    jobs: {
      managers: 2,
      employees: 6
    },
    top_selling: [
      "Crocs", 
      "Werther's Originals", 
      "Spanks"
    ] 
  },
    OB1: {
    name: "Obiewon Knobi's Star Wars Experience",
    type: "Gift Shop",
    jobs: {
      managers: 17,
      employees: 3
    },
    top_selling: [
      "light Sabers", 
      "Gold Bikinis", 
      "Holograms"
    ]
  },
    MERICA: {
    name: "America: F*@k Yeah",
    type: "Propaganda Machine",
    jobs: {
      President: 1,
      Senators: 100
    },
    top_selling: [
      "Bullshit", 
      "Black Flags", 
      "Corporate Agenda"
    ]
  },
}
p mall[:Polo_RL]
#Prints String value indexed from array in hash
p mall[:MERICA][:top_selling][2]
#prints fixnum value nested inside of 3 hashes
p mall[:Frumpyflats][:jobs][:managers]
#prints string value nested inside of 2 hashes
p mall[:Polo_RL][:name]
#print array nested inside 2 hashes
p mall[:Starbucks][:top_selling]
#prints keys for a hash nested inside 2 hashes 
p mall[:MERICA][:jobs].keys
#adds and new key to :jobs nested in 2 hashes
mall[:Starbucks][:jobs][:baristas] = 13
#prints nested hash including new key and value
p mall[:Starbucks][:jobs]
#prints updated array
mall[:OB1][:top_selling][2] = "Model X-wing fighter"
p mall[:OB1][:top_selling]
#do math to int and update value (PR is a state!)
mall[:MERICA][:jobs][:Senators] += 1
p mall[:MERICA][:jobs][:Senators]