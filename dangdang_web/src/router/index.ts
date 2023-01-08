import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      redirect: '/category'
    },
    {
      path: '/category',
      name: 'Category',
      component: () => import('@/views/category/index.vue')
    }
  ]
})

export default router
