# Nginx tabanlı lightweight container
FROM nginx:alpine

# Curl'u install et (healthcheck için gerekli)
RUN apk add --no-cache curl

# HTML dosyasını nginx'in serve directory'sine kopyala
COPY btc_futures_signals.html /usr/share/nginx/html/index.html

# Nginx konfigürasyonu (CORS için)
COPY nginx.conf /etc/nginx/nginx.conf

# Port açık
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"]