# Russian-Wine-Promotion

## Table of Contents

- [Project Overview](#project-overview)
- [Data source](#data-source)
- [Recommendation](#recommendation)


### Project Overview
  
A retail chain across Russia recently ran a successful wine promotion in Saint Petersburg. The goal is to identify 10 other regions with similar wine-buying habits to ensure a successful nationwide rollout.

![Screenshot 2025-04-04 233937](https://github.com/user-attachments/assets/ac60d595-7f6b-4297-a4cd-7df66773558a)
![2025-04-04 234026](https://github.com/user-attachments/assets/94772a98-1c27-4ceb-bd1b-d309bb031786)


### Data source

Russian-Wine-Promotion Data: The primary dataset used for the this analysis was gotten form the link https://herdataproject.gumroad.com/l/drinks-promotion.

### Tools

- SQL server management studio - Used for data standerdization
- Power BI - for visualization

### Data transformation
The CSV file was imported into SQL server management studio. SQL qeuries were used to answer the following questions:

1. Identify 10 Similar Regions to Saint Petersburg. This was doen using the euclidean_distance.
2. Total Quantity Sold by each region for each Beverage.
3. Average Wine Consumption by region.

 Visualization with Power BI

1. Clustered bar chart and map (Top 10 regions)
2. Line and stacked column Chart (St. Petersburg alcohol trend)
3. Table (Total wine quantity by regions)
4. Pie chart (Total alcohol sold by region)

### Results/Findings

The following regions have similar wine consumtion trend as St. Ptersburg with year on year growth trend:
1. Penza Oblast
2. Magadan Oblast
3. Ivanovo Oblast
4. Tomsk Oblast
5. Krasnodor Oblast
6. Yaroslavl Oblast
7. Zabaykalzky
8. Tver Oblast
9. Cheliabinsk Oblast

### Recommendation: 
1. Launch the wine promotion in the 10 regions most similar to Saint Petersburg in terms of wine consumption. These regions show a strong existing preference for wine and similar patterns in other alcohol types, making them highly likely to respond positively to the same marketing approach.
2. Customize Marketing Messages Based on Regional Preferences.Although these regions are similar to Saint Petersburg in wine consumption, tweak marketing messages to reflect regional nuances e.g For regions with lower beer or vodka interest, highlight wine as a lifestyle alternative.
3. Track feedback during rollout




