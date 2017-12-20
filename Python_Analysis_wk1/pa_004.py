"""
Template - Write an expression that determines whether
a key is in a dictionary
"""

# Initialize dictionary
my_dict = {"Joe" : 1, "Scott" : 2, "John" : 3}

# Print True/False depending on whether the key "Joe" is in my_dict
if "Joe" in my_dict:
    print(True)

# Print True/False depending on whether the key "John" is in my_dict
if "John" in my_dict:
    print(True)

# Print True/False depending on whether the key "Stephen" is in my_dict
if "Stephen" in my_dict:
    print(True)
else:
    print(False)

# Output
#True
#True
#False
