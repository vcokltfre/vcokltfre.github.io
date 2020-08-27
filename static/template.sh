rm -rf ./TemplateBot

git clone https://github.com/vcokltfre/TemplateBot

echo "Enter a name for your bot: "
read bot_name

mv ./TemplateBot/ ./$bot_name/
cd ./$bot_name/

mkdir ./config/
cd ./config/

touch config.py

echo "Enter your bot's token obtained from the Discord developer portal:"
read token

echo "Enter your Discord ID:"
read dev_id

echo "Enter your logging webhook URL:"
read webhook

echo "name = '$bot_name'" >> config.py
echo "log_level = 'info'" >> config.py
echo "log_type = 'embed'" >> config.py
echo "token = '$token'" >> config.py
echo "hook = '$webhook'" >> config.py
echo "dev_ids = [$dev_id]" >> config.py

cd ..

/usr/bin/python3 -m pip install -r requirements.txt