  return {
    name = "shivrsdev/rocketdb",
    version = "1.0.0",
    description = "Rocket fast in-memory redis database.",
    tags = { "rocketdb", "lua" },
    license = "MIT",
    author = { name = "shivrsdev", email = "shiv.rs.dev@gmail.com" },
    homepage = "https://github.com/shivrsdev/rocketdb",
    dependencies = {
      "creationix/weblit"
    },
    files = {
      "**.lua",
      "!test*"
    }
  }
  