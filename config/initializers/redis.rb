redis_url = ENV["REDIS_URL"].presence || "redis://localhost:6379"
$redis = Redis.new(url: redis_url)
