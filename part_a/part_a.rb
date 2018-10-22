class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name ()
    return @name
  end

  def cohort ()
    return @cohort
  end

  def set_name (new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk ()
    return "I can talk"
  end

  def say_favourite_language(fav_language)
    return "I love #{fav_language}"
  end

  def say_everything(fav_language)
    return "My name is " + @name + " and I am in " + @cohort + " cohort. My favourite language is #{fav_language}."
  end

end
