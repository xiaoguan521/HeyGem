import axios from 'axios'

const instance = axios.create({
  timeout: 180000
})

instance.interceptors.response.use(function (response) {
  return response.data
})

export default instance
