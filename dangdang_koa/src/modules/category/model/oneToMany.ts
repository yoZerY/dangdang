import { secondCategoryModel } from './secondCategoryModel'
import { thirdCategoryModel } from './thirdCategoryModel'

//二级查找三级 onetomany
secondCategoryModel.hasMany(thirdCategoryModel, {
  as: 'thirdCategory',
  foreignKey: 'secctgyId'
})

//manytoone s三 --> 二
thirdCategoryModel.belongsTo(secondCategoryModel, {
  foreignKey: 'secctgyId',
  targetKey: 'secondctgyId'
})

export default async function findSecondByFirstId(firstctgyId: number) {
  return await secondCategoryModel.findAll({
    where: {
      firstctgyId
    },
    include: [
      {
        model: thirdCategoryModel,
        as: 'thirdCategory'
      }
    ]
  })
}
