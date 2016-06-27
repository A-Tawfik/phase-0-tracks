## BORING GROCERY LIST

# Boring grocery list helps you make a list of items that you normally buy at the 
# grocery store and tells you when you are ready to buy them based on how long it
# takes you to use it up on average

# Create a audit list db if it doesn't already exist
  # lists id(primary int), item(string), count_purchased, sum_days

# Create items log db if it doesn't already exist
  # any item purchased gets added to the run list for logging and math
    # id, item_id, date_purchased_history

require 'date'
require 'sqlite3'

$grocery_db = SQLite3::Database.new("grocery_list.db")
$grocery_db.results_as_hash = true

create_audit_list = <<-SQL
  CREATE TABLE IF NOT EXISTS audit_list(
  id INTEGER PRIMARY KEY,
  item VARCHAR(255) UNIQUE,
  count_purchased INT,
  sum_days INT
  )
  SQL

create_purchase_log = <<-SQL2
  CREATE TABLE IF NOT EXISTS purchase_log(
  id INTEGER PRIMARY KEY,
  item VARCHAR(255),
  purchase_date INT
  )
SQL2

$grocery_db.execute(create_audit_list)
$grocery_db.execute(create_purchase_log)

# Methods to turn int to date and date to int (seconds) 

def date_to_int(date)
  date.strftime("%s").to_i
end

def int_to_date(int)
  Time.at(int).to_date
end

# is the item due for purchase?
# NOT DONE $today = Date.today
# NOT DONE 
# NOT DONE def due?($grocery_db, item)
# NOT DONE   all_list = $grocery_db.execute("SELECT * FROM audit_list WHERE item= ?", [item])
# NOT DONE   avg =  all_list['sum_days'] / all_list['count_purchased']
# NOT DONE 
# NOT DONE end
# NOT DONE 
# NOT DONE # Print todays date and all groceries that are past due or coming up (1 day) to buy
# NOT DONE # include number of days they've been past due
# NOT DONE 
# NOT DONE def due_days(date_as_int)
# NOT DONE   date = int_to_date(date_as_int)
# NOT DONE   (date - $today + 1).to_i
# NOT DONE 
# NOT DONE end
# NOT DONE 
# NOT DONE def print_groceries()
# NOT DONE   item_list = $grocery_db.execute("SELECT * FROM audit_list")
# NOT DONE   item_list.each do |item|
# NOT DONE     due = due_days(item['last_purchase'])
# NOT DONE     puts "buy #{item['item']} in #{due} days"
# NOT DONE   end
# NOT DONE end  

# Menu Method [1- I bought stuff 2- add items 3- remove items]


# Bought stuff Method 
def bought_items(item_arr)
  item_arr.each do |item|
    if check_if_new(item)
      add_new_to_list(item)
      add_to_log(item)
    else
      update_counts(item)
      add_to_log(item)
    end
  end
end

def check_if_new(item)
  bool = $grocery_db.execute("SELECT EXISTS(SELECT * FROM purchase_log WHERE item= ? )", [item])
  if bool == 0
    false
  else
    true
  end
end

def add_new_to_list(item)
    puts "Looks like you've never purchased #{item}"
    puts "How often do you think you buy #{item}? (in number of days)"
    avg_days = gets.chomp.to_i
    $grocery_db.execute("INSERT INTO audit_list (item, count_purchased, sum_days) VALUES (?, ?, ?)", [item, 1, avg_days])
end

def add_to_log(item)
    $grocery_db.execute("INSERT INTO purchase_log (item, purchase_date) VALUES (?, ?)", [item, date_to_int(Date.today)])
end

def update_counts(item)
  last_purchase = $grocery_db.execute("SELECT purchase_date FROM purchase_log WHERE item = ? ORDER BY id DESC LIMIT 1", [item])
  days_since_previous_purchase = (int_to_date(Date.today) - int_to_date(last_purchase)).to_i
  $grocery_db.execute("UPDATE audit_list SET count_purchased = count_purchased + 1")
  $grocery_db.execute("UPDATE audit_list SET sum_days = sum_days + ? ", [days_since_previous_purchase])
end


# updates the date bought of each item and 
shopping_list = ["milk", "eggs", "butter", "witches brew", "beer", "candy", "chex-mix"]


bought_items(shopping_list)


