import { DataTypes } from 'sequelize'
import { sequelize } from '../../baseDao'

class ThirdCategoryModel {
  static createModel() {
    const model = sequelize.define('thirdctgy', {
      thirdctgyId: {
        type: DataTypes.TINYINT,
        field: 'thirdctgyId',
        primaryKey: true,
        autoIncrement: true
      },
      thirdctgyname: {
        type: DataTypes.STRING,
        field: 'thirdctgyname'
      },
      secctgyId: {
        type: DataTypes.TINYINT,
        field: 'secctgyId'
      }
    })
    model.sync({ force: false })
    return model
  }
}
export const thirdCategoryModel = ThirdCategoryModel.createModel()
