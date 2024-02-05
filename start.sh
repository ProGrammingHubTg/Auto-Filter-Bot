if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HA-Bots/Auto-Filter-Bot.git /Auto-Filter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-Bot
fi
cd /Auto-Filter-Bot
pip3 install -U -r requirements.txt
echo "Starting The Bot !...."
python3 bot.py
