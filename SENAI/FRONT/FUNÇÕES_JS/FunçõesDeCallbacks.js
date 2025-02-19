function executarCallback(callback){
    callback()
}
executarCallback(()=> {console.log('Callback Executado')})