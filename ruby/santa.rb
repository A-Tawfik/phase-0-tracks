class Santa

  def initialize(gender, ethnicity, painted_face)
    puts "Initializing Santa instance..."
    @painted_face = painted_face == "painted"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end  

  def age(age)
    @age = age
  end

  def reindeer_rank(reindeer_ranking)
    @reindeer_ranking = reindeer_ranking
  end

  def speak
    puts "Ho, ho, ho! Haaaaappy holidays! I'm #{@name}!"
  end
 
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"

  end

  def about
    puts "This santa is #{@gender} and #{@ethnicity}"
  end

  


end

#Creates randomly organized list of magic reindeer
def random_reindeer_list
  all_reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  new_reindeer = []
  while new_reindeer.length < all_reindeer.length
    random_number = rand(all_reindeer.length)
    if !new_reindeer.include?(all_reindeer[random_number])
      new_reindeer << all_reindeer[random_number]
    end
  end
  return new_reindeer
end

#Random Gender Selector
def random_gender
  facebook_genders = ["Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man", "Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans*", "Trans Female", "Trans* Female", "Trans Male", "Trans* Male", "Trans Man", "Trans* Man", "Trans* Person", "Trans Person", "Trans* Woman", "Trans Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-Spirit"]
  gender = facebook_genders[rand(facebook_genders.length)]
end

# Random Ethnicity selector
def random_ethnicity
  all_ethnicity_arr = ["Afghan","Albanian","Arab","Argentine","American musicians of Armenian descent","Armenian","Australian","Austrian","Azerbaijani","Bahamian","Bangladeshi","Barbadian","Belgian","Brazilian","Bulgarian","Cajuns","Cambodian","Chinese","Colombian","Coptic","Croatian","Cuban","Czech","Danish","Dominican","Dutch","Egyptian of English descent","Estonian","Ethiopian","Finnish","French","German","German Texans","Greek","Guyanese","Haitian","Hispanic/Latino","Hmong","Honduran","Hungarian","Indian","indigenous people of the Americas","Indonesian","American Inuit","Iranian","Iraqi","Irish","Israeli","Italian","Jamaican","Japanese","Kazakh","Korean","Laotian","Lebanese","Louisiana Creoles","Macedonian","Mexican","User:BlindForay/sandbox","Native Hawaiians","Nicaraguan","Nigerian","Norwegian","Pakistani","Palestinian","Panamanian","Polish","Portuguese","Stateside Puerto Ricans","Romanian","Russian","Rusyn","Salvadoran","Scotch-Irish","Scottish","Serbian","Sicilian","Slovak","Slovene","Somali","Spanish","Sri Lankan","Swedish","Swiss","Taiwanese","Turkish","Ukrainian","Uruguayan","Venezuelan","Vietnamese","Welsh"]
  ethnicity = all_ethnicity_arr[rand(all_ethnicity_arr.length)]
end


#creates 100 unique santas (1.8 billion possibilities!!!! MUAHAHAHAHA!)
santas = []
 100.times do |i|
  if rand(100) > 53 
    face = "painted"
  else
    face = "Not painted" 
  end
  santas << Santa.new(random_gender, random_ethnicity, face)
end
santas.each {|santa| santa.reindeer_rank(random_reindeer_list)}
santas.each {|santa| santa.age(rand(20..100))}


p santas









