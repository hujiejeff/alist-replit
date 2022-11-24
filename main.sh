# rm -rf alist* data/ #Uncomment this line if you want update
if [ ! -f "alist" ];then
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
  mv alist-linux-musl-amd64 alist
fi

aria2c --enable-rpc --rpc-allow-origin-all --disable-ipv6& ./alist server --no-prefix
