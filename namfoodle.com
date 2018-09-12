server {
        listen 80;
        listen [::]:80;

        root /home/abdullah/www/namfoodle.com;

        index index.html;

        server_name namfoodle.com www.namfoodle.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
