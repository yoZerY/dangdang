import http from '@/utils/http'
class CategoryApi {
  static api: CategoryApi = new CategoryApi()

  findFirstCategory() {
    return http.get('/category/findFirstCategory')
  }

  getSecAndThirdCategoryList(id: number) {
    return http.get(`/category/findSecAndThird/${id}`)
  }
}

export default CategoryApi.api
