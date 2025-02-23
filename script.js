document.addEventListener("DOMContentLoaded", function () {
    const elements = document.querySelectorAll(".fade-in, .slide-in");

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = 1;
                entry.target.style.transform = "translateY(0)";
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.1 });

    elements.forEach(el => {
        el.style.opacity = 0;
        el.style.transform = "translateY(20px)";
        observer.observe(el);
    });
});
