# Usar la imagen base de OpenJDK 17 con JDK
FROM eclipse-temurin:17-jdk as build

# Instalar Maven
RUN apt-get update && apt-get install -y maven

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo pom.xml y resolver dependencias
COPY pom.xml ./
RUN mvn dependency:resolve

# Copiar el resto de los archivos del proyecto
COPY . ./

# Compilar el proyecto usando Maven
RUN mvn clean package -DskipTests

# Imagen mínima para ejecutar Spring Boot
FROM eclipse-temurin:17-jre

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el JAR generado desde la fase de construcción
COPY --from=build /app/target/backend.seek-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto 8080
EXPOSE 8080

# Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
