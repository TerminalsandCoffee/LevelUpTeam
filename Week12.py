# Create an empty list of services
services = []

# Populate the list using append
services.append('S3')
services.append('Lambda')
services.append('EC2')

# Print the list and its length
print("List of services:", services)
print("Length of services list:", len(services))

# Remove two specific services from the list
services.remove('Lambda')
services.pop(0)

# Print the new list and its length
print("New list of services:", services)
print("New length of services list:", len(services))
