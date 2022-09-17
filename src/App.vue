<template>
  <v-app>
    <v-container class="pa-0">
      <v-card class="mx-auto,overflow-hidden"  flat>
    <v-app-bar
      app
      color="primary"
      :prominent="shrink"
      :dense="shrink"
    >
    <v-app-bar-nav-icon @click="drawer = true" v-if="shrink"></v-app-bar-nav-icon>
    <template v-slot:extension v-if="shrink">
      <SearchBar />
      </template>
      <v-spacer></v-spacer>

      <SearchBar class="mt-7" v-if="shrink!=true"/>

<v-btn icon>
  <v-icon>mdi-heart</v-icon>
</v-btn>

<v-btn icon>
  <v-icon>mdi-cart</v-icon>
</v-btn>

<v-btn icon>
  <v-icon>mdi-account</v-icon>
</v-btn>

    </v-app-bar>
    <v-navigation-drawer
      v-model="drawer"
      v-if="shrink"
      absolute
      temporary
    >
      <v-list
        nav
        dense
      >
        <v-list-item-group
          v-model="group"
          active-class="deep-purple--text text--accent-4"
        >
          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-home</v-icon>
            </v-list-item-icon>
            <v-list-item-title>Home</v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-account</v-icon>
            </v-list-item-icon>
            <v-list-item-title>Account</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
    <v-main>
      <router-view/>
    </v-main>
      </v-card>
    </v-container>
  </v-app>
</template>

<script lang="ts">
import SearchBar from '../src/components/SearchBar.vue';

export default{
  name: 'App',

  data () {
      return{
        search :'',
        group:null,
        drawer:false
      }
    },
    computed:{
      shrink() {
        return this.$vuetify.breakpoint.mobile
      }
    },
  components:{
    SearchBar
  }
};
</script>
