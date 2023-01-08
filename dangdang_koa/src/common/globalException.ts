import Koa, { Context } from 'koa'
import ResResult from './resResult'

const globalException = async (ctx: Context, next: Koa.Next) => {
  try {
    await next()
  } catch (error: any) {
    ctx.body = ResResult.fail(`服务器异常:${error}`)
  }
}

export default globalException
