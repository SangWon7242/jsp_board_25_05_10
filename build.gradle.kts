plugins {
    id("java")
    id("war")  // WAR 플러그인 추가
}

group = "com.sbs.java.jsp.board"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    // https://mvnrepository.com/artifact/jakarta.servlet/jakarta.servlet-api
    compileOnly("jakarta.servlet:jakarta.servlet-api:6.1.0")

    // https://mvnrepository.com/artifact/org.projectlombok/lombok
    compileOnly("org.projectlombok:lombok:1.18.36")
    annotationProcessor("org.projectlombok:lombok:1.18.36")

    // JSTL 의존성 추가
    implementation("jakarta.servlet.jsp.jstl:jakarta.servlet.jsp.jstl-api:3.0.0")
    implementation("org.glassfish.web:jakarta.servlet.jsp.jstl:3.0.1")

    // JSP API 의존성 추가
    compileOnly("jakarta.servlet.jsp:jakarta.servlet.jsp-api:3.1.1")
}

tasks.war {
    webAppDirectory.set(file("src/main/webapp"))
}

tasks.test {
    useJUnitPlatform()
}