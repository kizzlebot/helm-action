# Helm Action

```
      - name: Test custom action
        uses: kizzlebot/helm-action@master
        with:
          chart-name: enotarylog-fe
          chart-path: ./charts/enotarylog-fe
          chart-url: https://enotarylog-charts.storage.googleapis.com/
          bucket-url: gs://enotarylog-charts
```