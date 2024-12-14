<script setup>
import { Link } from '@inertiajs/vue3'

import Header from '@/components/Head.vue'
</script>

<template>
  <div class="w-full">
    <Header />

    <div class="flex gap-2 m-2">
      <Link href="/about" class="underline">About</Link>
      <Link href="/contact" class="underline">Contact</Link>
    </div>

    <main class="flex gap-2 m-2">
      <p>This is an about page and this page doesn't pass from controller.</p>
    </main>
  </div>
</template>
