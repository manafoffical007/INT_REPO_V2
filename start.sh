if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/RolexPc/FILE-STOR-V1 /FILE-STOR-V1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FILE-STOR-V1
fi
cd /FILE-STOR-V1
pip3 install -U -r requirements.txt
echo "Starting FILE-STOR-V1...."
python3 bot.py
