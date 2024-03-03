import { defineStore } from 'pinia'

export const useClientStore = defineStore('clientStore', {
  state: () => {
    return {
      clientId: parseInt(localStorage.getItem('clientId') || 0),
      clientName: localStorage.getItem('clientName') || ""
    }
  },
  actions: {
    setClient(id)
 {
      //setarea unui anumit client
      this.clientId = Number(id)


      localStorage.setItem('clientId', this.clientId.toString())
    },
    setClientName(name) {
      //setarea numelui clientului
      this.clientName = String(name)

      localStorage.setItem('clientName', this.clientName.toString())
    },
  }
})