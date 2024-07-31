# Google News Crawler for AWS LAMBDA

Proje açıklaması: Bu proje, çeşitli haber kategorilerini ve haber başlıklarını belirli bir kaynaktan çekmek, bu verileri CSV dosyaları olarak kaydetmek ve daha sonra JSON formatına dönüştürmek için bir web kazıma uygulaması içerir. Ayrıca, verileri Amazon S3'e yüklemek için de işlevsellik sağlar. 

## Kurulum ve Çalıştırma

### Gereksinimler
* Docker
* Python 3.x
* pip 

### Kurulum
1. Gerekli Python bağımlılıklarını yükleyin:
```
pip install -r requirements.txt
```

2. Docker kullanarak bir konteyner oluşturun ve çalıştırın:

```
docker build -t proje-adi .
docker run -it --rm proje-adi
```

### Kullanım
`src/main.py` dosyasını çalıştırarak web kazıma işlemini başlatabilirsiniz. Program, Google News'tan haber başlıklarını ve diğer bilgileri çeker, bunları CSV dosyalarına yazar ve ardından JSON formatına dönüştürür. Son olarak, verileri Amazon S3'e yükler.

```
python src/main.py
```
`src/main.py` dosyasındaki handler fonksiyonu, AWS Lambda fonksiyonunu çalıştırmak içindir. 

Çekilen veriler `/tmp/docs/` klasörüne kaydedilir ve Amazon S3'e yüklenir.

Lisans
Bu proje MIT Lisansı altında lisanslanmıştır - daha fazla bilgi için `LICENSE` dosyasına bakınız.