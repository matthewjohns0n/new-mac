# First copy your old ~/.ssh folder to ~/. Then run this

# Also you might want to add this to your ~/.ssh/config:
# Host *
#   AddKeysToAgent yes
#   UseKeychain yes
#   IdentityFile ~/.ssh/id_rsa

eval "$(ssh-agent -s)"
chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/config
ssh-add -K ~/.ssh/id_rsa