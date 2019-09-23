document.addEventListener("DOMContentLoaded", function(){

    const canvas = document.getElementById("mycanvas");
    canvas.width = 500;
    canvas.height = 500;
    const ctx = canvas.getContext('2d');
    ctx.fillStyle = 'red';
    ctx.fillRect(0, 0, 100, 200);

    ctx.beginPath();
    ctx.arc(200, 200, 50, 0, 2*Math.PI);
    ctx.lineWidth = 2;
    ctx.stroke();
    ctx.fillStyle = 'yellow';
    ctx.fill();
});
