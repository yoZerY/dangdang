import findSecondByFirstId from '../model/oneToMany'
import { firstCategoryModel } from '../model/firstCategoryModel'
class CategoryDao {
  static categoryDao: CategoryDao = new CategoryDao()
  static findSecThirdCategory(firstctgyId: number) {
    return findSecondByFirstId(firstctgyId)
  }
  static async findFirstCategory() {
    return await firstCategoryModel.findAll({})
  }
}

export const { findSecThirdCategory, findFirstCategory } = CategoryDao
