caschool$income <- 0
for (i in 1:nrow(caschool)) {
  caschool$income[i] <- 1000 * caschool$avginc[i]
}

caschool$party <- 0
head(caschool)
str(caschool)
summary(caschool$avginc)
sd(caschool$avginc)
summary(caschool$income)
sd(caschool$income)
summary(caschool$math_scr)

filtered_leq_twe <- subset(caschool, caschool$str <= 20)
nrow(filtered_leq_twe)
summary(filtered_leq_twe$math_scr)

filtered_gr_twe <- subset(caschool, caschool$str > 20)
nrow(filtered_gr_twe)
summary(filtered_gr_twe$math_scr)
t_test_result <- t.test(filtered_leq_twe$math_scr, filtered_gr_twe$math_scr)
print(t_test_result)
cov(caschool$avginc, caschool$math_scr)
cov(caschool$income, caschool$math_scr)
cor(caschool$avginc, caschool$math_scr)
cor(caschool$income, caschool$math_scr)
