def main(ctx):
  return {
    "name": "build",
    "kind": "pipeline",
    "type": "kubernetes",
    "steps": [
      {
        "name": "build",
        "image": "alpine",
        "commands": [
            "exit 1"
        ]
      }
    ]
  }
