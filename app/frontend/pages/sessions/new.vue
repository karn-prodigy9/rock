<script setup>
import { reactive } from 'vue'
import { router } from '@inertiajs/vue3'

defineProps({ errors: Object })

const form = reactive({
  email_address: null,
  password: null,
})

function submit() {
  router.post('/session', form)
}
</script>

<template>
  <div class="w-full">
    <div class="w-full md:w-2/3 flex flex-col my-10 mx-auto items-center">
      <h1 class="text-3xl font-bold">Login</h1>
      <form @submit.prevent="submit" class="flex flex-col gap-2 w-full">
        <label for="email_address">Email:</label>
        <input id="email_address" v-model="form.email_address" required />

        <label for="password">Password:</label>
        <input id="password" type="password" v-model="form.password" required />

        <div v-if="errors" class="text-red-400 font-bold">{{errors}}</div>

        <button type="submit" class="rounded-lg border-2 border-black bg-green-400 text-white my-2 py-3">Submit</button>
      </form>
    </div>
  </div>
</template>


