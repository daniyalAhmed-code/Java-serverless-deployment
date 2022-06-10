## AWS Lambda Layer
Using Lambda Layers we can easily seprate the dependencies and by doing this we can benifit from re-usability. That means the library would be shared among many functions without bothering the each and individual function to deploy with all it's dependencies.

** Packaging though maven

- mvn clean package

There are two main jobs of maven while packaging buid

(1)To copy all the dependencies inside "target/java/lib" folder

(2)To set the classpath to "java/lib"

-target

      --java
      
      --layer-demo-1.0.0.jar

You will use "target/java" folder as a zip to upload it as Lambda Layer code.

The jar inside target folder will be used as function code which will use the  Layer(dependencies)

Know more about AWS Lambda Layer feture https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html
