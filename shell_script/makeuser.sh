#!/bin/bash

# 공통 비밀번호 설정
PASSWORD="1234"

# user1부터 user25까지 생성하고 sudo 권한 부여 및 비밀번호 설정
for i in {1..25}; do
    USER="user$i"
    
    # 사용자 생성 및 비밀번호 설정
    useradd -m -s /bin/bash "$USER"
    echo "$USER:$PASSWORD" | chpasswd
    
    # sudo 권한 부여
    usermod -aG sudo "$USER"
    
    echo "Created user $USER with sudo access and set password to $PASSWORD"
done

echo "All users from user1 to user25 have been created with sudo privileges and a common password."
