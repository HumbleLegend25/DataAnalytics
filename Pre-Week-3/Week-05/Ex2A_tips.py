# Define known values
food_cost = 79.25
tax = 6.54
tip = 12.00

# Calculate the unknown
total_due = food_cost + tax + tip

# str() converts a number to a string so it can be joined with other strings using +
# print("The total due is " + str(total_due))

print("Food cost is " + str(food_cost) + " and tax is " + str(tax))
# print("Tip is " + str(tip))
print("Tip is " + format(tip, ".2f"))
print("Total due is " + str(total_due))

# Net worth = Total Assets - Total Debts

# Assets
home_value = 250000
car_value = 15000
savings = 10000
total_assets = home_value + car_value + savings

# Debts
mortgage = 180000
car_loan = 8000
credit_card = 2000
total_debts = mortgage + car_loan + credit_card

# Net worth
net_worth = total_assets - total_debts

print("Your total assets are " + str(total_assets))
print("Your total debts are " + str(total_debts))
print("Your net worth is " + str(net_worth))

# Area of rectangle = Side A x Side B
# Using birthday: month = 5, day = 15

side_a = 5
side_b = 15
area = side_a * side_b

print("Side A is " + str(side_a))
print("Side B is " + str(side_b))
print("The area of the rectangle is " + str(area))

# Tip amount = Bill x Tip percentage

restaurant_bill = 65.00
tip_percentage = 0.20
tip_amount = restaurant_bill * tip_percentage

print(f"The tip on a ${format(restaurant_bill, '.2f')} restaurant bill is ${format(tip_amount, '.2f')}")

# Area of circle = pi x radius^2
# Diameter = birthday day (15), radius = diameter / 2
import math

diameter = 15
radius = diameter / 2
area = math.pi * radius ** 2

print("The area of a circle with radius " + str(radius) + " is " + format(area, ".2f"))

# Area of circle = pi x radius^2
# Diameter = birthday day (15), radius = diameter / 2
import math

diameter = 15
radius = diameter / 2
area = math.pi * radius ** 2

print("The area of a circle with radius " + str(radius) + " is " + format(area, ".2f"))

# Rule of 72: Years to double = 72 / interest rate

savings = 5000.00
interest_rate = 6

years_to_double = 72 / interest_rate
doubled_balance = savings * 2

print("Your current savings is " + format(savings, ".2f"))
print("At a " + format(interest_rate, ".0%") + " interest rate, your savings account will be worth " + format(doubled_balance, ".2f") + " in " + format(years_to_double, ".1f") + " years")