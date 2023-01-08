import dbConfig from '../config/dbConfig'
import { Dialect } from 'sequelize'
import { Sequelize } from 'sequelize-typescript'
import * as path from 'path'

class BaseDao {
  static baseDao: BaseDao = new BaseDao()
  sequelize!: Sequelize

  constructor() {
    this.initSqlConfig('mysql')
  }

  initSqlConfig(dialect: Dialect) {
    const { host, user, password, port, database } = dbConfig.getConfig()
    this.sequelize = new Sequelize(database, user, password, {
      host,
      port,
      dialect,
      define: {
        timestamps: false,
        freezeTableName: true
      }
      // pool: {
      //   max: 10,
      //   min: 5,
      //   idle: 10000,
      //   acquire: 1000
      // }
    })
  }

  addModules() {
    const modulesPath = path.join(process.cwd(), '/src/modules/decorModel')
    this.sequelize.addModels([modulesPath])
  }
}

const baseDao = BaseDao.baseDao
baseDao.addModules()

export const { sequelize } = baseDao
