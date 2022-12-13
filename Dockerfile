FROM openjdk:11
EXPOSE 8089
COPY ./target/ExamThourayaS2-0.0.1-SNAPSHOT.jar ExamThourayaS2-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","ExamThourayaS2-0.0.1-SNAPSHOT.jar"]

