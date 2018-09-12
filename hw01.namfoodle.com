server {
        listen 80;
        listen [::]:80;

        root /home/abdullah/www/hw01.namfoodle.com;

        index  hw01.html;

        server_name hw01.namfoodle.com www.hwo01.namfoodle.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
