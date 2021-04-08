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
            "sleep 120"
        ]
      },
      {
        # Step 2, requests are lower than a MIN request amount
        "name": "stage-2",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 0.5,
                "memory": "3Mib"
            },
            "limits": {
                "cpu": 1,
                "memory": "10Mib"
            }
        },
        "commands": [
            "sleep 120"
        ]
      },
      {
        # Step 3, requests are higher than the MIN request but lower than "Stage" level Requests
        "name": "stage-3",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 10,
                "memory": "10Mib"
            },
            "limits": {
                "cpu": 20,
                "memory": "20Mib"
            }
        },
        "commands": [
            "sleep 120"
        ]
      },
      {
        # Step 4, requests are higher than both MIN and "Stage" level request
        "name": "stage-4",
        "image": "alpine",
        "resources": {
            "requests": {
                "cpu": 200,
                "memory": "200Mib"
            },
            "limits": {
                "cpu": 400,
                "memory": "400Mib"
            }
        },
        "commands": [
            "sleep 120"
        ]
      }
    ]
  }
