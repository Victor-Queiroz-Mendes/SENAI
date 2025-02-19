void main(){
  executarCallback(Function callback){
    callback();
  }
  executarCallback(()=> print('HelloWord'));
  }