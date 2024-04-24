if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Deendayal423/Advance-Auto-filter-Bot.git /Advance-Auto-filter-Bot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-Auto-filter-Bot
fi
cd /Advance-Auto-filter-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
