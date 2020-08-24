### nginx.org

#### Building Nginx from sources
```
* Download the latest code from the official page. ( curl/wget )
* Uncompress the file (  tar xvzf  )
* dnf update -y
* Install the dependencies ( zlib and openssl )
* dnf install pcre pcre-devel zlib zlib-devel openssl openssl-devel
* ./configure
* ./configure --sbin-path=/usr/bin/nginx
--conf-path=/etc/nginx/nginx.conf
--error-log-path=/var/log/nginx/error.log
--http-log-path=/var/log/nginx/access.log
--with-pcre --pid-path=/var/run/nginx.pid
--with-http_ssl_module
```

#### compile that config
` make `

#### install the bin
` make install `

#### check if works! to check the version
` nginx -v `

------------

#### Install nginx from manager packages
` dnf install nginx -y `

####
