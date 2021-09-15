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
                "cpu": 1,
                "memory": "15Mib"
            },
            "limits": {
                "cpu": 2,
                "memory": "15Mib"
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
                "cpu": 13,
                "memory": "42Mib"
            },
            "limits": {
                "cpu": 205,
                "memory": "125Mib"
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
                "cpu": 265,
                "memory": "265Mib"
            },
            "limits": {
                "cpu": 300,
                "memory": "300Mib"
            }
        },
        "commands": [
            "sleep 60"
        ]
      }
    ]
  }
