<template>
    <ul>
        <li v-if="twitter">
            <a target="_blank" :href="twitter">
                <i class="fab fa-twitter"></i>
            </a>
        </li>
        <li v-if="facebook">
            <a target="_blank" :href="facebook">
                <i class="fab fa-facebook"></i>
            </a>
        </li>
        <li v-if="instagram">
            <a target="_blank" :href="instagram">
                <i class="fab fa-instagram"></i>
            </a>
        </li>
        <li v-if="linkedin">
            <a target="_blank" :href="linkedin">
                <i class="fab fa-linkedin"></i>
            </a>
        </li>
        <li v-if="flickr">
            <a target="_blank" :href="flickr">
                <i class="fab fa-flickr"></i>
            </a>
        </li>
        <li v-if="github">
            <a target="_blank" :href="github">
                <i class="fab fa-github"></i>
            </a>
        </li>
    </ul>
</template>

<script>
  export default {
    name: 'SocialLinks',
    data() {
      return {
        twitter: process.env.VUE_APP_TWITTER_URL,
        facebook: process.env.VUE_APP_FACEBOOK_URL,
        instagram: process.env.VUE_APP_INSTAGRAM_URL,
        linkedin: process.env.VUE_APP_LINKEDIN_URL,
        flickr: process.env.VUE_APP_FLICKR_URL,
        github: process.env.VUE_APP_GITHUB_URL,
      };
    }
  }
</script>
