<template>
 <div id="contacts">
  <div v-for="(contact) in contacts" :key="contact.id">
      <b-card :title="contact.name" class="mb-3">
        <b-card-text>
          {{contact.name}} is my {{contact.relationship}}
        </b-card-text>
      </b-card>
  </div>
 </div>
</template>

<script>
import axios from 'axios'

export default {
  data () {
    return {
      contacts: [],
      name: [],
      relationship: [],
      errors: []
    }
  },
  created () {
    axios.get('/api/contacts')
      .then(response => {
        console.log(response)
        this.contacts = response.data
      })
      .catch(e => {
        this.errors.push(e)
        console.log(e)
      })
  }
}
</script>

<style>
#contacts {
    padding-top: 15px;
    padding-bottom: 15px;
}
</style>
