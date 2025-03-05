

export default {
  name: 'app',


  async minimize(app) {
    app.mainWindow.minimize()
  },
  async maximize(app) {
    if (app.mainWindow.isMaximized()) {
      app.mainWindow.restore()
    } else {
      app.mainWindow.maximize()
    }
  },
  async close(app) {
    app.mainWindow.close()
  },

  isMaximized(app) {
    return app.mainWindow.isMaximized()
  }

}
