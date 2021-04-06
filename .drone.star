def main(ctx):
  return {
    "name": "build",
    "kind": "pipeline",
    "type": "kubernetes",
    "steps": [
      {
        "name": "stage-1",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 10,
                "memory": "20Mib"
            },
            "limits": {
                "cpu": 50,
                "memory": "100Mib"
            }
        },
        "commands": [
            "sleep 300"
        ]
      },
      {
        "name": "stage-2",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 10,
                "memory": "20Mib"
            },
            "limits": {
                "cpu": 50,
                "memory": "100Mib"
            }
        },
        "commands": [
            "sleep 300"
        ]
      },
      {
        "name": "stage-3",
        "image": "alpine",
        "commands": [
            "sleep 300"
        ]
      }
    ]
  }
