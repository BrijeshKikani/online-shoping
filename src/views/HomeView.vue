<template>
  <v-container>
    <v-row>
      <v-col v-for="data in getData" :key="data.id" cols="12" md="3" lg="3" xl="3" sm="6" xs="6">
        <v-card>
            <v-img
              :src="data.src"
            >
              <v-card-title v-text="data.name"></v-card-title>
            </v-img>

            <v-card-actions>
              <v-spacer></v-spacer>

              <v-btn icon>
                <v-icon>mdi-heart</v-icon>
              </v-btn>

              <v-btn icon>
                <v-icon>mdi-bookmark</v-icon>
              </v-btn>

              <v-btn icon>
                <v-icon>mdi-share-variant</v-icon>
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
  export default {
    name: 'Home',

    data () {
      return{
        getData :[
          {
            id:'1',
            name:'1',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },
          {
            id:'2',
            name:'2',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },
          {
            id:'3',
            name:'3',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },
          {
            id:'4',
            name:'4',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },
          {
            id:'5',
            name:'5',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },
          {
            id:'6',
            name:'6',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },
          {
            id:'7',
            name:'7',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },
          {
            id:'8',
            name:'8',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },

          {
            id:'9',
            name:'9',
            title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg'
          },
        ]
      }
    },
    computed:{
      // search(){
      //   return this.search;
      // }
    }
  }
</script>
