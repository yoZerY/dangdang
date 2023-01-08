import { DataTypes } from 'sequelize'
import { sequelize } from '../../baseDao'

class FirstCategoryModel {
  static createModel() {
    const model = sequelize.define('firstctgy', {
      firstCtgyId: {
        type: DataTypes.TINYINT,
        field: 'firstCtgyId',
        primaryKey: true,
        autoIncrement: true
      },
      firstctgyname: {
        type: DataTypes.STRING,
        field: 'firstctgyname'
      }
    })
    model.sync({ force: false })
    return model
  }
}
export const firstCategoryModel = FirstCategoryModel.createModel()
