import 'reflect-metadata'
import ControllerRouter from '../common/ControllerRouter'
type TMethodType = 'get' | 'post' | 'put' | 'delete'

export function Controller(path: string = '/') {
  function getFullPath(modulePath: string, reqPath: string) {
    if (modulePath.length > 1) {
      if (!modulePath.startsWith('/')) {
        modulePath = `/${modulePath}`
      }
    } else if (modulePath === '/') {
      modulePath = ''
    }
    let fullPath = `${path}${reqPath}`
    if (!fullPath.startsWith('/')) {
      fullPath = `/${fullPath}`
    }
    return fullPath
  }

  return function (targetClass: { new (...args: any): any }) {
    Object.getOwnPropertyNames(targetClass.prototype).forEach((method) => {
      const routerMethodFn = targetClass.prototype[method]
      const reqPath = Reflect.getMetadata('path', targetClass.prototype, method)
      const methodType: TMethodType = Reflect.getMetadata(
        'methodType',
        targetClass.prototype,
        method
      )

      if (reqPath && methodType) {
        const fullPath = getFullPath(path, reqPath)
        const rootRouter = ControllerRouter.controllerRouter.router
        rootRouter[methodType](fullPath, routerMethodFn)
      }
    })
  }
}

export function reqProcess(methodType: string) {
  return function (reqPath: string) {
    return function (
      targetClass: any,
      methodName: string,
      descriptor: PropertyDescriptor
    ) {
      Reflect.defineMetadata('path', reqPath, targetClass, methodName)
      Reflect.defineMetadata('methodType', methodType, targetClass, methodName)
    }
  }
}

const Get = reqProcess('get')
const Post = reqProcess('post')
const Put = reqProcess('put')
const Delete = reqProcess('delete')

export { Get, Post, Put, Delete }
