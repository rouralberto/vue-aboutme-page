<template>
    <main id="app">
        <AboutMe name="Alberto Roura" line="Software Engineer and Cycling enthusiast"/>
    </main>
</template>

<script>
  import AboutMe from './components/AboutMe'

  export default {
    name: 'app',
    components: {
      AboutMe
    }
  }
</script>

<style>
    @import "https://fonts.googleapis.com/css?family=Lato:300,400";
    @import "https://use.fontawesome.com/releases/v5.3.1/css/brands.css";
    @import "https://use.fontawesome.com/releases/v5.3.1/css/fontawesome.css";

    html {
        font-family: Lato, sans-serif;
        background: #101624 url(./assets/bg.jpg) no-repeat center / cover;
        color: white;
    }

    body {
        display: flex;
        margin: 0;
        height: 100vh;
        align-items: center;
    }

    main {
        padding-left: 5vw;
    }

    h1 {
        margin-bottom: 0;
    }

    h2 {
        margin: 0 0 30px;
        font-weight: 300;
        font-size: 20px;
    }

    h1, h2 {
        text-shadow: 1px 1px 2px rgba(0, 0, 0, .25);
    }

    ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    li {
        display: inline-block;
    }

    li + li {
        margin-left: 15px;
    }

    #visits {
        position: fixed;
        bottom: 5px;
        right: 5px;
        opacity: .5;
        font-weight: 300;
        font-size: 14px;
    }

    .fab {
        color: white;
        font-size: 25px;
        transition: 250ms transform;
    }

    .fab:hover {
        transform: scale(1.1);
    }

    .blink {
        animation: blink 1s step-start 0s infinite;
    }

    @keyframes blink {
        50% {
            opacity: 0;
        }
    }
</style>
