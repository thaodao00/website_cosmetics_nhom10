
const xValues1 = ["Toner", "Serum", "Face cleaner", "Sunscreen", "Moisturizer", "Mask"];
const yValues1 = [1155, 349, 124, 434, 23, 343];
const barColors1 = '#000';

new Chart("chart1", {
    type: "bar",
    data: {
    labels: xValues1,
    datasets: [{
        backgroundColor: barColors1,
        data: yValues1,
        hoverBorderWidth: 1,
        hoverBorderColor: '#000'
    }]
    },
    options:{
        title: {
            display: true,
            text: 'Number of products of the catalog sold',
            fontSize: 14,
        },
        legend: {
            display: false
        }
    }
});
