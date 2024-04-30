import 'package:flutter_dotenv/flutter_dotenv.dart';
enum EnvTypeEnum{development ,production }
          class EnvVariable {
        EnvVariable._();
static     final EnvVariable instance = EnvVariable._();
        String _envType = "";

                    Future<void>init({required EnvTypeEnum envTypeEnum, required envType})async{
                      switch (envTypeEnum){
                        case EnvTypeEnum.development:
                          await dotenv.load(fileName: ".env.dev");
                        case EnvTypeEnum.production:
                          await dotenv.load(fileName: ".env.prod");
                      }
                      _envType = dotenv.get("ENV_TYPE");
                    }
               bool get debug =>_envType=="dev";
          }