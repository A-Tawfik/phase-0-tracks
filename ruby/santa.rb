class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @name = name
    @painted_face = painted_face
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = 
    @age = 0
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
  while new_reindeer.length < 9
    random_number = rand(9)
    if !new_reindeer.include?(all_reindeer[random_number])
      new_reindeer << all_reindeer[random_number]
    end
  end
  return new_reindeer
end

#Random Gender Selector
def random_gender
  facebook_genders = ["Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man", "Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans*", "Trans Female", "Trans* Female", "Trans Male", "Trans* Male", "Trans Man", "Trans* Man", "Trans Person", "Trans* Person", "Trans Woman", "Trans* Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-Spirit"]
  gender = facebook_genders[rand(facebook_genders.length)]
end

def random_ethnicity
  all_ethnicity_arr = ["Afghan","Albanian","Arab","Argentine","American musicians of Armenian descent","Armenian","Australian","Austrian","Azerbaijani","Bahamian","Bangladeshi","Barbadian","Belgian","Brazilian","Bulgarian","Cajuns","Cambodian","Chinese","Colombian","Coptic","Croatian","Cuban","Czech","Danish","Dominican","Dutch","Egyptian of English descent","Estonian","Ethiopian","Finnish","French","German","German Texans","Greek","Guyanese","Haitian","Hispanic/Latino","Hmong","Honduran","Hungarian","Indian","indigenous people of the Americas","Indonesian","American Inuit","Iranian","Iraqi","Irish","Israeli","Italian","Jamaican","Japanese","Kazakh","Korean","Laotian","Lebanese","Louisiana Creoles","Macedonian","Mexican","User:BlindForay/sandbox","Native Hawaiians","Nicaraguan","Nigerian","Norwegian","Pakistani","Palestinian","Panamanian","Polish","Portuguese","Stateside Puerto Ricans","Romanian","Russian","Rusyn","Salvadoran","Scotch-Irish","Scottish","Serbian","Sicilian","Slovak","Slovene","Somali","Spanish","Sri Lankan","Swedish","Swiss","Taiwanese","Turkish","Ukrainian","Uruguayan","Venezuelan","Vietnamese","Welsh"]
  ethnicity = all_ethnicity_arr[rand(all_ethnicity_arr.length)]
end

p random_reindeer_list
p random_ethnicity
p random_gender











