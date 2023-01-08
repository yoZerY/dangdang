import axios from 'axios'
import type {
  AxiosInstance,
  AxiosRequestConfig,
  AxiosResponse,
  AxiosPromise
} from 'axios'

type TMethodType = 'get' | 'post' | 'put' | 'delete'
const methodType: TMethodType[] = ['get', 'post', 'put', 'delete']
type ReqFn = (url: string, data?: any) => AxiosPromise<any>

interface IRequest {
  get: ReqFn
  post: ReqFn
  put: ReqFn
  delete: ReqFn
}

class Http {
  static http = new Http()
  axiosInstance!: AxiosInstance
  request: IRequest = {
    get: (): any => {},
    post: (): any => {},
    put: (): any => {},
    delete: (): any => {}
  }

  constructor() {
    this.axiosInstance = axios.create({
      timeout: 5000,
      baseURL: import.meta.env.VITE_BASE_URL
    })
    this.requestInstance()
    this.responseInstance()
    this.reqPrepare()
  }

  // 请求拦截器
  requestInstance() {
    this.axiosInstance.interceptors.request.use((req) => {
      return req
    })
  }

  // 响应拦截器
  responseInstance() {
    this.axiosInstance.interceptors.response.use((response: AxiosResponse) => {
      return response.data
    })
  }

  // 发送请求给服务器
  sendRequest(options: AxiosRequestConfig) {
    return this.axiosInstance(options)
  }

  // 完成请求 自动提示
  reqPrepare() {
    methodType.forEach((item) => {
      this.request[item] = (url: string, data: any) => {
        return this.sendRequest({
          url,
          data
        })
      }
    })
  }
}

export default Http.http.request
