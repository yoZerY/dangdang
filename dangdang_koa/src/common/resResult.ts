enum Code {
  SUCCESS = 200,
  ERROR = 500
}

class ResResult {
  static success(data: any = undefined, message: any = 'SUCCESS') {
    const code: Code = Code.SUCCESS
    return { data, message, code }
  }

  static fail(message: any = 'ERROR') {
    const code: Code = Code.ERROR
    return { undefined, message, code }
  }
}

export default ResResult
