
fruits = ['apple', 'banana', 'cherry', 'date']

arr_1 = np.array(fruits)
print(arr_1)
# f) 2D array with rows (1,3,5) and (2,4,6)
arr_3 = np.array([(1, 3, 5), (2, 4, 6)])
print(arr_3)
arr_4 = np.array([arr_3[0, 2], arr_3[1, 1]])
print(arr_4)

arr_5 = np.ones((2, 2, 2))
print(arr_5)