<template>
    <div>
        <h1 v-if="name">I'm {{ name }}.<span class="blink">|</span></h1>
        <h2 v-if="line">{{ line }}</h2>
        <SocialLinks/>
    </div>
</template>

<script>
  import SocialLinks from './SocialLinks'

  export default {
    name: 'AboutMe',
    components: {
      SocialLinks
    },
    data() {
      return {
        name: process.env.VUE_APP_NAME,
        line: process.env.VUE_APP_LINE,
      };
    }
  }
</script>
