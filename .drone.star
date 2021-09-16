def main(ctx):
  return {
    "name": "build",
    "kind": "pipeline",
    "type": "kubernetes",
    "steps": [
      {
        # Step 1, no resource requests or limits defined
        "name": "stage-1",
        "image": "alpine",
        "commands": [
            "sleep 60"
        ]
      },
      {
        # Step 2, requests are lower than a MIN request amount
        "name": "stage-2",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 1000,
                "memory": "200Mib"
            },
            "limits": {
                "cpu": 1007,
                "memory": "207Mib"
            }
        },
        "commands": [
            "sleep 60"
        ]
      }
    ]
  }
