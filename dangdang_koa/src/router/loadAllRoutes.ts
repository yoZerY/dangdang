import * as path from 'path'
import * as fs from 'fs'
import Koa from 'koa'
import body from 'koa-body'
import json from 'koa-json'
import Router from 'koa-router'
import globalException from '../common/globalException'

class LoadAllRoutes {
  app!: Koa
  rootRouter!: Router
  static loadAllRoutes: LoadAllRoutes = new LoadAllRoutes()
  prot: number = 3000

  init(app: Koa) {
    this.app = app
    //获取一级路由
    this.getRootRouter()
    //全局异常
    this.app.use(globalException)
    //加载所有二级路由
    this.loadSecondRoutes()
    //监听
    this.listen()
  }

  //获取一级路由
  getRootRouter() {
    const rootRouter = new Router()
    rootRouter.prefix('/api')
    this.app.use(json())
    this.app.use(body())
    this.app.use(rootRouter.routes())
    this.rootRouter = rootRouter
  }

  loadSecondRoutes() {
    const dir = path.join(process.cwd(), '/src/router')
    const allFiles = fs.readdirSync(dir)

    // allFullPathArr: router文件夹下所有文件abs路径
    let allFullPathArr: string[] = []
    for (const file of allFiles) {
      const path = dir + '\\' + file
      allFullPathArr.push(path)
    }

    for (const absPath of allFullPathArr) {
      const module = require(absPath) // 路由模块
      if (this.isRouter(module)) {
        this.rootRouter.use(module.routes(), module.allowedMethods())
      }
    }
  }

  //判断是不是路由模块
  isRouter(data: any): data is Router {
    return data instanceof Router
  }

  listen() {
    this.app.listen(this.prot)
    console.log(`server running on port ${this.prot}`)
  }
}

export default LoadAllRoutes.loadAllRoutes
