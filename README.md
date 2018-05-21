# Description

Docker container setup to enable firebase development with minimal setup. Also includes a script file to enable automatic cloud function compiles before serving. The current firebase tools do not run predeploy before serving, so TypeScript cloud functions are not built appropriately.

# Instructions
1. Create non-interactive token with firebase login:ci if you don't have one already.
2. Set ENV FIREBASE_TOKEN to the generated token in Dockerfile
3. Set FB_ROOT_DIR to your Firebase project working directory in .env file.
4. Move serve-all-functions.sh to your Firebase working directory if it isn't already in it. 
5. Run docker-compose services to perform Firebase tasks and enjoy. 