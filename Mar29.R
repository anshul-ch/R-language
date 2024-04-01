{
  library(tidyr)
  n <- 10
  # create a data frame with s.no, group.1,
  #group.2,group.3 columns
  tidy_dataframe <- data.frame(
    S_No = c(1:n),
    Group.1 = c(23, 345, 76, 212, 88,
                199, 72, 35, 90, 265),
    Group.2 = c(117, 89, 66, 334, 90,
                101, 178, 233, 45, 200),
    Group.3 = c(29, 101, 239, 289, 176,
                320, 89, 109, 199, 56))

  # print the elements of the data frame
  tidy_dataframe

  """1. gather() function: It takes multiple columns and
  gathers them into key-value pairs.
  Basically it makes wide data longer using gather()
  function on tidy_dataframe
  """

  long <- tidy_dataframe %>%
    gather(Group,Frequency,Group.1:Group.3)   # take g1-> g3 and combine them into Group column and
                                              #  frequency in another column add other rows
  # print the data frame in a long format
  print(long)


  #2. separate() function: It converts longer data to a wider format.
  #The separate() function turns a single character column into multiple
  #columns.
  separate_data <- long %>% separate(Group, c("Allotment",
                                              "Number"))          # reverse of gather.
  separate_data


  #3. unite() function: It merges two columns into one column.
  #The unite() function is a convenience function to paste together
  #multiple variable values into one. In essence, it combines two
  #variables of a single observation into one variable.
  # use unite() function to glue
  # Allotment and Number columns
  unite_data <- separate_data %>% unite(Group, Allotment,
                                        Number, sep = ".")         # combine two columns into 1.
                                                                  # do not create extra rows.
  # print the new data frame
  unite_data


  #4. spread() function: It helps in reshaping a longer format to a
  #wider format. The spread() function spreads a key-value pair across
  #multiple columns.
  # use unite() function to make data wider
  back_to_wide <- unite_data %>% spread(Group, Frequency)   # back to multiple groups
  # print the new data frame
  back_to_wide




  #7. fill() function: Used to fill in the missing values in selected
  #columns using the previous entry.
  # import the tidyr package
  df <- data.frame(Month = 1:6,
                   Year = c(2000, rep(NA, 5)))

  # print the df data frame
  df # Output (i)

  # use fill() to fill missing values in
  # Year column in df data frame
  df %>% fill(Year) # Output (ii)


  #8. full_seq() function: It basically fills the missing values in
  #a vector which should have been observed but weren't.
  #The vector should be numeric.
  # import the tidyr package
  # creating a numeric vector
  num_vec <- c(1, 7, 9, 14, 19, 20)

  # use full_seq() to fill missing
  # values in num_vec
  full_seq(num_vec, 1)


  #9. drop_na() function: This function drops rows containing
  #missing values.
  # import tidyr package
  # create a tibble df with missing values
  df <- tibble(S.No = c(1:10),
               Name = c('John', 'Smith', 'Peter',
                        'Luke', 'King', rep(NA, 5)))

  # print df tibble
  df # Output (i)

  # use drop_na() to drop columns
  # in df with missing values
  df %>% drop_na(Name) # Output (ii)


  #10. replace_na() function: It replaces missing values.
  df <- data.frame(S.No = c(1:10),
                   Name = c('John', 'Smith',
                            'Peter', 'Luke',
                            'King', rep(NA, 5)))

  df # Output (i)

  # use replace_na() to replace missing values or na
  df %>% replace_na(list(Name = 'Henry')) # Output (ii)

}

# dplyr package in R. It is used to manipulate data frames.
# It is a grammar of data manipulation. It is used to perform data manipulation operations such as
# fltering, selecting, arranging, mutating, summarizing, and sampling.


{
  library(dplyr)
  # Create a data frame with missing data
  d <- data.frame(name=c("Ab", "B",
                         "C", "D"),
                  age=c(7, 5, 9, 16),
                  ht=c(46, NA, NA, 69),
                  school=c("yes", "yes", "no", "no"))
  d
  # Finding rows with NA value
  d %>% filter(is.na(ht))

  # Finding rows with no NA value
  d %>% filter(! is.na(ht))
  d %>% filter(ht>60)
  # Arranging name according to the age
  d.name<- arrange(d, age)
  print(d.name)
  # startswith() function to print only ht data
  select(d, starts_with("ht"))
  select(d, ends_with("ool"))

  # -startswith() function to print
  # everything except ht data
  select(d, -starts_with("ht"))

  # Printing column 1 to 2
  select(d, 1: 2)

  # Printing data of column
  # heading containing 'a'
  select(d, contains("a"))

  # Printing data of column
  # heading which matches 'na'
  select(d, matches("na"))
  # Calculating a variable x3 which is sum of height
  # and age printing with ht and age
  mutate(d, x3 = ht + age)

  # Calculating a variable x3 which is sum of height
  # and age printing only x3
  transmute(d, x3 = ht + age)


  # Calculating mean of age
  summarise(d, mean = mean(age))

  # Calculating min of age
  summarise(d, med = min(age))

  # Calculating max of age
  summarise(d, med = max(age))

  # Calculating median of age
  summarise(d, med = median(age))


  # Printing three rows
  sample_n(d, 3)

  # Printing 50 % of the rows
  sample_frac(d, 0.50)
}