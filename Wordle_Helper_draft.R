library(words)
library(shiny)
word5 <- subset(words, word_length == 5)$word

# letters not included
list1 <- c("axomel")
list1 <- tolower(list1)
p1 <- unlist(strsplit(list1, split = ""))
p11 <- paste0("^(?!.*", p1,")")
p111 <- paste(p11, collapse = "")
x1 <- grep(p111, word5, value = TRUE, perl = TRUE)
# x1 <- grep("^(?!.*a)^(?!.*x)^(?!.*o)^(?!.*m)^(?!.*e)^(?!.*l)", word5, value = TRUE, ignore.case = TRUE, perl = T)

# letters included but not in the right place
list2 <- c("di")
# list2 <- c(letters)
list2 <- tolower(list2)
p2 <- unlist(strsplit(list2, split = ""))
p22 <- paste0("(?=.*", p2, ")")
p222 <- paste(p22, collapse = "")

x2 <- grep(p222, word5, value = TRUE, perl = TRUE)
# x2 <- grep("(?=.*d)(?=.*i)", word5, value = TRUE, ignore.case = TRUE, perl = TRUE)

# letters included and in the right place
x3 <- word5[substr(word5, 3, 3) == "v" & substr(word5, 4, 4) == "i"]


Reduce(intersect, list(x1, x2, x3))





guess_word = data.frame(
  letters = rep("", 5),
  color = rep("", 5)
)

setClass("wordle",
         slots = c(
           letter = "character",
           color = "character"
         ))

wordle





