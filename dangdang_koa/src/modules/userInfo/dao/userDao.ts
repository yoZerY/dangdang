import { Op } from 'sequelize'
import { model } from '../model/userModel'

type UserInfoType = {
  userid: number
  username: string
  psw: string
  address: string
  valid: number
}

class UserDao {
  static addUser(userInfo: UserInfoType) {
    return model.create(userInfo)
  }

  static findAllUser() {
    return model.findAll({})
  }

  static findUser() {
    return model.findAll({
      attributes: ['username', 'psw'] //查询指定字段
    })
  }

  static findByUserNameAndPwd(username: string, psw: string) {
    return model.findOne({
      raw: true,
      where: {
        [Op.and]: [{ username }, { psw }]
      }
    })
  }

  static findByLike(username: string) {
    return model.findAll({
      raw: true,
      where: {
        username: {
          [Op.like]: `%${username}%`
        }
      }
    })
  }

  static count() {
    return model.findAll({})
  }
}

export const {
  addUser,
  findAllUser,
  findUser,
  findByUserNameAndPwd,
  findByLike
} = UserDao
