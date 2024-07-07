FROM php:8.0-apache

# กำหนดค่าไดเรกทอรีสำหรับรันเว็บไซต์
WORKDIR /var/www/html

# คัดลอกไฟล์โค้ดแอปพลิเคชัน PHP ไปยังไดเรกทอรีที่กำหนด
COPY . .

# ติดตั้ง dependencies ที่จำเป็น
RUN apt-get update && apt-get install -y libpq-dev

# ติดตั้ง PHP extension เพิ่มเติม (ถ้าจำเป็น)
RUN docker-php-ext-install mysqli

# เปิดใช้งาน PHP extension เพิ่มเติม (ถ้าจำเป็น)
RUN docker-php-ext-enable mysqli

# กำหนดค่า Apache
RUN a2enmod rewrite

# เริ่ม Apache
CMD ["apache2-foreground"]
