import { DataTypes } from 'sequelize'
import { sequelize } from '../../baseDao'

class UserInfo {
  static createModel() {
    const model = sequelize.define('userinfo', {
      userid: {
        type: DataTypes.INTEGER,
        field: 'userid',
        primaryKey: true,
        autoIncrement: true
      },
      username: {
        type: DataTypes.STRING,
        field: 'username',
        allowNull: false
      },
      psw: {
        type: DataTypes.STRING,
        field: 'psw',
        allowNull: false
      },
      address: {
        type: DataTypes.STRING,
        field: 'address'
      },
      valid: {
        type: DataTypes.TINYINT,
        field: 'valid'
      }
    })
    model.sync({ force: false })
    return model
  }
}
export const model = UserInfo.createModel()
