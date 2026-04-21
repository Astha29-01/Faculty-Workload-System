from pyspark.sql import SparkSession
from pyspark.sql.functions import col

# Create Spark session
spark = SparkSession.builder \
    .appName("KafkaSparkStreaming") \
    .getOrCreate()

spark.sparkContext.setLogLevel("ERROR")

# Read stream from Kafka
df = spark.readStream \
    .format("kafka") \
    .option("kafka.bootstrap.servers", "localhost:9092") \
    .option("subscribe", "multi-topic") \
    .option("startingOffsets", "latest") \
    .load()

# Convert binary to string
messages = df.selectExpr("CAST(value AS STRING)")

# Write to console (NO checkpoint)
query = messages.writeStream \
    .format("console") \
    .outputMode("append") \
    .start()

query.awaitTermination()