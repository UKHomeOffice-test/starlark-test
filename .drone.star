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
                "cpu": 0.9,
                "memory": "3Mib"
            },
            "limits": {
                "cpu": 1,
                "memory": "10Mib"
            }
        },
        "commands": [
            "sleep 60"
        ]
      },
      {
        # Step 3, requests are higher than the MIN request but lower than "Stage" level Requests
        "name": "stage-3",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 3,
                "memory": "6Mib"
            },
            "limits": {
                "cpu": 6,
                "memory": "12Mib"
            }
        },
        "commands": [
            "sleep 60"
        ]
      },
      {
        # Step 4, requests are higher than both MIN and "Stage" level request
        "name": "stage-4",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 4,
                "memory": "20Mib"
            },
            "limits": {
                "cpu": 8,
                "memory": "40Mib"
            }
        },
        "commands": [
            "sleep 60"
        ]
      }
    ]
  }
  