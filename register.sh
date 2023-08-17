Header="okhttp/3.12.11"
characters="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
random_account=""
for ((i=0; i<8; i++)); do
    random_char=${characters:$((RANDOM%${#characters})):1}
    random_account="${random_account}${random_char}"
done
response=$(curl -k http://lf.lyyytv.cn/api/user/register -X POST -H "User-Agent:$Header" -H "Content-Type:application/x-www-form-urlencoded"  -d "account=$random_account&username=$random_account&password=123456789&markcode=$random_account")
response="${response//\"/}"
echo "$response" > /token.txt
