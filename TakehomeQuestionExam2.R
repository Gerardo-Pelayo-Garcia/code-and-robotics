# Link of website:
# https://intro-to-stats.netlify.app/

# Click 'Source'
# Scroll through the 'Console' for the solutions

cat("\n\n\n\n\n\n")

print("Begin reading from here downward.")

cat("\n\n\n\n\n\n")


df <- data.frame(
  'x' = c(117, 92, 102, 115, 87, 76, 107, 108, 121, 91, 113, 98),
  'y' = c(3.7, 2.6, 3.3, 2.2, 2.4, 1.8, 2.8, 3.2, 3.8, 3, 4, 3.5)
)

# Plot scatter plot with line of best fit
# Will appear under 'Plots' tab next to 'Files'
plot(df$x, df$y, main='IQ vs. GPA', xlab='IQ', ylab='GPA')
reg_model <- lm(y~x, data=df)

abline(reg_model)

print("Describe the trend (positive), strength (moderate? weak?), and shape (debatably linear).")

# Point always on the linear regression line:
# mean (x), mean(y)
print("Mean of IQ (x) and GPA (y):")
print(mean(df$x))
print(mean(df$y))
print("The point is: (102.25, 3.025)")

# See linear regression
print(summary(reg_model))
print("Coefficient of x (IQ) is 0.033; intercept is -0.357")
print("Fitted model is y(hat)=-0.357 + 0.033")
print("Plug in 115 for IQ to solve; compare to 1 student whose IQ is 115 in data (GPA = 2.2). See class notes from today.")
print("For question f, the answer is yes; give examples of what affects GPA besides IQ.")


