Id <- c(1:10)

Name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman","Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry","Claudia Garcia")

Job_Title <- c("Professional", "Programmer","Management", "Clerical",  "Developer", "Programmer", "Management", "Clerical", "Developer","Programmer")

employee <- data.frame(Id, Name, Job_Title)

print(employee)

separate(employee, Name, into=c('first_name', 'last_name'), sep=' ')

unite(employee, 'merge', Name, Job_Title, sep='-')

View(penguins)

penguins3 <- penguins %>%
  mutate(body_mass_kg=body_mass_g/1000,ff=flipper_length_mm/1000)

View(penguins3)
