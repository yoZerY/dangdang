interface IDbConfig {
  host: string
  user: string
  password: string
  port: number
  database: string
}

interface IEnvConfig {
  development: IDbConfig
  production: IDbConfig
}

function isString(data: any): data is string {
  return typeof data === 'string'
}

class DbConfig {
  static dbConfig: DbConfig = new DbConfig()
  env!: keyof IEnvConfig
  envConfig!: IEnvConfig

  constructor() {
    this.env =
      process.env.NODE_ENV === 'development' ? 'development' : 'production'
    this.initConfig()
  }

  initConfig() {
    this.envConfig = {
      development: {
        host: 'localhost',
        user: 'root',
        password: 'root',
        port: 3306,
        database: 'dangdang'
      },
      production: {
        host: 'localhost',
        user: 'root',
        password: 'root',
        port: 3306,
        database: 'dangdang'
      }
    }
  }

  isDbConfigKeys(key: any): key is keyof IDbConfig {
    return (
      key === 'host' ||
      key === 'user' ||
      key === 'password' ||
      key === 'port' ||
      key === 'database'
    )
  }

  getConfig(): IDbConfig
  getConfig(key: string): string
  getConfig(key: string = ''): any {
    if (this.isDbConfigKeys(key) && key.length > 0) {
      return this.envConfig[this.env][key]
    } else {
      return this.envConfig[this.env]
    }
  }
}

export default DbConfig.dbConfig
