if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sandeshofficial092/SB_0101/SB_0101
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SB_0101
fi
cd /SB_0101
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
