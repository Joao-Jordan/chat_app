# Chat - App

Este aplicativo faz a requisição de gifs da api do Giphy e disponibiliza em sua Home os gifs mais populares da semana. Além disso, possui uma barra de pesquisa, por onde pode-se procurar por gifs de acordo com a palavra chave fornecida. O aplicativo conta também com a função de compartilhamento.

## Sobre
Este aplicativo utiliza como banco de dados o firebase, que recebe os dados (mensagens e fotos) e autentica os usuários. O banco foi criado com apenas um tipo de 'documento', este que recebe os dados do usuário que enviou, sendos eles: 

- imgUrl -> Url da imagem, caso uma tenha sido enviada.
- senderName -> Nome do usuário que enviou. Este também é o nome mostrado sob a mensagem dentro do app.
- senderPhotoUrl -> Imagem do usuário que enviou a mensagem.
- time -> Hora que o banco recebeu a mensagem
- uid -> Identificação do usuário que enviou a mensagem

Para que possa ser enviada uma menasgem o usuário deve fazer login. O login é feito através de um pop up na tela que redireciona para a pagina de login, dentro do próprio app.
Como as mensagens são passam pelo banco de dados do firebase, pode-se fechar o app e abri-lo novamente que as mensagens serão carregadas, mesmo ele não estando aberto quando as mensagens foram enviadas para o usuário.
## Screenshots

<img src="/screenshots/home.png" alt="home" width="200" height="400"/> <img src="/screenshots/login.png" alt="login" width="200" height="400"/> <img src="/screenshots/msg1.png" alt="msg1" width="200" height="400"/> <img src="/screenshots/camera.png" alt="camera" width="200" height="400"/> <img src="/screenshots/confirmphoto.png" alt="confirmphoto" width="200" height="400"/> <img src="/screenshots/sendphoto.png" alt="sendphoto" width="200" height="400"/> <img src="/screenshots/msg2.png" alt="msg2" width="200" height="400"/> <img src="/screenshots/msg3.png" alt="msg3" width="200" height="400"/> <img src="/screenshots/firebase.PNG" alt="firebase" /> <img src="/screenshots/storage.PNG" alt="storage" /> 
