echo "============================="
echo "Installing docker Step 1"
echo "============================="
# following this tutorial:
#------------------------
# https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html
# 3. Update the installed packages and package cache on your instance.
sudo yum update -y
# 4. Install the most recent Docker Community Edition package
sudo yum install -y docker
# 5. Start the Docker service.
sudo service docker start
# 6. Add the ec2-user to the docker group so you can execute Docker commands without using sudo.
sudo usermod -a -G docker ec2-user

echo "============================="
echo "Now Log out and Log in"
echo "============================="
sleep 2
