# Requirements

Jekyll v3.6.2

Prefer to use `gem` and beware that older Debian packages might interfer, e.g.:

```
# apt-get remove jekyll
# apt-get remove ruby-liquid
# gem uninstall jekyll
# gem install jekyll -v '3.6.2'
# gem install jekyll-paginate
```

# Compilation

`--future` to preview the future news.

```
jekyll serve --future
```

# Server setup to update the site automatically

```
a2enmod cgi
systemctl restart apache2
chown -R www-data:www-data /var/www/2018
chown -R www-data:www-data /var/www/2018-passthesalt
apt-get install rsync

# Add to /etc/apache2/sites-available/2018-passthesalt-ssl.conf
    ScriptAlias /cgi-bin/ "/var/www/2018/cgi-bin/"
    <Directory "/var/www/2018/cgi-bin/">
        Options +ExecCGI
        AddHandler cgi-script .cgi
    </Directory>

```

Then add the CGI URL to a Github webhook:
Go to the settings of your repository, click on "webhooks & Services" and "Add webhook".
