def main(ctx):
  return {
    "name": "build",
    "kind": "pipeline",
    "type": "kubernetes",
    "steps": [
      {
        # Step 2, requests are lower than a MIN request amount
        "name": "stage-2",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 1000,
                "memory": "2000Mib"
            },
            "limits": {
                "cpu": 1000,
                "memory": "2000Mib"
            }
        },
        "commands": [
            "sleep 60"
        ]
      }
    ]
  }
