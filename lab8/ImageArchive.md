## Creating Image Archive
To create an archive file from the latest Ubuntu image, I used the following command:
docker pull ubuntu:latest
docker save -o ubuntu_latest.tar ubuntu:latest

## Checking Image Size
1. To view the image size of the image
docker images ubuntu:latest --format "{{.Size}}"

I didn't see any difference between the two images, they both have 77.8 MB as size.

## Running Nginx Container
To run a container using the Nginx web server image, I used the following command:
docker run -d -p 80:80 --name nginx_container nginx

1. This command starts a new container using the Nginx image in detached mode with a random name. The container's port 80 is bound to the local port 80 using the -p option. To verify that the web server is running and accessible from the local machine, we can open a web browser and navigate to http://localhost. We should see the default Nginx welcome page.

## Creating HTML File
To create an HTML file with the specified content, I used the following command:
1. echo "<html><head><title>The best</title></head><body><h1>website</h1></body></html>" > index.html
2. This command creates a new file named index.html with the specified content.

## Copying HTML File to Container
To copy the HTML file to the container at the appropriate location to serve as an index file, I used the following command:
1. docker cp index.html nginx_container:/usr/share/nginx/html/index.html
2. This command copies the index.html file to the /usr/share/nginx/html/ directory in the nginx_container container.

## Creating Custom Image
To create a custom Docker image from the running container and name it "my_website", I used the following command:
1. docker commit nginx_container my_website
This command creates a new image from the nginx_container container and names it my_website.

## To tag the container with the "latest" tag
1. I used the following command: docker tag my_website:latest my_website:latest

## Removing Original Container
To remove the original container (nginx), I used the following command: 
docker rm -f nginx_container

## Creating New Container
To create a new container using the custom image, I used the following command:

1. docker run -d -p 80:80 --name my_website_container my_website:latest
2. This command starts a new container using the my_website image in detached mode with a random name. The container's port 80 is bound to the local port 80 using the -p option.

## Testing Web Server
To test the web server, I used the following command:
1. curl http://localhost
2. This command accesses the web server at http://localhost and prints the response to the terminal. We should see the HTML content that we added to the index.html file.

## Analyzing Image Changes
To analyze the changes made to the new image, I used the docker diff command followed by the image ID or name. For example:
1. docker diff my_website:latest