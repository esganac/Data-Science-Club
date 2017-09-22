
## http://go.datasciencecsus.com:4567/
install.packages('ggplot2')

library(ggplot2)

ggplot() + geom_point(aes(x = 0:10, y = 0:10))
df = data.frame(X = 0:10, Y = 0:10)

## range evens seq(0, 10, by = 2)
df = data.frame(X = seq(0, 10, by = 2), Y = seq(0, 10, by = 2))
ggplot(data = df) +
  geom_point(aes(x = X, y = Y))

df = data.frame(X = seq(0, 3, by = 1), Y = seq(0, 9, by = 3))
ggplot(data = df) +
  geom_point(aes(x = X, y = Y)) +
  ggtitle("My Fancy Graph")

## Excercise

ggplot() + geom_blank() + ggtitle("Half Life 3 Game Reviews") +
    xlab("Time Since Game Release") + ylab("Rating Score")


## Faceting- makes graphs that will wrap around
ggplot(data = msleep) +
  geom_histogram(binwidth = 2, aes(x = sleep_total)) +
      facet_wrap(~vore)

## Exercise

View(diamonds)


ggplot(data = diamonds) + geom_point(aes(x = x, y = price)) +
      facet_wrap(~cut)

## Coloring

ggplot(data = msleep) +
  geom_histogram(binwidth = 2, aes(x = sleep_total, color = vore))

## Exercise
ggplot(data = diamonds) + geom_point(aes(x = x, y = price, color = carat)) +
      facet_wrap(~cut)

## Alpha
ggplot(data = diamonds) +
    geom_point(aes(x = x, y = price), alpha = .01)

## Point Sizing
ggplot(data = data.frame(X = rnorm(200), Y = rnorm(200))) +
  geom_point(aes(x = X, y = Y, size = X + Y))

## FINAL
View(iris)
ggplot(data = iris) + geom_point(aes(x = Petal.Width, y = Petal.Length, color = Species, size = Sepal.Length + Sepal.Width)) +
    ggtitle("Iris Sizes by Species") + xlab("Petal Width") + ylab("Petal Length")