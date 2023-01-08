import Koa from 'koa'
import loadAllRoutes from './router/loadAllRoutes'
import dbConfig from './config/dbConfig'
import ControllerRouter from './common/ControllerRouter'

dbConfig.getConfig()

const app = new Koa()

loadAllRoutes.init(app)

ControllerRouter.controllerRouter.init(app)
