<script setup lang="ts">
</script>

<template>
  <html>

  <head>
  </head>

  <body class="contenedor-principal">
    <div id="contenedor" class="contenedor">
      <div class="bloque1">
        <p>Este es el Bloque 1 dentro del contenedor.</p>
      </div>
      <div class="bloque2">
        <p>Este es el contenido del Bloque 2 dentro del contenedor, este contiene mas texto, por eso debe ser mas largo.
        </p>
      </div>
    </div>
    <div class="bloque1">
      <p>Este es el Bloque 1 fuera del contenedor.</p>
    </div>
    <div class="bloque2">
      <p>Este es el Bloque 2 fuera del contenedor.</p>
    </div>
    <div class="clear"></div>
    <div class="v-container">
      <div v-for="(item, index) in myArray" :key="item.id"
        :style="index % 2 !== 0 ? { backgroundColor: '#e6e6e6' } : {}" v-show="index % 2 !== 0">
        Nombre: {{ item.name }}, roles: {{ item.roles.join(',') }}
      </div>
    </div>
    <div class="btn" @click="generateOutput">
      Generar
    </div>
    <div class="output">
      {{ output }}
    </div>
  </body>

  </html>
</template>

<script>
export default {
  components: {
  },
  data() {
    return {
      myArray: [
        { id: 1, name: 'Carlos', roles: [1, 2] },
        { id: 2, name: 'Brian', roles: [4, 5] },
        { id: 3, name: 'Sandra', roles: [6, 7] },
        { id: 4, name: 'David', roles: [8, 9] },
        { id: 5, name: 'German', roles: [5, 6] }
      ],
      output: ""
    }
  },
  computed: {
    totalItems() {
      return this.myArray.length;
    }
  },
  methods: {
    generateOutput() {
      this.output = `el total de listado es: ${this.totalItems}`;
    }
  }
}
</script>

<style type="text/css">
.clear {
  clear: both;
}

body {
  text-align: center;
}

#contenedor {
  width: 600px;
  margin: 0 auto 10px auto;
  padding: 10px;
  border: 1px dashed gray;
}

.bloque1 {
  background-color: red;
  color: white;
}

.bloque2 {
  background-color: yellow;
  color: black;
}

#contenedor .bloque1 {
  width: 100px;
  margin-top: 70px;
  float: left;
  margin-right: 5px;
}

#contenedor .bloque2 {
  width: 100px;
  background-color: yellow;
  float: left;
  margin-right: 5px;
}

#contenedor .bloque1 p {
  font-style: italic;
}

.bloque2 p {
  font-weight: bold;
}

p {
  padding: 10px;
}

.btn {
  margin: 0 auto;
  cursor: pointer;
  background-color: red;
  color: white;
  width: 100px;
  padding: 10px 5px;
}
</style>