#!/bin/bash

# function to add a user
add_user() {
  username=$1
  # check if the user already exists
  if id "$username" >/dev/null 2>&1; then
    echo "User $username already exists."
    return 1
  fi
  echo "Adding user $username to the system..."
  # create the user account
  useradd -m $username
  # set the password for the new user
  echo "Enter a password for the new user:"
  passwd $username
  echo "User $username has been added successfully."
}

# loop through all the arguments
for i in "$@"; do
  add_user $i
done
