lst = [1, 3, 5, 7]

print("lst before .pop():", lst)
print("lst id before .pop():", id(lst))

print("id of last element before .pop()", id(lst[3]))

output = lst.pop()

print("output of .pop():", output)
print("id of output of .pop():", id(output))

print("lst after .pop():", lst)
print("lst id after .pop():", id(lst))