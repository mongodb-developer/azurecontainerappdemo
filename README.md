# Flask with MongoDB Project

## Building for Docker

At the root of the project, execute the following from the command line to build a Docker image from the project.

```bash
docker build -t anaiyaflask:arm .  
```

In the above example an optional tag is used. If you're using an M1 Mac, it makes sense to tag it as `arm` to represent compatibility.

If you're using an M1 Mac or would like to build for a different platform or CPU architecture, execute the following:

```bash
docker buildx build --platform linux/amd64 -t anaiyaflask:amd64 .
```

In the above example [buildx](https://github.com/docker/buildx) is used to build an image for AMD64 with an appropriate tag.

## Deploying with Docker

To deploy the application with Docker, execute the following command from the command line:

```bash
docker run -d -p 5000:5000 -e "CONNECTION_STRING=<MONGODB_ATLAS_URI_STRING_HERE>" anaiyaflask:arm
```

Remember to replace the MongoDB connection string with your own as well as use the appropriate tag for your CPU architecture.