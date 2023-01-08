import { Controller, Get, Post } from '../decorator/methods.decorator'
import { Context } from 'koa'
import {
  findSecThirdCategory,
  findFirstCategory
} from '../modules/category/dao/categoryDao'
import ResResult from '../common/resResult'

@Controller('category')
class CategoryController {
  @Get('/findSecAndThird/:firstctgyId')
  async findSecAndThird(ctx: Context) {
    const { firstctgyId } = ctx.params

    const res = await findSecThirdCategory(firstctgyId)
    ctx.body = ResResult.success(res)
  }

  @Get('/findFirstCategory')
  async findFirstCategory(ctx: Context) {
    const res = await findFirstCategory()
    console.log(res)
    ctx.body = ResResult.success(res)
  }
}

export default CategoryController
