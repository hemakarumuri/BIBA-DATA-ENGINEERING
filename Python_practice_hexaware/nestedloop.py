def print_numbers():
    for i in range(1, 6):
        # outer loop
        for j in range(i):
            # 1st level inner loop
            print(i, end=' ')
        print('\n')
 
print_numbers()
