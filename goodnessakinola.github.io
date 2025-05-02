<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Goodness Boluwaji Akinola | Business & E-commerce Analyst</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            cursor: none;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: #0f0f0f;
            color: #f5f5f5;
            overflow-x: hidden;
        }

        /* Custom cursor */
        .cursor {
            width: 20px;
            height: 20px;
            border: 2px solid white;
            border-radius: 50%;
            position: fixed;
            pointer-events: none;
            transform: translate(-50%, -50%);
            transition: width 0.2s, height 0.2s;
            z-index: 999;
        }

        .cursor-follower {
            width: 8px;
            height: 8px;
            background-color: white;
            border-radius: 50%;
            position: fixed;
            pointer-events: none;
            transform: translate(-50%, -50%);
            transition: 0.1s ease;
            z-index: 999;
        }

        /* Navigation */
        nav {
            padding: 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            background-color: rgba(15, 15, 15, 0.9);
            z-index: 100;
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
        }

        .nav-link {
            text-decoration: none;
            color: #f5f5f5;
            position: relative;
            transition: 0.3s;
        }

        .nav-link:hover {
            opacity: 0.7;
        }

        /* Hero section */
        .hero {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 0 10vw;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        .hero:before {
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background: radial-gradient(circle at 50% 50%, rgba(50, 50, 50, 0.3) 0%, rgba(15, 15, 15, 0.9) 100%);
            z-index: 0;
        }

        .hero-title {
            font-size: 4rem;
            font-weight: 900;
            line-height: 1.2;
            margin-bottom: 1rem;
            max-width: 800px;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            max-width: 600px;
            line-height: 1.6;
            margin-bottom: 2rem;
        }

        .hero-contact {
            margin-top: 2rem;
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
            font-size: 1rem;
        }

        .hero-contact-item {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .hero-contact-item i {
            font-size: 1.2rem;
        }

        .hero-cta {
            display: inline-block;
            margin-top: 2rem;
            padding: 1rem 2rem;
            background-color: white;
            color: black;
            text-decoration: none;
            font-weight: 600;
            border-radius: 4px;
            transition: 0.3s;
        }

        .hero-cta:hover {
            opacity: 0.9;
            transform: translateY(-2px);
        }

        /* Experience section */
        .experience {
            padding: 8rem 10vw 5rem;
        }

        .section-title {
            font-size: 2.5rem;
            margin-bottom: 3rem;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            padding-bottom: 1rem;
        }

        .experience-item {
            margin-bottom: 4rem;
            position: relative;
        }

        .experience-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 1rem;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .job-title {
            font-size: 1.8rem;
            font-weight: 700;
        }

        .company {
            font-size: 1.4rem;
            opacity: 0.8;
        }

        .date {
            font-size: 1rem;
            opacity: 0.7;
        }

        .experience-content {
            line-height: 1.8;
        }

        .experience-list {
            list-style: none;
        }

        .experience-list li {
            position: relative;
            padding-left: 1.5rem;
            margin-bottom: 1rem;
            line-height: 1.6;
        }

        .experience-list li:before {
            content: "•";
            position: absolute;
            left: 0;
            color: white;
        }

        /* Skills section */
        .skills {
            padding: 5rem 10vw;
            background-color: rgba(255, 255, 255, 0.02);
        }

        .skills-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 2rem;
        }

        .skill-category {
            padding: 2rem;
            background-color: rgba(255, 255, 255, 0.05);
            border-radius: 4px;
            transition: 0.3s;
        }

        .skill-category:hover {
            transform: translateY(-5px);
            background-color: rgba(255, 255, 255, 0.08);
        }

        .skill-category-title {
            font-size: 1.4rem;
            margin-bottom: 1.5rem;
            font-weight: 700;
        }

        .skill-list {
            list-style: none;
        }

        .skill-list li {
            margin-bottom: 0.8rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .skill-list li:before {
            content: "►";
            font-size: 0.8rem;
            color: rgba(255, 255, 255, 0.5);
        }

        /* Education section */
        .education {
            padding: 5rem 10vw;
        }

        .education-item {
            margin-bottom: 3rem;
        }

        .degree {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        .university {
            font-size: 1.2rem;
            opacity: 0.8;
            margin-bottom: 0.5rem;
        }

        /* Certifications section */
        .certifications {
            padding: 5rem 10vw;
            background-color: rgba(255, 255, 255, 0.02);
        }

        .certification-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 2rem;
        }

        .certification-item {
            padding: 2rem;
            background-color: rgba(255, 255, 255, 0.05);
            border-radius: 4px;
            transition: 0.3s;
        }

        .certification-item:hover {
            transform: translateY(-5px);
            background-color: rgba(255, 255, 255, 0.08);
        }

        .certification-title {
            font-size: 1.3rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .certification-issuer {
            opacity: 0.8;
            margin-bottom: 0.5rem;
        }

        .certification-year {
            font-size: 0.9rem;
            opacity: 0.7;
        }

        /* Contact section */
        .contact {
            padding: 5rem 10vw;
        }

        .contact-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
        }

        .contact-info {
            line-height: 1.8;
        }

        .contact-method {
            margin-bottom: 1.5rem;
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .contact-method i {
            font-size: 1.5rem;
            opacity: 0.8;
        }

        .contact-form {
            max-width: 600px;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
            opacity: 0.8;
        }

        input, textarea {
            width: 100%;
            padding: 0.8rem;
            background-color: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            color: white;
            border-radius: 4px;
            font-family: inherit;
            transition: 0.3s;
        }

        input:focus, textarea:focus {
            outline: none;
            border-color: rgba(255, 255, 255, 0.3);
            background-color: rgba(255, 255, 255, 0.08);
        }

        textarea {
            min-height: 150px;
            resize: vertical;
        }

        button {
            padding: 0.8rem 2rem;
            background-color: white;
            color: black;
            border: none;
            border-radius: 4px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            opacity: 0.9;
            transform: translateY(-2px);
        }

        /* Footer */
        footer {
            padding: 3rem 10vw;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            text-align: center;
            opacity: 0.7;
            font-size: 0.9rem;
        }

        /* Animation effects */
        .fade-in {
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 0.8s ease, transform 0.8s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* Stats counter */
        .stats {
            display: flex;
            justify-content: space-between;
            gap: 2rem;
            margin: 4rem 0;
            flex-wrap: wrap;
        }

        .stat-item {
            text-align: center;
            flex: 1;
            min-width: 200px;
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 900;
            margin-bottom: 0.5rem;
            background: linear-gradient(90deg, #ffffff, #a0a0a0);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .stat-label {
            font-size: 1rem;
            opacity: 0.8;
        }

        /* Media queries */
        @media (max-width: 1024px) {
            .contact-container {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }

            .hero-subtitle {
                font-size: 1.2rem;
            }

            .nav {
                padding: 1.5rem;
            }

            .experience-header {
                flex-direction: column;
                gap: 0.5rem;
            }
            
            .stats {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>
    <!-- Custom cursor elements -->
    <div class="cursor"></div>
    <div class="cursor-follower"></div>

    <!-- Navigation -->
    <nav>
        <div class="logo">GOODNESS AKINOLA</div>
        <div class="nav-links">
            <a href="#experience" class="nav-link">Experience</a>
            <a href="#skills" class="nav-link">Skills</a>
            <a href="#education" class="nav-link">Education</a>
            <a href="#contact" class="nav-link">Contact</a>
        </div>
    </nav>

    <!-- Hero section -->
    <section class="hero">
        <div class="hero-content">
            <h1 class="hero-title fade-in">GOODNESS BOLUWAJI AKINOLA</h1>
            <p class="hero-subtitle fade-in">Business & E-commerce Analyst with expertise in SEO, CRO, and data-driven decision making.</p>
            
            <div class="hero-contact fade-in">
                <div class="hero-contact-item">
                    <i class="fas fa-phone"></i>
                    <span>+447490162966</span>
                </div>
                <div class="hero-contact-item">
                    <i class="fas fa-envelope"></i>
                    <span>goodness@goodnessakinola.com</span>
                </div>
                <div class="hero-contact-item">
                    <i class="fas fa-map-marker-alt"></i>
                    <span>London</span>
                </div>
                <div class="hero-contact-item">
                    <i class="fab fa-github"></i>
                    <span>github.com/Gidi2904</span>
                </div>
            </div>
            
            <a href="#contact" class="hero-cta fade-in">Get In Touch</a>
        </div>
    </section>

    <!-- Stats section -->
    <div class="stats">
        <div class="stat-item fade-in">
            <div class="stat-number" data-count="15">0</div>
            <div class="stat-label">% UX Improvement</div>
        </div>
        <div class="stat-item fade-in">
            <div class="stat-number" data-count="30">0</div>
            <div class="stat-label">% Manual Work Reduced</div>
        </div>
        <div class="stat-item fade-in">
            <div class="stat-number" data-count="40">0</div>
            <div class="stat-label">% Traffic Increase</div>
        </div>
        <div class="stat-item fade-in">
            <div class="stat-number" data-count="25">0</div>
            <div class="stat-label">% Session Duration Improvement</div>
        </div>
    </div>

    <!-- Experience section -->
    <section class="experience" id="experience">
        <h2 class="section-title fade-in">Work Experience</h2>

        <div class="experience-item fade-in">
            <div class="experience-header">
                <div>
                    <div class="job-title">Business Analyst</div>
                    <div class="company">Mentorled</div>
                </div>
                <div class="date">Mar 2024 – Present</div>
            </div>
            <div class="experience-content">
                <ul class="experience-list">
                    <li>Conducted in-depth data analysis of user interaction metrics, identifying key trends that enhanced application usability and functionality, resulting in a 15% improvement in overall user experience.</li>
                    <li>Designed and implemented custom Power BI dashboards to monitor critical KPIs for web performance, driving a 20% reduction in page load times and improving operational efficiency.</li>
                    <li>Performed A/B testing on JavaScript features, uncovering insights that led to a 25% boost in user engagement and improved feature adoption.</li>
                    <li>Automated data cleaning and preparation workflows, reducing manual input by 30% while maintaining high standards of accuracy and reliability.</li>
                </ul>
            </div>
        </div>

        <div class="experience-item fade-in">
            <div class="experience-header">
                <div>
                    <div class="job-title">E-Commerce Analyst</div>
                    <div class="company">Shopify</div>
                </div>
                <div class="date">Dec 2022 – May 2023</div>
            </div>
            <div class="experience-content">
                <ul class="experience-list">
                    <li>Analysed web traffic data to identify high-performing pages, leading to targeted optimisations that increased site conversion rates by 30%.</li>
                    <li>Applied a data-driven redesign strategy using user analytics to enhance site navigation, resulting in a 25% improvement in average session duration.</li>
                    <li>Designed and maintained a custom SQL database to track customer interactions, enhancing data accessibility and retrieval efficiency by 40%.</li>
                    <li>Produced detailed monthly analytical reports for stakeholders, providing actionable insights into user behaviour that informed and optimised marketing campaigns.</li>
                </ul>
            </div>
        </div>

        <div class="experience-item fade-in">
            <div class="experience-header">
                <div>
                    <div class="job-title">SEO Specialist</div>
                    <div class="company">Wix</div>
                </div>
                <div class="date">Jan 2021 – Dec 2022</div>
            </div>
            <div class="experience-content">
                <ul class="experience-list">
                    <li>Performed extensive keyword and performance analyses, implementing optimised SEO strategies that increased organic traffic to client websites by 40%.</li>
                    <li>Created automated dashboards to monitor website metrics, reducing reporting time by 50% and enabling faster data-driven decision-making.</li>
                    <li>Leveraged data visualisation tools to present actionable insights on website performance trends, driving strategic improvements that boosted user engagement by 20%.</li>
                    <li>Conducted regression analysis to pinpoint factors influencing search rankings, resulting in a 15% improvement in overall SEO performance metrics.</li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Skills section -->
    <section class="skills" id="skills">
        <h2 class="section-title fade-in">Professional Skills</h2>
        <div class="skills-container">
            <div class="skill-category fade-in">
                <h3 class="skill-category-title">Analytics & Reporting</h3>
                <ul class="skill-list">
                    <li>Google Analytics</li>
                    <li>Power BI</li>
                    <li>SQL</li>
                    <li>Data Visualization</li>
                    <li>KPI Monitoring</li>
                </ul>
            </div>
            <div class="skill-category fade-in">
                <h3 class="skill-category-title">E-Commerce</h3>
                <ul class="skill-list">
                    <li>Marketplace Strategy</li>
                    <li>Product Listing Optimization</li>
                    <li>Visual Merchandising</li>
                    <li>UX/UI Testing</li>
                    <li>Customer Journey Mapping</li>
                </ul>
            </div>
            <div class="skill-category fade-in">
                <h3 class="skill-category-title">Digital Marketing</h3>
                <ul class="skill-list">
                    <li>SEO</li>
                    <li>CRO</li>
                    <li>A/B Testing</li>
                    <li>Email Marketing</li>
                    <li>Campaign Analysis</li>
                </ul>
            </div>
            <div class="skill-category fade-in">
                <h3 class="skill-category-title">Technical Tools</h3>
                <ul class="skill-list">
                    <li>Crazy Egg</li>
                    <li>Heatmaps</li>
                    <li>JavaScript</li>
                    <li>Data Cleaning Automation</li>
                    <li>Cross-Platform Promotion</li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Education section -->
    <section class="education" id="education">
        <h2 class="section-title fade-in">Education</h2>
        <div class="education-item fade-in">
            <div class="degree">Bachelor's Degree in English Literature (B.A) – Second Class Lower Division</div>
            <div class="university">University of Oxford</div>
            <div class="date">2019</div>
        </div>
        
        <h2 class="section-title fade-in">Certifications</h2>
        <div class="certification-list">
            <div class="certification-item fade-in">
                <div class="certification-title">Google Data Analytics Certificate</div>
                <div class="certification-issuer">Coursera</div>
                <div class="certification-year">2025</div>
            </div>
            <div class="certification-item fade-in">
                <div class="certification-title">Microsoft Power BI Data Analyst</div>
                <div class="certification-issuer">Microsoft</div>
                <div class="certification-year">2025</div>
            </div>
            <div class="certification-item fade-in">
                <div class="certification-title">Unilever Supply Chain Data Analyst</div>
                <div class="certification-issuer">Unilever</div>
                <div class="certification-year">2025</div>
            </div>
            <div class="certification-item fade-in">
                <div class="certification-title">Hubspot CRM Email Marketing</div>
                <div class="certification-issuer">Hubspot</div>
                <div class="certification-year">2025</div>
            </div>
            <div class="certification-item fade-in">
                <div class="certification-title">Hubspot Digital Marketing</div>
                <div class="certification-issuer">Hubspot</div>
                <div class="certification-year">2025</div>
            </div>
        </div>
    </section>

    <!-- Contact section -->
    <section class="contact" id="contact">
        <h2 class="section-title fade-in">Get In Touch</h2>
        <div class="contact-container">
            <div class="contact-info fade-in">
                <p>Feel free to reach out if you're looking for a business analyst with expertise in e-commerce optimization and data-driven insights. I'm always open to discussing new opportunities and challenges.</p>
                <div class="contact-methods">
                    <div class="contact-method">
                        <i class="fas fa-phone"></i>
                        <span>+447490162966</span>
                    </div>
                    <div class="contact-method">
                        <i class="fas fa-envelope"></i>
                        <span>goodness@goodnessakinola.com</span>
                    </div>
                    <div class="contact-method">
                        <i class="fas fa-map-marker-alt"></i>
                        <span>London, UK</span>
                    </div>
                    <div class="contact-method">
                        <i class="fab fa-github"></i>
                        <span>github.com/Gidi2904</span>
                    </div>
                </div>
            </div>
            <div class="contact-form fade-in">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" required></textarea>
                </div>
                <button type="submit">Send Message</button>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Goodness Boluwaji Akinola. All rights reserved.</p>
    </footer>

    <!-- Scripts -->
    <script>
        // Custom cursor effect
        const cursor = document.querySelector('.cursor');
        const cursorFollower = document.querySelector('.cursor-follower');

        document.addEventListener('mousemove', (e) => {
            cursor.style.left = e.clientX + 'px';
            cursor.style.top = e.clientY + 'px';
            
            setTimeout(() => {
                cursorFollower.style.left = e.clientX + 'px';
                cursorFollower.style.top = e.clientY + 'px';
            }, 50);
        });

        document.addEventListener('mousedown', () => {
            cursor.style.width = '15px';
            cursor.style.height = '15px';
            cursorFollower.style.width = '25px';
            cursorFollower.style.height = '25px';
        });

        document.addEventListener('mouseup', () => {
            cursor.style.width = '20px';
            cursor.style.height = '20px';
            cursorFollower.style.width = '8px';
            cursorFollower.style.height = '8px';
        });

        // Interactive elements effect
        const navLinks = document.querySelectorAll('.nav-link');
        const buttons = document.querySelectorAll('button');
        const ctas = document.querySelectorAll('.hero-cta');
        
        const handleMouseEnter = () => {
            cursor.style.width = '40px';
            cursor.style.height = '40px';
            cursor.style.backgroundColor = 'rgba(255, 255, 255, 0.1)';
            cursorFollower.style.opacity = '0';
        };
        
        const handleMouseLeave = () => {
            cursor.style.width = '20px';
            cursor.style.height = '20px';
            cursor.style.backgroundColor = 'transparent';
            cursorFollower.style.opacity = '1';
        };
        
        [...navLinks, ...buttons, ...ctas].forEach(el => {
            el.addEventListener('mouseenter', handleMouseEnter);
            el.addEventListener('mouseleave', handleMouseLeave);
        });

        // Fade-in animation on scroll
        const fadeElements = document.querySelectorAll('.fade-in');

        const fadeInOnScroll = () => {
            fadeElements.forEach(element => {
                const elementTop = element.getBoundingClientRect().top;
                const elementBottom = element.getBoundingClientRect().bottom;
                const isVisible = (elementTop < window.innerHeight - 100) && (elementBottom > 0);
                
                if (isVisible) {
                    element.classList.add('visible');
                }
            });
        };

        // Initial check for elements in view
        window.addEventListener('load', fadeInOnScroll);
        window.addEventListener('scroll', fadeInOnScroll);

        // Make initial hero elements visible immediately
        document.querySelector('.hero-title').classList.add('visible');
        setTimeout(() => {
            document.querySelector('.hero-subtitle').classList.add('visible');
        }, 300);
        setTimeout(() => {
            document.querySelector('.hero-contact').classList.add('visible');
        }, 500);
        setTimeout(() => {
            document.querySelector('.hero-cta').classList.add('visible');
        }, 700);

        // Counter animation for stats
        const stats = document.querySelectorAll('.stat-number');
        
        const animateStats = () => {
            stats.forEach(stat => {
                const target = parseInt(stat.getAttribute('data-count'));
                const duration = 2000; // Duration in milliseconds
                const stepTime = 50; // Update every 50ms
                const totalSteps = duration / stepTime;
                const stepSize = target / totalSteps;
                let current = 0;
                const timer = setInterval(() => {
                    current += stepSize;
                    stat.textContent = Math.floor(current);
                    if (current >= target) {
                        stat.textContent = target;
                        clearInterval(timer);
                    }
                }, stepTime);
            });
        };

        // Animate stats when they come into view
        const statsSection = document.querySelector('.stats');
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    animateStats();
                    observer.unobserve(entry.target);
                }
            });
        }, { threshold: 0.5 });

        observer.observe(statsSection);
    </script>
</body>
</html>
