<template>
     <v-text-field
        v-model="search"
        solo
        append-icon="mdi-magnify"
      />
</template>

<script lang="ts">

  export default {
    name: 'SearchBar',

    data () {
      return{
        search :''
      }
    },
    computed:{
      // search(){
      //   return this.search;
      // }
    }
  }
</script>
