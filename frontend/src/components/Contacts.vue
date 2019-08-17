<template>
 <div id="contacts">
  <div v-for="(contact) in contacts" :key="contact.id">
   <p>{{contact.name}} is my {{contact.relationship}}</p>
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
