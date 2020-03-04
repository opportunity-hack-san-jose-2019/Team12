// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Business", "Engineering", "Public Relations", "Education", "Technology", "Communications", "Accounting"],
    datasets: [{
      data: [30, 26, 11.5, 8, 10, 4, 10.5],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745', '#FFA07A', '#FFA500', '#8FBC8F'],
    }],
  },
});