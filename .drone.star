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
                "cpu": 50,
                "memory": "50Mib"
            },
            "limits": {
                "cpu": 100,
                "memory": "300Mib"
            }
        },
        "commands": [
            "sleep 300"
        ]
      },
      {
        "name": "stage-3",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 100,
                "memory": "200Mib"
            },
            "limits": {
                "cpu": 300,
                "memory": "500Mib"
            }
        },
        "commands": [
            "sleep 300"
        ]
      }
    ]
  }