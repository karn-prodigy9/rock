<script setup>
import { Link } from '@inertiajs/vue3'
</script>

<template>
  <div class="flex gap-2 m-2 px-4 py-3 border-2 border-black items-center justify-between rounded-xl">
    <div class="font-bold">Rock with SPA</div>
    <Link href="/session" method="delete" as="button" class="bg-red-400 text-white px-3 py-2 rounded-xl">Logout</Link>
  </div>
</template>
