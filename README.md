
# Passworld App

Passworld uygulaması şifrelerinizi güvenle saklamanızı sağlar.

### UI Design

https://www.figma.com/file/ElDShcsEaiPznbH6hkgMcL/OnePass%3A-A-password-manager-UI-Kit-(Community)?node-id=0%3A1&t=XEYGrXt5Bhyr9lY1-0

## Kullanılan Teknolojiler

**İstemci:** Swift

**Sunucu:** NodeJS, ExpressJS

  
## Sunucu Ortam Değişkenleri

Bu projeyi çalıştırmak için aşağıdaki ortam değişkenlerini .env dosyanıza eklemeniz gerekecek

```bash
HOST=0.0.0.0
PORT=1337
APP_KEYS=IUVVCssZvAhKpkNhsRGzUA==,CU/iCxAAnnAMsb9ydoTgqQ==,FByyU9A1icA/8CdpBPOlRA==,+0Edum9dMF+UqV4MY0Jt4w==
API_TOKEN_SALT=AEL2N8hDHzJgykf9cmVz3A==
ADMIN_JWT_SECRET=zpgEFuFhC49nHDn0UUlpsg==
JWT_SECRET=V2ALCgOHRdItVqLYmF7U0A==
```
## API Kullanımı

### Bilgisayarınızda Çalıştırın

Projeyi klonlayın

```bash
  git clone https://github.com/Protein-Swift-Bootcamp/week-4-homework-2-mchtter.git
```

Proje dizinine gidin

```bash
  cd week-4-homework-2-mchtter/server
```

Gerekli paketleri yükleyin

```bash
  npm install
```

Sunucuyu çalıştırın

```bash
  npm run start
```

#### Tüm öğeleri getir

```http
  GET /api/passwords
```

| Parametre | Tip     | Açıklama                |
| :-------- | :------- | :------------------------- |
| `API_TOKEN` | `string` | **Gerekli**. API anahtarınız. |
| `API_URL` | `string` | **Gerekli**. API URL adresiniz. |

#### Öğeyi getir

```http
  GET /api/passwords/${id}
```

| Parametre | Tip     | Açıklama                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Gerekli**. Çağrılacak öğenin anahtar değeri |
  
## Ekran Görüntüleri

![Uygulama Ekran Görüntüsü](https://i.hizliresim.com/346ilgp.png)

## Yazarlar ve Teşekkür

- [@patikadev](https://www.patika.dev) ekibine teşekkürler.

  
## Lisans

[MIT](https://choosealicense.com/licenses/mit/)

  
