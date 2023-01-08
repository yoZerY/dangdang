<template>
  <div class="content">
    <div class="top">
      <div class="search"></div>
      <div class="msg"></div>
    </div>
    <div v-for="(item, index) in firstCategory" :key="index">
      {{ item.firstctgyname }}
    </div>
  </div>
</template>
<script setup lang="ts">
import { onMounted, ref } from 'vue'
import type { Ref } from 'vue'
import { useCategoryStore } from '@/stores/category/categoryStore'
import type { IFirstCategory } from '@/stores/category/types'

const categoryStore = useCategoryStore()
const firstCategory: Ref<IFirstCategory[]> = ref([])

onMounted(async () => {
  await categoryStore.queryFirstCategory()
  firstCategory.value = categoryStore.firstCategory
})
</script>
<style lang="scss" scoped>
.content {
  height: 100%;
}
</style>
