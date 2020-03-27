# Github Actions x LaMetric

![lametric](https://github.com/pgrimaud/action-lametric/workflows/lametric/badge.svg?branch=master)

Send notification to your LaMetric using Github Actions

![Demo of action](https://user-images.githubusercontent.com/1866496/77781464-e7b2b080-7055-11ea-9c23-d627ea7a8fbc.gif)

## Usage

To use the action simply add the following lines to your workflow.yml file.

```yaml
...
  steps:
      - uses: actions/checkout@v2
      - uses: pgrimaud/action-lametric@v1
        env:
            LAMETRIC_ACCESS_TOKEN: ${{ secrets.LAMETRIC_ACCESS_TOKEN }}
            LAMETRIC_PUSH_URL: ${{ secrets.LAMETRIC_PUSH_URL }}
            NOTIFICATION_TEXT: ${{ secrets.NOTIFICATION_TEXT }} # optional
            NOTIFICATION_ICON: ${{ secrets.NOTIFICATION_ICON }} # optional
```

## LaMetric configuration

1 - Create a LaMetric developer account here : https://developer.lametric.com/

2 - Create a new **INDICATOR APP**

![LaMetric Indicator App](https://user-images.githubusercontent.com/1866496/77777070-488aba80-704f-11ea-812d-53f3233c441e.png)

3 - Select a default icon and default name 

4 - Set communication type to **Push**

![Communication type](https://user-images.githubusercontent.com/1866496/77777291-a7503400-704f-11ea-8cb5-96cdf607c0d2.png)

5 - Click on bottom button **Next**

6 - Fill the form.

**!!!IMPORTANT!!! : Set App visibility to PRIVATE**

![image](https://user-images.githubusercontent.com/1866496/77777616-1af24100-7050-11ea-9e19-0c3db2f077a9.png)

7 - Save and publish app

8 - Get **Push URL** from LaMetric App and set it to secret var `LAMETRIC_PUSH_URL` in your repository

9 - Get **Access token** from LaMetric App and set it to secret var `LAMETRIC_ACCESS_TOKEN` in your repository

10 - Download App on your LaMetric

11 - Done! 

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
