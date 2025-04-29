# Sử dụng image nginx để chạy static website
FROM nginx:alpine

# Xóa cấu hình mặc định của nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy file HTML vào nginx html folder
COPY . /usr/share/nginx/html

# Mặc định nginx chạy cổng 80
EXPOSE 80
