<template>
  <div id="app">
    <header role="navigation" class="navbar bd-navbar flex-column flex-md-row navbar-dark navbar-expand">
        <router-link to="/" class="navbar-brand">
            <img src="./assets/logo.png" width="50" height="50">
        </router-link>
        <div class="navbar-nav-scroll">
            <b-navbar-nav class="flex-row">
                <li class="nav-item"><router-link to="/" class="nav-link">Home</router-link></li>
                <li class="nav-item"><router-link to="/contacts" class="nav-link">Contacts</router-link></li>
            </b-navbar-nav>
        </div>
    </header>
    <b-container fluid>
        <router-view/>
    </b-container>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
.bd-navbar { background-color: #563d7c; }
</style>
