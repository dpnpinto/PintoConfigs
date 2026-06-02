# Geretate the key and copy the public to your git
ssh-keygen -t ed25519 -C "your_email@example.com"
# Verify the type of conection
git remote -v
# Set to ssh conect
git remote set-url origin git@github.com:username/repository.git
# Test the ssh connection
ssh -T git@github.com
