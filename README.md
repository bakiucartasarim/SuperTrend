# BTC Futures - Canlı SuperTrend Sinyalleri 

Bitcoin futures için canlı SuperTrend sinyal sistemi. 1H ve 15M timeframe'lerinde analiz yaparak alım/satım sinyalleri üretir.

## 🚀 Özellikler

- **📊 Canlı Bitcoin Grafiği** - Chart.js ile real-time grafik
- **📈 SuperTrend İndikatörü** - 1H ve 15M hesaplamaları
- **🚨 Otomatik Sinyal Sistemi** - ALIM/SATIM sinyalleri
- **⚡ WebSocket Bağlantısı** - Binance canlı veri akışı
- **📱 Responsive Tasarım** - Mobil uyumlu arayüz
- **🌙 Dark Tema** - Göz yormayan karanlık tema

## 🛠️ Teknolojiler

- HTML5 + CSS3 + JavaScript (Vanilla)
- Chart.js - Grafik kütüphanesi
- Binance WebSocket API - Canlı veri
- Nginx - Web sunucusu
- Docker - Konteynerizasyon

## 📋 Dosya Yapısı

```
btc-futures-signals/
├── btc_futures_signals.html  # Ana HTML dosyası
├── Dockerfile                # Docker imaj tanımı
├── docker-compose.yml        # Docker Compose konfigürasyonu
├── nginx.conf                # Nginx server konfigürasyonu
├── .dockerignore            # Docker ignore dosyası
└── README.md                # Bu dosya
```

## 🚀 Coolify ile Deployment

### Ön Gereksinimler
- Coolify sunucusu kurulu olmalı
- Git repository'si hazır olmalı
- Domain veya subdomain

### Adım 1: Repository Hazırlama

```bash
# Git repository oluştur
git init
git add .
git commit -m "Initial commit: BTC Futures Signals Dashboard"
git remote add origin <your-git-repo-url>
git push -u origin main
```

### Adım 2: Coolify'da Uygulama Oluşturma

1. **Coolify Dashboard**'a giriş yapın
2. **"New Resource"** → **"Application"** seçin
3. **Repository** bilgilerini girin:
   - Repository URL: `https://github.com/username/btc-futures-signals`
   - Branch: `main`
   - Build Pack: `Docker`

### Adım 3: Uygulama Ayarları

**Build Settings:**
- Build Command: `docker build -t btc-signals .`
- Start Command: `docker-compose up -d`
- Port: `80`

**Environment Variables:**
```
NGINX_HOST=your-domain.com
NGINX_PORT=80
```

**Domain Settings:**
- Domain: `btc-signals.your-domain.com`
- SSL: Otomatik (Let's Encrypt)

### Adım 4: Deployment

1. **"Deploy"** butonuna tıklayın
2. Build loglarını kontrol edin
3. Deployment tamamlandığında URL'ye gidin

## 🔧 Lokal Geliştirme

### Docker ile Çalıştırma

```bash
# Projeyi clone edin
git clone <your-repo-url>
cd btc-futures-signals

# Docker container'ı başlatın
docker-compose up -d

# Tarayıcıda açın
open http://localhost
```

### Manuel Çalıştırma

```bash
# Basit HTTP sunucu ile
python -m http.server 8000
# veya
npx serve .

# Tarayıcıda açın
open http://localhost:8000/btc_futures_signals.html
```

## 📊 Sinyal Açıklamaları

### Normal Sinyaller
- **📈 ALIM** - 15M SuperTrend yukarı döndü
- **📉 SATIM** - 15M SuperTrend aşağı döndü

### Güçlü Sinyaller
- **🚀 GÜÇLÜ ALIM** - Her iki timeframe da bullish
- **💥 GÜÇLÜ SATIM** - Her iki timeframe da bearish

### SuperTrend Parametreleri
- ATR Periyodu: 10
- Multiplier: 3.0
- Timeframe'ler: 1H, 15M

## 🔍 Monitoring

### Health Check
- URL: `http://your-domain.com/health`
- Response: `healthy`

### Loglar
```bash
# Container loglarını görüntüle
docker-compose logs -f btc-signals

# Nginx access logları
docker exec btc-futures-signals tail -f /var/log/nginx/access.log

# Nginx error logları  
docker exec btc-futures-signals tail -f /var/log/nginx/error.log
```

## 🛡️ Güvenlik

- **CORS Headers** - Cross-origin istekler için
- **Security Headers** - XSS, clickjacking koruması
- **Content Security Policy** - Script injection koruması
- **HTTPS** - SSL/TLS şifreleme (Coolify otomatik)

## 🐛 Troubleshooting

### Grafik Gelmiyor
- Browser Console'da hata kontrol edin
- WebSocket bağlantısını kontrol edin
- Chart.js CDN erişimini kontrol edin

### Sinyal Gelmiyor
- Binance WebSocket bağlantısını kontrol edin
- SuperTrend hesaplama fonksiyonlarını kontrol edin
- Browser Network tab'ında veri akışını kontrol edin

### Docker Build Hatası
```bash
# Cache'i temizleyin
docker system prune -a

# Tekrar build edin
docker-compose build --no-cache
docker-compose up -d
```

## 📝 Lisans

Bu proje MIT lisansı altında lisanslanmıştır.

## ⚠️ Disclaimer

Bu uygulama yalnızca eğitim ve bilgilendirme amaçlıdır. Finansal tavsiye niteliği taşımaz. Yatırım kararlarınızı kendi sorumluluğunuzda alın.

## 🤝 Katkıda Bulunma

1. Fork edin
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Commit edin (`git commit -m 'Add amazing feature'`)
4. Branch'i push edin (`git push origin feature/amazing-feature`)
5. Pull Request açın

## 📞 İletişim

Sorularınız için issue açabilir veya iletişime geçebilirsiniz.