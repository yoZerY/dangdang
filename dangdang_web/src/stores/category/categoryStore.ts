import { defineStore } from 'pinia'
import CateApi from '@/api/CategoryApi'

export const useCategoryStore = defineStore('categoryStore', {
  state: () => ({
    firstCategory: []
  }),
  actions: {
    queryFirstCategory() {
      CateApi.findFirstCategory().then((res) => {
        console.log('res :>> ', res)
        this.firstCategory = res.data
      })
    }
  }
})
