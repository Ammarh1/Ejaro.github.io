# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

car_lists = CarForRent.create ([
    {
        make: "Ahmed Karem",
        model: "Camry 2020",
        Available_From: "20-6-2022",
        Available_Until: "25-9-2022",
        Kilometers_Traveled: "100 Km",
        Longitude: 39.10212841201368,
        Latitude: 21.71372143020726,
        image: "https://paultan.org/image/2022/02/2022-Toyota-Camry-facelift-Malaysia-1-1.jpg https://www.drivearabia.com/app/uploads/2021/11/CAH_MY21_0003_V001.jpg https://salehcars.com/storage/products/out_61c8a68ab4b851640539786.JPG",
        created_at: "2022-06-17T13:38:03.386Z",
        updated_at: "2022-06-17T13:38:03.386Z"
    },
    {
        make: "Ammar Alkhalifa",
        model: "Range Rover 2020",
        Available_From: "23-6-2022",
        Available_Until: "28-7-2022",
        Kilometers_Traveled: "230 Km",
        Longitude: 39.10164303301055,
        Latitude: 21.714123805495337,
        image: "https://cdn.al-ain.com/images/2021/1/03/102-175729-land-rover-2020-cars_700x400.jpg https://www.motortrend.com/uploads/sites/5/2020/07/2020-land-rover-ranger-rover-01.jpg https://cdn.motor1.com/images/mgl/Voely/s1/2020-range-rover.jpg",
        created_at: "2022-06-17T13:39:29.831Z",
        updated_at: "2022-06-17T13:39:29.831Z"
    },
    {
        make: "Mohammed Ali",
        model: "Sonata 2019",
        Available_From: "23-6-2022",
        Available_Until: "28-7-2022",
        Kilometers_Traveled: "230 Km",
        Longitude: 39.74374565787791,
        Latitude: 21.85320035617575,
        image: "https://www.autotrader.com/wp-content/uploads/2020/02/2019-Hyundai-Sonata-.1..jpg https://www.ccarprice.com/products/Hyundai-Sonata-Ultimate-2019.png",
        created_at: "2022-06-17T13:39:29.831Z",
        updated_at: "2022-06-17T13:39:29.831Z"
    }
])