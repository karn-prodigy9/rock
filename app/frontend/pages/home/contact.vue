<script setup>
import { Link } from '@inertiajs/vue3'

import Header from '@/components/Head.vue'

const props = defineProps({
  name: String,
  phone_number: String
});
</script>

<template>
  <div class="w-full">
    <Header />

    <div class="flex gap-2 m-2">
      <Link href="/about" class="underline">About</Link>
      <Link href="/contact" class="underline">Contact</Link>
    </div>

    <main class="flex gap-2 m-2">
      <p>Name: {{name}}</p>
      <p>Phone Number: {{phone_number}}</p>
    </main>
  </div>
</template>
