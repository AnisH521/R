#question 5

set.seed(123) 
sugar_cookie <- rnorm(30, mean = 9.99, sd = 0.04)

sugar_cookie

# H0 : mu = 10
#performing two sided test

t.test(sugar_cookie, mu = 10)
