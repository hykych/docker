##Usage
tag= v2ray
sudo docker built -t $tag .
sudo docker run -d -p 443:443 -p 444:444 $tag