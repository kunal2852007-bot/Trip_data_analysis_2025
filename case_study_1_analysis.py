import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sb

trip_data_2025 = pd.read_csv(r"C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/all_trip_data_2025.csv",header=None)

# print(trip_data_2025.head(5))
# print(trip_data_2025.columns)


trip_data_2025.columns = [
    "ride_id",
	"rideable_type",
	"started_at",
	"ended_at",
	"start_station_name",
	"start_station_id",
	"end_station_name",
	"end_station_id",
	"start_lat",
	"start_lng",
	"end_lat",
	"end_lng",
	"member_casual"

]


trip_data_2025.to_csv(
    r"C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/trip_data_2025.csv",
    index=False
)

# print("Column names successfully added!")


# print(trip_data_2025.head(5))
# print(trip_data_2025.columns)

trip_data_2025["started_at"] = pd.to_datetime(
    trip_data_2025["started_at"],
    errors="coerce"
)

trip_data_2025["ended_at"] = pd.to_datetime(
    trip_data_2025["ended_at"],
    errors="coerce"
)

# print(trip_data_2025.dtypes)


# members vs casual riders by weekday.
# Extract weekday
trip_data_2025["weekday"] = trip_data_2025["started_at"].dt.day_name()

# Arrange weekdays in calendar order
weekday_order = [
    "Monday", "Tuesday", "Wednesday",
    "Thursday", "Friday", "Saturday", "Sunday"
]

# Count rides by weekday and rider type
weekday_rides = (
    trip_data_2025.groupby(["weekday", "member_casual"])
    .size()
    .unstack(fill_value=0)
    .reindex(weekday_order)
)

print("\n\n rides by weekdays \n")
print(weekday_rides)




#members vs casual riders by month
# Extract weekday
trip_data_2025["month_number"] = (trip_data_2025["started_at"].dt.month)

# Arrange weekdays in calendar order
trip_data_2025["month"] = (trip_data_2025["started_at"].dt.strftime("%B"))

# Count rides by weekday and rider type
monthly_rides = (
    trip_data_2025
    .groupby(["month_number", "month", "member_casual"])
    .size()
    .unstack(fill_value=0)
    .sort_index()
)

print("\n\n monthly rides \n")
print(monthly_rides)



# average ride duaration by rider type.

# Calculate ride duration in minutes
trip_data_2025["ride_duration"] = (
    trip_data_2025["ended_at"] - trip_data_2025["started_at"]
).dt.total_seconds() / 60

# Calculate average ride duration by rider type
avg_duration = trip_data_2025.groupby("member_casual")[
    "ride_duration"
].mean().reset_index()


avg_duration["ride_duration"] = avg_duration["ride_duration"].round(2)
print("\n\n average ride duration by ride type \n")
print(avg_duration)





# number of rides by ride type.

# Count rides by rider type
rides_by_type = trip_data_2025["member_casual"].value_counts().reset_index()

# Rename columns
rides_by_type.columns = ["rider_type", "number_of_rides"]

# Display results

print("\n\n number of rides by ride type \n")
print(rides_by_type)


# Weekend vs weekday behavior

# Extract day name
trip_data_2025["day_name"] = trip_data_2025["started_at"].dt.day_name()

# Classify rides as weekday or weekend
trip_data_2025["day_type"] = trip_data_2025["started_at"].dt.dayofweek.map(
    lambda day: "Weekend" if day >= 5 else "Weekday"
)

# print(trip_data_2025[["started_at", "day_name", "day_type"]].head())

rides_by_day_type = (
    trip_data_2025.groupby("day_type")
    .size()
    .reset_index(name="number_of_rides")
)

print("\n\n Weekend vs weekday behavior \n")
print(rides_by_day_type)




# data vizualisation.

#members vs casual riders by weekday.
ax = weekday_rides.plot(
    kind="bar",
    figsize=(12, 6)
)

plt.title("Members vs Casual Riders by Weekday")
plt.xlabel("Day of Week")
plt.ylabel("Total Rides")
plt.xticks(rotation=0)
plt.legend(title="Rider Type")

plt.gca().yaxis.set_major_formatter(
    lambda x, _: f'{x/1000:g}K'
)

# Calculate weekly percentage
total_weekly_rides = weekday_rides.sum().sum()

for container in ax.containers:
    labels = []

    for bar in container:
        height = bar.get_height()
        percentage = (height / total_weekly_rides) * 100

        labels.append(f'{height:.0f}\n({percentage:.2f}%)')

    ax.bar_label(container, labels=labels, padding=3)

plt.tight_layout()




# members vs casual riders by month.

ax = monthly_rides[["casual", "member"]].plot(
    kind="line",
    marker="o",
    figsize=(12, 6)
)

plt.title("Members vs Casual Riders by Month")
plt.xlabel("Month")
plt.ylabel("Total Rides")
plt.xticks(
    ticks=range(12),
    labels=monthly_rides.index.get_level_values("month"),
    rotation=45,
)
plt.legend(title="Rider Type")
plt.gca().yaxis.set_major_formatter((lambda x, _: f'{x/1000:g}K'))
# for line in ax.lines:
#     for x, y in zip(line.get_xdata(), line.get_ydata()):
#         ax.annotate(
#             f'{int(y):,}',
#             (x, y),
#             textcoords="offset points",
#             xytext=(0, 8),
#             ha="center",
#             fontsize=9
#         )

for line in ax.lines:
    x_values = line.get_xdata()
    y_values = line.get_ydata()

    for x, y in zip(x_values, y_values):
        percentage = (y / total_weekly_rides) * 100

        ax.annotate(
            f'{y:.0f}\n({percentage:.2f}%)',
            (x, y),
            textcoords="offset points",
            xytext=(0, 10),
            ha='center',
            fontsize=8
        )

plt.xticks(rotation=0)
plt.grid(True)
plt.tight_layout()





# average ride duaration by rider type.
avg_duration = avg_duration.rename(
    index={
        0: "Casual",
        1: "Member"
    }
)

ax = avg_duration.plot(
        kind="bar",
        figsize=(12, 6)
    )


plt.title("Average Ride Duration by Rider Type")
plt.xlabel("Rider Type")
plt.ylabel("Average Ride Duration (Minutes)")
for container in ax.containers:
        ax.bar_label(container, fmt='%.0f', padding=3)
plt.xticks(rotation=0)

plt.tight_layout()



# number of rides by ride type.

rides_by_type = rides_by_type.rename(
    index={
        0: "Casual",
        1: "Member"
    }
)

ax = rides_by_type.plot(
        kind="bar",
        figsize=(12, 6)
    )


plt.title("number of rides by ride type")
plt.xlabel("Rider Type")
plt.ylabel("Number of Rides")
plt.xticks(rotation=45)
plt.legend(title="member_casual")
plt.gca().yaxis.set_major_formatter((lambda x, _: f'{x/1000:g}K'))

for container in ax.containers:
    labels = []

    for bar in container:
        height = bar.get_height()
        percentage = (height / total_weekly_rides) * 100

        labels.append(f'{height:.0f}\n({percentage:.2f}%)')

    ax.bar_label(container, labels=labels, padding=3)

# for container in ax.containers:
#         ax.bar_label(container, fmt='%.0f', padding=3)

plt.xticks(rotation=0)
plt.tight_layout()


# Weekend vs weekday behavior
rides_by_day_type = rides_by_day_type.rename(
    index={
        0: "Weekdays",
        1: "Weekends"
    }
)

ax = rides_by_day_type.plot(
        kind="bar",
        figsize=(12, 6)
    )



plt.title("Number of Rides: Weekday vs Weekend")
plt.xlabel("Day Type")
plt.ylabel("Number of Rides")
for container in ax.containers:
    labels = []

    for bar in container:
        height = bar.get_height()
        percentage = (height / total_weekly_rides) * 100

        labels.append(f'{height:.0f}\n({percentage:.2f}%)')

    ax.bar_label(container, labels=labels, padding=3)

# for container in ax.containers:
#         ax.bar_label(container, fmt='%.0f', padding=3)

plt.xticks(rotation=0)
plt.tight_layout()
plt.show()