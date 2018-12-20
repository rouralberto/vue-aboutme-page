# vue-aboutme-page
Automated Docker "About Me" Vue page

## To run with PouchContainer
Create a file `create.sh`:
```
#!/usr/bin/env sh

pouch stop aboutme-vue
pouch rm aboutme-vue
pouch run -d -p 80:80 --name aboutme-vue \
-e VUE_APP_NAME="Your Name" \
-e VUE_APP_LINE="Some words about you here" \
-e VUE_APP_TWITTER_URL="#" \
-e VUE_APP_FACEBOOK_URL="#" \
-e VUE_APP_INSTAGRAM_URL="#" \
-e VUE_APP_LINKEDIN_URL="#" \
-e VUE_APP_FLICKR_URL="#" \
-e VUE_APP_GITHUB_URL="#" \
roura/aboutme-vue

pouch exec -it aboutme-vue npm install
pouch exec -it aboutme-vue npm run build
```
Then `sh create.sh`.


## To run with Docker
Create a file `create.sh`:
```
#!/usr/bin/env sh

docker stop aboutme-vue
docker rm aboutme-vue
docker run -d -p 80:80 --name aboutme-vue \
-e VUE_APP_NAME="Your Name" \
-e VUE_APP_LINE="Some words about you here" \
-e VUE_APP_TWITTER_URL="#" \
-e VUE_APP_FACEBOOK_URL="#" \
-e VUE_APP_INSTAGRAM_URL="#" \
-e VUE_APP_LINKEDIN_URL="#" \
-e VUE_APP_FLICKR_URL="#" \
-e VUE_APP_GITHUB_URL="#" \
roura/aboutme-vue

docker exec -it aboutme-vue npm install
docker exec -it aboutme-vue npm run build
```
Then `sh create.sh`.
