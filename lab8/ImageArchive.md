# Image and Container Operations

## Create Image Archive

```bash
docker pull ubuntu:latest
docker save ubuntu:latest -o ubuntu_latest.tar
```

## Run NGINX Container

### Run and verify

```bash
docker run -d --name nginx_container -p 80:80 nginx

# 5031d4f065b4818aba20cd200b21f690ae42a96103169d30990c3333121cefeb
```

We can verify that the NGINX is working with this command

```bash
curl http://localhost # port 80 is the default HTTP port
```

We would see an HTML page as output

```html
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```

### Create a Custom HTML Page

Create `index.html` with our own HTML and execute this commnad

```bash
docker cp index.html nginx_container:/usr/share/nginx/html/index.html

# Successfully copied 2.05kB to nginx_container:/usr/share/nginx/html/index.html
```

### Create a Custom Image

```bash
docker commit nginx_container my_website:latest

# sha256:7cc1bd7fb38d967d9e72e29209401ecfd4240bf80406d2f5f52af28937f31bb0
```

### Remove Original Container

```bash
docker stop nginx_container
docker rm nvingx_container
```

### Create a New Container

```bash
docker run -d --name my_website_container -p 80:80 my_website:latest

# 38ce0f38c64394bb605d8eb68c8abc78af804443c03d8ebb99b775f3c96cd296
```

### Test Web Server

```bash
curl http://localhost
```

Outputs

```html
<html>
<head>
  <title>The best</title>
</head>
<body>
  <h1>website</h1>
</body>
</html>
```

### Diff

```bash
docker diff my_website:latest
```

```
A /usr/share/nginx/html/index.html
```

This indicates that the `index.html` file has been added to the new image.
