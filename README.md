# Trip Data Analysis \| Casual vs. Annual Member Riders

> **Project focus:** Understanding bike-share usage patterns and
> identifying evidence-led opportunities to convert casual riders into
> annual members.\
> **Prepared by:** Kunal\
> **Analysis tools:** SQL · Python · Power BI · PowerPoint

------------------------------------------------------------------------

## 1. Project Overview

This project analyses bike-share trip patterns across two rider
segments: **casual riders** and **annual members**. The goal is to
understand how the two groups use the service, identify meaningful
differences in ride behaviour, and translate those findings into
practical marketing recommendations that may help increase annual
memberships.

The analysis brings together SQL-based data work, Python analysis and
visualisation, and a Power BI dashboard. The findings are communicated
through a PowerPoint presentation and a separate professional project
report.

## 2. Business Problem

The bike-share business wants to understand the relationship between
casual and annual-member riders and identify opportunities to encourage
casual riders to become annual members.

### Project objective

Develop a data-informed marketing direction by answering:

-   How do casual and member ride volumes differ across the week?
-   How do ride volumes change month by month?
-   How does average ride duration differ between the two rider groups?
-   What do these patterns suggest about rider needs and potential
    membership opportunities?

## 3. Tools & Technologies

  Tool / Technology      Role in the project
  ---------------------- ---------------------------------------------
  SQL / MySQL            Querying, preparing and analysing trip data
  Python                 Data analysis and supporting calculations
  Pandas                 Data manipulation and aggregation
  Matplotlib             Creating analytical charts
  Power BI               Building an interactive dashboard
  Microsoft PowerPoint   Presenting the analysis and recommendations

## 4. Analytical Workflow

1.  **Data preparation:** Work with the trip dataset and prepare the
    fields required for analysis.
2.  **SQL analysis:** Use SQL to query trip records and derive measures
    for rider behaviour.
3.  **Python analysis:** Use Python and Pandas for analysis and
    visualisation.
4.  **Exploratory analysis:** Compare ride volumes by rider type,
    weekday, month and average ride duration.
5.  **Dashboard development:** Present key measures and patterns in
    Power BI.
6.  **Communication:** Summarise findings and business recommendations
    in the presentation and report.

> The repository's SQL scripts and Python notebooks should be treated as
> the detailed implementation record. Add any project-specific cleaning
> rules, filters and calculation definitions there so the analysis can
> be reproduced.

## 5. Key Business Questions

1.  Which rider segment accounts for more rides?
2.  How does ride activity differ between weekdays and weekends?
3.  In which month does each rider segment record its highest ride
    volume?
4.  Which rider segment has the longer average ride duration?
5.  How can these behavioural patterns inform membership marketing?

## 6. Key Findings

The following figures are transcribed or calculated from the charts
included in the project presentation. They are descriptive findings from
the displayed analysis, not independently reprocessed raw-data results.

### 6.1 Overall ride volume

  -----------------------------------------------------------------------
  Measure                         Casual riders            Annual members
  ------------------- ------------------------- -------------------------
  Rides in the                        3,542,696                 6,136,573
  monthly chart (sum                            
  of displayed                                  
  months)                                       

  Share of combined                       36.6%                     63.4%
  rides                                         

  Average ride                       22 minutes                12 minutes
  duration                                      

  Peak month                          September                 September
  -----------------------------------------------------------------------

Annual members account for the larger share of the ride volume shown in
the monthly chart. Casual riders have a longer average ride duration: 22
minutes compared with 12 minutes for members.

### 6.2 Weekly riding behaviour

-   Member ride volume is higher than casual ride volume on each weekday
    from Monday to Friday.
-   Casual ride volume is higher than member ride volume on Saturday and
    Sunday.
-   The pattern suggests stronger weekday usage among members and
    stronger weekend usage among casual riders.

**Business interpretation:** Weekday-focused membership messaging may be
relevant to casual riders who already use the service during the working
week. Weekend-focused offers may be more appropriate for casual riders
whose activity is concentrated on weekends.

The chart does not establish riders' occupations or trip purposes. The
idea that members are office workers, or that casual riders are leisure
users, should be treated as a hypothesis until supported by additional
data.

### 6.3 Monthly riding trend

-   Both rider groups reach their highest displayed monthly ride volume
    in **September**.
-   September casual rides: **795,769**.
-   September member rides: **1,347,846**.
-   Both groups show lower ride volumes after September in the displayed
    chart.

**Business interpretation:** Consider scheduling membership campaigns
ahead of and during the higher-activity period, then evaluating
retention and engagement initiatives during the subsequent decline.

### 6.4 Average ride duration

-   Casual riders: **22 minutes**.
-   Annual members: **12 minutes**.
-   Casual rides are **10 minutes longer on average** in the displayed
    analysis.

**Business interpretation:** The duration difference can inform
segment-specific offers and product messaging. It does not, by itself,
explain why casual trips are longer or prove that restricting casual
rides would increase membership conversion.

## 7. Business Recommendations

Based on the observed patterns, the project proposes the following
actions for testing:

1.  **Weekday membership campaign:** Test commuter- or routine-use
    membership messaging with casual riders who ride on weekdays.
2.  **Weekend conversion offers:** Test weekend-oriented upgrade prompts
    or membership benefits for casual riders with repeat weekend
    activity.
3.  **Seasonal campaign planning:** Plan acquisition campaigns ahead of
    the June--September growth period and assess performance around the
    September peak.
4.  **Retention initiatives:** Evaluate targeted engagement during the
    October--December decline shown in the chart.
5.  **Test before changing ride rules:** Rather than immediately
    introducing restrictions on casual rides, test optional benefits,
    bundles or upgrade offers first. Assess conversion, revenue,
    customer experience and retention before making policy changes.

These are recommendations to validate, not proven causal outcomes.

## 8. Suggested Success Metrics

To evaluate whether future campaigns work, track:

-   Casual-to-member conversion rate
-   Number of new annual memberships
-   Repeat ride frequency by rider segment
-   Member retention and churn
-   Average ride duration by rider segment
-   Campaign cost per acquired member
-   Offer redemption and customer complaints

Where possible, compare campaign results with a suitable control group
so that campaign impact can be distinguished from general seasonal
changes.

## 9. Repository Structure

The repository is organised by project component. Adjust the filenames
below to match the files actually committed:

``` text
Trip-Data-Analysis/
│
├── 01_SQL/
│   ├── data_cleaning.sql
│   ├── exploratory_data_analysis.sql
│   └── business_analysis.sql
│
├── 02_Python/
│   ├── data_cleaning.ipynb
│   ├── data_analysis.ipynb
│   ├── data_visualization.ipynb
│   └── requirements.txt
│
├── 03_PowerBI/
│   ├── Trip_Analysis_Dashboard.pbix
│   └── Dashboard_Screenshot.png
│
├── 04_PowerPoint/
│   └── Trip_Analysis_Presentation.pptx
│
├── 05_Dataset/
│   └── trip_data
│
├── 06_Project_Report/
│   └── Trip_Data_Analysis_Professional_Report.pdf
│
└── README.md
```

Only include folders and files that are actually part of the published
repository. If the dataset is too large or subject to a licence, provide
its official source and access instructions rather than uploading it
without permission.

## 10. Dashboard & Project Deliverables

The repository may include the following deliverables:

-   **SQL scripts:** Queries used for preparation and analysis.
-   **Python notebooks/scripts:** Analysis, calculations and
    visualisations.
-   **Power BI dashboard (`.pbix`):** Interactive presentation of the
    project measures.
-   **Dashboard preview:** Static screenshot so visitors can quickly
    inspect the dashboard.
-   **PowerPoint presentation:** Summary of the business problem,
    analysis and recommendations.
-   **Professional report (PDF):** Written documentation of the analysis
    and findings.

If a dashboard preview is added at
`Screenshot 2026-11-11 191501.png`, it can be displayed here:

``` markdown
![Screenshot 2026-11-11 191501.png)
```

## 11. Limitations & Notes

-   The supplied presentation is dated **October 2026**, while the
    PowerPoint filename includes **2025**. The monthly chart displays
    January--December but does not visibly identify the year. Therefore,
    this README refers to the displayed 12-month analysis and does not
    independently verify the calendar year.
-   The headline ride totals are sums of the monthly values displayed in
    the presentation.
-   Ride counts are not the same as unique rider counts.
-   The presentation does not document all data-cleaning rules,
    exclusions, missing-value treatment or outlier handling.
-   The average-duration chart reports 22 minutes for casual riders and
    12 minutes for members; the presentation does not specify the
    treatment of invalid or extreme trip durations.
-   The analysis is descriptive. It identifies patterns and supports
    hypotheses, but does not prove that a marketing intervention will
    cause casual riders to become members.

## 12. Conclusion

The analysis highlights distinct usage patterns between casual riders
and annual members. Members account for a larger share of the displayed
ride volume and show stronger weekday activity. Casual riders show
stronger weekend activity and a longer average ride duration. Both
segments reach their highest displayed monthly ride volume in September.

These findings support a differentiated membership strategy: test
weekday-oriented membership messaging, create relevant weekend
conversion offers, plan campaigns around seasonal demand, and measure
results through conversion and retention KPIs. Any changes to
casual-ride restrictions should be tested carefully and evaluated
against customer experience as well as business outcomes.

------------------------------------------------------------------------

## Author

**Kunal**\
Email: kunal2852007@gmail.com
[LinkedIn](www.linkedin.com/in/kunalpal2007528)
Aspiring Data Analyst

**Project:** Trip Data Analysis -- Casual vs. Annual Member Riders
