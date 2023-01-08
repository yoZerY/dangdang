import { DataTypes } from 'sequelize'
import { sequelize } from '../../baseDao'

class SecondCategoryModel {
  static createModel() {
    const model = sequelize.define('secondctgy', {
      secondctgyId: {
        type: DataTypes.TINYINT,
        field: 'secondctgyId',
        primaryKey: true,
        autoIncrement: true
      },
      secctgyname: {
        type: DataTypes.STRING,
        field: 'secctgyname'
      },
      firstctgyId: {
        type: DataTypes.TINYINT,
        field: 'firstctgyId'
      }
    })
    model.sync({ force: false })
    return model
  }
}
export const secondCategoryModel = SecondCategoryModel.createModel()
