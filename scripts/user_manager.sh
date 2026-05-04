#!/bin/bash
echo "=============================="
echo "  USER MANAGEMENT SCRIPT"
echo "=============================="
echo "1. Create a new user"
echo "2. Delete a user"
echo "3. List all users"
echo "4. Check if user exists"
echo "=============================="
read -p "Choose an option (1-4): " OPTION

case $OPTION in
  1)
    read -p "Enter username to create: " USERNAME
    sudo useradd -m -s /bin/bash $USERNAME
    echo "User $USERNAME created successfully"
    ;;
  2)
    read -p "Enter username to delete: " USERNAME
    sudo userdel -r $USERNAME
    echo "User $USERNAME deleted"
    ;;
  3)
    echo "=============================="
    echo "CURRENT USERS ON SYSTEM:"
    echo "=============================="
    cat /etc/passwd | cut -d: -f1
    ;;
  4)
    read -p "Enter username to check: " USERNAME
    if id "$USERNAME" &>/dev/null; then
      echo "User $USERNAME EXISTS on this system"
      id $USERNAME
    else
      echo "User $USERNAME does NOT exist"
    fi
    ;;
  *)
    echo "Invalid option"
    ;;
esac
