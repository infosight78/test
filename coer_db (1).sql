-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 06:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coer_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(15) NOT NULL,
  `type_id` int(11) DEFAULT 0,
  `school_id` int(11) NOT NULL DEFAULT 0,
  `department_id` int(11) NOT NULL DEFAULT 0,
  `microsite_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(256) NOT NULL,
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `bannerimage` varchar(255) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `type_id`, `school_id`, `department_id`, `microsite_id`, `title`, `slug`, `display_order`, `status`, `bannerimage`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 1, 1, 3, 0, 'Music and Arts Festivals:', 'music-and-arts-festivals', 1, 1, 'uploads/album/banner/event09.webp', '2024-04-12', 1, '', 0),
(2, 1, 1, 3, 0, 'Cultural and Religious Festivals', 'cultural-and-religious-festivals', 2, 1, 'uploads/album/banner/news03.webp', '2024-04-12', 1, '', 0),
(3, 1, 1, 3, 0, 'Sports Events', 'sports-events', 3, 1, 'uploads/album/banner/news04.webp', '2024-04-12', 1, '', 0),
(4, 1, 1, 3, 0, 'Business and Technology Conferences', 'business-and-technology-conferences', 4, 1, 'uploads/album/banner/event08.webp', '2024-04-12', 1, '', 0),
(5, 1, 1, 3, 0, 'Trade Fairs and Exports', 'trade-fairs-and-exports', 5, 1, 'uploads/album/banner/event04.webp', '2024-04-12', 1, '', 0),
(6, 1, 1, 3, 0, 'Film Festivals', 'film-festivals', 6, 1, 'uploads/album/banner/event09 (1).webp', '2024-04-12', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards_and_ranking`
--

CREATE TABLE `awards_and_ranking` (
  `id` int(15) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `rank` varchar(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `awards_and_ranking`
--

INSERT INTO `awards_and_ranking` (`id`, `title`, `rank`, `image`, `description`, `display_order`, `status`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'First Rewards', '1', 'uploads/awards_and_ranking/1a.jpg', '<p><span>Awards celebrate exceptional performance, innovation</span></p>', 1, 1, '2024-04-04', 1, '2024-04-04', 1),
(2, 'Second Rewards', '2', 'uploads/awards_and_ranking/2a.jpg', '<p><span>Validation of Achievement: Winning an award</span></p>', 2, 1, '2024-04-04', 1, '2024-04-04', 1),
(3, 'Third Rewards', '3', 'uploads/awards_and_ranking/3a.jpg', '<p><span>Motivation and Inspiration: Awards inspire individuals</span></p>', 3, 1, '2024-04-04', 1, '2024-04-04', 1),
(4, 'Fourth Rewards', '4', 'uploads/awards_and_ranking/4a.jpg', '<p><span>Prestige and Credibility: Receiving an award enhances</span></p>', 4, 0, '2024-04-04', 1, '2024-04-04', 1),
(5, 'Fifth Rewards', '5', 'uploads/awards_and_ranking/4a.jpg', '<p><span>Networking and Opportunities: Award ceremonies</span></p>', 5, 0, '2024-04-04', 1, '2024-04-04', 1),
(6, 'Sixth Rewards', '6', 'uploads/awards_and_ranking/1a.jpg', '<p><span>Awards celebrate exceptional performance, innovation</span></p>', 6, 1, '2024-04-04', 1, '2024-04-04', 1),
(9, 'Innovation and Incubation Cell to support startups and entrepreneurship of students.', '', 'uploads/awards_and_ranking/iinc1.jpg', '', 7, 1, '2024-04-06', 1, '', 0),
(10, 'Supporting Student Startups and Entrepreneurship through the Innovation and Incubation Cell', '', 'uploads/awards_and_ranking/research-mobile.jpg', '', 8, 1, '2024-04-06', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `blog_date` date DEFAULT NULL,
  `blog_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `wp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `short_description`, `description`, `blog_date`, `blog_type`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`, `wp_id`) VALUES
(1, 'Navigating the Future: India’s Thriving Startup Ecosystem', 'navigating-the-future-indias-thriving-startup-ecosystem', 'uploads/blogs/4-1024x512.png', NULL, '<p><strong>Evolution of India’s Startup Landscape</strong></p><p>Explore the transformation of India’s startup scenario into a globally recognized and dynamic ecosystem driven by technological advancements, government support, and a burgeoning youth demographic.</p><p><strong>Technological Advancements and Innovations</strong></p><p>Discover how India’s pool of skilled engineers, developers, and tech-savvy entrepreneurs is propelling innovative solutions across diverse domains such as artificial intelligence, blockchain, biotechnology, and clean energy.</p><p><strong>Government Initiatives Fostering Growth</strong></p><p>Uncover the proactive steps taken by the Indian government through initiatives like ‘Startup India’ and ‘Make in India,’ providing startups with incentives, funding, and regulatory support to nurture their growth and innovation.</p><p><strong>Socially Conscious Startup Culture</strong></p><p>Learn about the emergence of startups addressing societal challenges such as environmental concerns, healthcare accessibility, education, and poverty alleviation. Investors and consumers recognize the value of socially responsible businesses, shaping a more conscientious startup ecosystem.</p><p><strong>Decentralization of Startup Activity</strong></p><p>Understand how tier 2 and tier 3 cities are becoming new startup hubs, offering cost-effective operations, access to local talent, and untapped markets. Witness the inclusive growth of startups across the country as the ecosystem diversifies.</p><p><strong>Global Expansion and Digital Connectivity</strong></p><p>Explore how Indian startups are leveraging digital connectivity to target international markets from the outset. Discover how cost-effective technological solutions are enabling startups to address global challenges and tap into international growth opportunities.</p><p>By employing SEO-friendly header tags, relevant keywords, and a concise meta description, this content becomes optimized for search engines. Readers gain insights into the evolution of India’s startup ecosystem, the role of technology and government initiatives, and the potential of socially conscious and globally ambitious startups.</p><p>By</p><p><strong>Dr. Aruna Bhat</strong></p><p><strong>Associate Professor, CoBS</strong></p>', '2023-09-06', '1', 1, 1, NULL, NULL, NULL, NULL, 98),
(2, 'Unleashing the Power of Startup Culture in India: A Revolution in Entrepreneurship', 'unleashing-the-power-of-startup-culture-in-india-a-revolution-in-entrepreneurship', 'uploads/blogs/power-of-startup-1024x640.png', NULL, '<p><strong>India’s Startup Ecosystem: A Vision for Entrepreneurial Potential</strong></p><p>Discover how India’s startup culture is realizing Prime Minister Narendra Modi’s vision of tapping into the nation’s entrepreneurial potential. Explore how startups are redefining India’s economic landscape and contributing to thousands of lives.</p><p><strong>From 452 to 84,000: India’s Remarkable Startup Journey</strong></p><p>Trace India’s extraordinary journey from a modest 452 startups in 2016 to a staggering 84,000 today. Understand the factors fueling this exponential growth and the significance of startups in transforming industries.</p><p><strong>The Rise of Unicorns: India’s Unicorn Revolution</strong></p><p>Uncover the phenomenon of Indian unicorns—privately held startups valued at over USD 1 billion. Learn how India has emerged as a global leader with more than 100 unicorns boasting a combined valuation exceeding USD 350 billion.</p><p><strong>Catalysts for Growth: Technology, Government Support, and Mindset Shift</strong></p><p>Explore the driving forces behind India’s startup revolution, including technological advancements, government backing, and shifting youth mindsets. Understand how these factors have contributed to a thriving entrepreneurial ecosystem.</p><p><strong>Transformative Collaboration: Startups and Big Business Respond to Challenges</strong></p><p>Discover the transformative power of collaboration as startups join forces with established corporations. Explore the example of the Pfizer-BioNTech COVID-19 Vaccine—a remarkable outcome of startup and big business collaboration to address global disruptions.</p><p><strong>Government Initiatives: Fostering Startup Success under Startup India</strong></p><p>Learn about the Indian government’s commitment to promoting startups through initiatives like Startup India. Explore the comprehensive action plan, funding support, industry-academia partnerships, and incubation programs driving innovation nationwide.</p><p><strong>Nurturing Innovation: Insights from Dr. Aruna Bhat</strong></p><p>Gain unique perspectives from Dr. Aruna Bhat, a member of the Startup Ecosystem. Discover how startups have catalyzed awareness, especially among women and children across India, inspiring employment-generating ideas.</p><p><strong>Empowering the Future: Startup Culture’s Impact on Awareness and Employment</strong></p><p>Understand the transformative impact of startups on Indian society. Explore how startup culture has empowered youth, particularly women, to embrace entrepreneurship, generate employment opportunities, and convert ideas into successful ventures.</p><p>By structuring the content with SEO-friendly elements such as header tags, a concise meta description, and relevant keywords, the article becomes optimized for search engines. This ensures that readers can easily discover and engage with information about India’s startup culture and its influence on the entrepreneurial landscape.</p><p>By</p><p><strong>Dr. Aruna Bhat</strong></p><p><strong>Associate professor</strong></p><p><strong>SOBS</strong></p>', '2023-09-06', '1', 1, 2, NULL, NULL, NULL, NULL, 120),
(3, 'Building a Stronger Workforce: Embracing Diversity, Equity, and Inclusion for Success', 'building-a-stronger-workforce-embracing-diversity-equity-and-inclusion-for-success', 'uploads/blogs/building-1024x577.png', NULL, '<p><strong>The Power of Diversity, Equity, and Inclusion</strong></p><p>Explore the significance of Diversity, Equity, and Inclusion (DEI) in cultivating a stronger workforce. Learn how these principles drive profitability, innovation, and employee retention within organizations.</p><p><strong>Beyond Catchphrases: DEI in the Workplace</strong></p><p>Move beyond DEI as mere buzzwords and delve into their practical application in workplaces. Understand how DEI goes beyond strategies and plays a vital role in shaping a diverse and inclusive work culture.</p><p><strong>Creating Inclusive Work Conditions</strong></p><p>Discover how DEI involves valuing each employee’s uniqueness and fostering a culture of appreciation. Learn how inclusive work conditions contribute to higher employee retention rates and a positive company culture.</p><p><strong>Strategies for Enhancing DEI at Work</strong></p><p>Explore practical strategies for enhancing DEI within organizations. From making DEIB a strategic priority to creating diverse hiring panels, uncover ways to promote diversity, equality, and inclusion in every facet of the workplace.</p><p><strong>Making DEIB a Strategic Priority</strong></p><p>Understand the importance of prioritizing DEIB as a strategic goal. Learn how setting specific objectives and metrics, continually evaluated by leadership, can drive progress and create a more inclusive work environment.</p><p><strong>Diverse Perspectives: A Key to Innovation</strong></p><p>Discover the role of diverse perspectives in fostering innovation within teams. Learn how recruiting people with varied backgrounds and perspectives can lead to creative problem-solving and fresh ideas.</p><p><strong>Nurturing a Strong Mentoring Program</strong></p><p>Uncover the benefits of establishing a robust mentoring program to promote DEI. From cross-departmental shadowing to CEO breakfasts, explore initiatives that engage underrepresented groups and pave the way for career growth.</p><p><strong>Engaging and Training Staff on DEI</strong></p><p>Explore the significance of ongoing DEI training for employees. Understand the impact of participatory and continuous training in driving behavioral change and promoting an inclusive organizational culture.</p><p><strong>Leadership Accountability for DEI Success</strong></p><p>Learn about the accountability of organizational leadership in the success of DEI initiatives. Discover how setting targets and holding leaders responsible for outcomes can drive positive change and inspire employees.</p><p><strong>Fostering Respect and Trust in the Workplace</strong></p><p>Understand the correlation between DEI and a respectful work environment. Explore how promoting diversity and inclusion reduces discrimination, fosters respect, and enhances employee engagement.</p><p><strong>Leveraging DEI for Strong Team Dynamics</strong></p><p>Explore the role of DEI in building trust and psychological safety within teams. Understand how diverse and inclusive environments lead to strong team dynamics and more effective collaboration. By structuring the content with SEO-friendly header tags, relevant keywords, and a concise meta description, this article becomes optimized for search engines. Readers gain valuable insights into the benefits of diversity, equity, and inclusion in the workplace, along with practical strategies and the role of leadership in fostering a thriving and inclusive work culture.</p><p>By</p><p><strong>Dr. Sudhir Gaur, COBS</strong></p>', '2023-09-06', '5', 1, 3, NULL, NULL, NULL, NULL, 139),
(4, 'Mastering the Art of Leadership: Essential Skills and the Four Cs', 'mastering-the-art-of-leadership-essential-skills-and-the-four-cs', '', NULL, '<p><strong>Introduction: The Essence of Leadership</strong></p><p>Delve into the core principles of leadership, understanding its role in bringing order to the world according to Confucius. Discover the foundational concepts of effective leadership that transcend time and culture.</p><p><strong>Essential Skills for Effective Leadership</strong></p><p>Explore the crucial skills that define impactful leadership. From effective communication to visionary thinking, uncover the abilities that set renowned leaders apart, along with real-world examples showcasing their significance.</p><p><strong>Hallmarks of a Leader: The Four Cs</strong></p><p>Discover the Four Cs of leadership that guide individuals on the path to mastery. Explore how putting the world, nation, family, and personal life in order form the foundation for effective leadership, as espoused by Confucius.</p><p><strong>Conscience: Guiding Light of Leadership</strong></p><p>Understand the role of conscience in leadership decisions. Learn from the insights of Brad Smith of Microsoft as we delve into the significance of ethical considerations and building a trustworthy organizational environment.</p><p><strong>Commitment: Igniting Momentum for Success</strong></p><p>Uncover the power of commitment in leadership. Explore how dedication and collaboration contribute to achieving organizational goals, and gain insights into how committed leaders inspire and uplift their teams.</p><p><strong>Competencies: Key Drivers of Effective Leadership</strong></p><p>Dive into the competencies that define exceptional leaders. Explore skills like change management, problem-solving, influencing, and strategy-setting that contribute to superior performance in leadership roles.</p><p><strong>Global Competencies: Expanding Leadership Effectiveness</strong></p><p>Discover the importance of global competencies in today’s interconnected world. Learn how being open-minded, culturally sensitive, and adaptable enhances a leader’s effectiveness on a global scale.</p><p><strong>Conclusion: The Path to Mastery in Leadership</strong></p><p>Reflect on the path to mastering leadership through the Four Cs: order, cultivation, personal growth, and ethical excellence. Understand how embodying these principles and honing essential skills can make leaders more effective in their roles.</p><p>By structuring the content with SEO-friendly header tags, relevant keywords, and a concise meta description, this article becomes optimized for search engines. Readers gain valuable insights into effective leadership skills, principles, and the Four Cs that guide successful leaders in today’s interconnected world.</p><p>By</p><p><strong>Dr Veera Lakshmi</strong></p><p><strong>Head (MBA), CoBS</strong></p>', '2023-09-01', '5', 1, 4, NULL, NULL, NULL, NULL, 7),
(5, 'The Role of Emotional Intelligence in Cultivating a Healthy Workplace', 'the-role-of-emotional-intelligence-in-cultivating-a-healthy-workplace', '', NULL, '<p><strong>Understanding the Impact of Emotional Intelligence in the Workplace</strong></p><p>Explore how emotional intelligence (EI) plays a vital role in shaping a healthy and productive work environment. Learn how EI influences communication, relationships, and overall organizational dynamics.</p><p><strong>Effective Communication: A Key Outcome of Emotional Intelligence</strong></p><p>Discover how high EI fosters efficient communication by enabling employees to listen attentively, adapt their communication styles, and handle challenging situations with empathy. Explore how this leads to improved teamwork, reduced conflicts, and enhanced collaboration.</p><p><strong>Enhancing Self-Awareness for a Harmonious Work Environment</strong></p><p>Delve into the importance of self-awareness as the foundation of emotional intelligence. Understand how self-aware individuals can manage their emotions, make sound decisions, and contribute to a positive workplace culture by reducing conflicts and building better relationships.</p><p><strong>Stress Management and Self-Care: Nurturing Employee Well-Being</strong></p><p>Learn how employees with high EI excel at recognizing stress triggers, managing their emotional reactions, and adopting healthy coping strategies. Discover how promoting stress management and self-care practices creates a healthier work environment, reducing burnout and enhancing well-being.</p><p><strong>Empathy and Understanding: Fostering a Compassionate Culture</strong></p><p>Explore the significance of empathy in emotional intelligence, allowing individuals to comprehend and share others’ emotions. Understand how empathy enhances relationships, trust, and collaboration among coworkers, leading to a culture of compassion and understanding.</p><p><strong>Conflict Resolution: Transforming Challenges into Opportunities</strong></p><p>Discover how emotional intelligence aids in effective conflict resolution. Learn how high EI individuals empathize, actively listen, and collaborate to find win-win solutions. Explore how cultivating emotional intelligence fosters a culture of constructive conflict resolution, enhancing productivity and teamwork.</p><p><strong>Leadership Development: The Power of Emotional Intelligence</strong></p><p>Understand the critical role of emotional intelligence in leadership. Explore how leaders with high EI inspire teams, build trust, and make empathetic decisions. Learn how prioritizing emotional intelligence in leadership development programs promotes a positive workplace culture from top to bottom.</p><p><strong>Conclusion: Harnessing Emotional Intelligence for Workplace Success</strong></p><p>Reflect on the transformative impact of emotional intelligence on workplace dynamics. Recognize the numerous benefits of nurturing emotional intelligence, from improved communication and conflict resolution to enhanced leadership and overall organizational performance.</p><p>By structuring the article with SEO-friendly elements like header tags, a concise meta description, and relevant keywords, the content becomes optimized for search engines. This facilitates easy discovery and engagement for readers seeking information about the role of emotional intelligence in creating a healthy workplace.</p><p><strong>By</strong></p><p><strong>Dr Rashmi Gupta</strong></p><p><strong>Head- Humanities</strong></p>', '2023-09-06', '5', 1, 5, NULL, NULL, NULL, NULL, 113),
(6, 'The Impact of Ed Tech in the Educational Landscape', 'the-impact-of-ed-tech-in-the-educational-landscape', '', NULL, '<p><strong>Revolutionizing Education through Ed Tech</strong></p><p>Explore the transformative influence of educational technology (Ed Tech) on the educational landscape. Learn how Ed Tech is reshaping pedagogy, democratizing education, and enhancing the learning experience for learners worldwide.</p><p><strong>Democratizing Education Access with Online Platforms</strong></p><p>Discover how Ed Tech is bridging gaps in education by providing access to quality learning experiences through online platforms, virtual classrooms, and e-learning tools. Learn how disadvantaged and remote regions are benefiting from the democratization of education through Ed Tech, as highlighted by the World Bank.</p><p><strong>Tailored Pedagogy: Personalized Learning with Ed Tech</strong></p><p>Uncover the power of Ed Tech in delivering tailored pedagogy. Explore how adaptive learning technologies empower educators to provide individualized educational experiences, enhancing student engagement, comprehension, and academic achievement. Insights from the Journal of Educational Technology showcase the positive impact of personalized learning.</p><p><strong>Engaging Students with Interactive Learning Technologies</strong></p><p>Delve into the captivating nature of interactive learning technologies powered by Ed Tech. Discover how applications, simulations, and virtual reality (VR) foster student engagement and enjoyment in the learning process. Explore research by Miller and Doerr that emphasizes the role of gamification in instructional technology.</p><p><strong>Empowering Educator Training through Ed Tech</strong></p><p>Understand how Ed Tech is transforming educator training. Explore the effectiveness of webinars, seminars, and collaborative platforms in disseminating best practices among instructors, as highlighted by Bao et al. Learn how contemporary methodologies and technological tools are essential for meeting diverse student needs.</p><p><strong>Harnessing Data-Driven Decision-Making with Ed Tech</strong></p><p>Discover how Ed Tech accumulates data to guide educational pathways. Explore the role of learning analytics and data-driven decision-making in identifying and resolving challenges in education. Understand how educators leverage empirical evidence to enhance the learning experience.</p><p><strong>Shaping the Future: Responsible Ed Tech Implementation</strong></p><p>Learn about the responsible and strategic implementation of Ed Tech. Understand how Ed Tech is reshaping education, making it more inclusive, flexible, and data-driven. Explore how educators must adapt to evolving technology, utilizing the full potential of Ed Tech to empower learners for the future.</p><p><strong>Embracing a Brighter Future of Learning with Ed Tech</strong></p><p>Conclude by embracing Ed Tech as a powerful tool for educational transformation. Explore how Ed Tech democratizes access, enables personalized learning experiences, and empowers educators. By harnessing the potential of Ed Tech, the educational community can lead the way toward a more accessible and innovative future of learning.</p><p>Structured with SEO-friendly header tags and relevant keywords, this article provides insights into the transformative impact of Ed Tech in the educational landscape. From democratizing education access to fostering personalized learning, the article explores the multifaceted benefits of Ed Tech in shaping a brighter future of learning.</p><p>By</p><p><strong>Dr. Himani Sharma</strong></p><p><strong>Assistant Professor, CoBS</strong></p>', '2023-09-06', '2', 1, 6, NULL, NULL, NULL, NULL, 85),
(7, 'Impact of Chat GPT and AI Tools on Job Careers: Embracing Change in the Age of AI', 'impact-of-chat-gpt-and-ai-tools-on-job-careers-embracing-change-in-the-age-of-ai', 'uploads/blogs/11-1024x768.png', NULL, '<p><strong>Transformative Role of Conversational AI in Reshaping Job Roles</strong></p><p>Explore the evolving job market and the undeniable impact of artificial intelligence (AI) on various industries. Delve into how conversational AI models, including Chat GPT, have revolutionized communication and fundamentally changed the dynamics of traditional job roles.</p><p><strong>Human-Machine Collaboration: Leveraging AI for Enhanced Efficiency and Job Satisfaction</strong></p><p>Witness the symbiotic relationship between humans and AI as chatbots handle routine queries, allowing professionals to focus on complex tasks requiring empathy and problem-solving skills. Understand how the collaboration between human expertise and AI tools empowers professionals to achieve higher-quality results, leading to improved job satisfaction and work-life balance.</p><p><strong>Creating New Career Avenues: The Surge in Demand for AI Experts and Data Scientists</strong></p><p>Uncover the surge in demand for AI-related roles such as AI experts, data scientists, AI trainers, and content curators. Learn how professionals with skills in AI-related disciplines are seizing new career opportunities in the age of AI, creating a diverse range of job paths.</p><p><strong>Thriving in the AI-Influenced Job Market: Embracing Continuous Learning and Adaptability</strong></p><p>Embrace the importance of continuous learning and adaptability in an AI-influenced job market. Understand that as technology rapidly advances, staying relevant requires a mindset of perpetual learning. Discover how professionals who embrace this journey remain agile and are well-positioned to seize emerging opportunities.</p><p><strong>Unleashing Career Potential: Embracing AI Collaboration for Personal Branding</strong></p><p>Explore how professionals can harness AI collaboration to enhance their personal branding. Witness how leveraging AI tools can amplify their expertise and unique skills, enabling them to stand out in a competitive job market.</p><p><strong>Shaping the Future of Work: Humans and AI Co-Creating an Innovative Landscape</strong></p><p>Quote: “Adapting to change is the new currency of career growth in the age of AI.”</p><p>Recognize the power of humans and AI co-creating an innovative future of work. Embrace the disruptions caused by the integration of Chat GPT and similar AI tools, and realize that they also unlock exciting career possibilities. Learn how professionals can thrive by embracing AI collaboration, continuous learning, and the dynamic opportunities of an ever-changing job market.</p><p>By incorporating SEO-friendly header tags, a succinct meta description, and relevant keywords, this article becomes optimized for search engines. This ensures that readers can effortlessly explore insights about the impact of AI tools on job careers, the collaborative potential of humans and AI, and the strategies for thriving in an AI-driven landscape.</p><p>By</p><p><strong>Dr. Rohit Kanauzia</strong></p>', '2023-09-06', '2', 1, 7, NULL, NULL, NULL, NULL, 137),
(8, 'Demystifying the Black Box: Understanding Explainable AI', 'demystifying-the-black-box-understanding-explainable-ai', 'uploads/blogs/10-1024x683.png', NULL, '<p><strong>Unveiling the Concept of Explainable AI</strong></p><p>Discover the significance of explainable AI in making artificial intelligence systems more transparent and interpretable. Traditional machine learning models are often considered “black boxes,” lacking explanations for their decisions. Dive into the world of explainable AI to demystify these black boxes and shed light on AI’s decision-making process.</p><p><strong>Approaches for Achieving AI Explainability</strong></p><p>Explore various techniques and approaches designed to achieve explainability in AI. Gain insights into rule-based methods, feature importance analysis, local and global explanations, model architecture design, and the integration of human feedback. These approaches play a crucial role in enhancing transparency and understanding in AI systems.</p><p><strong>Rule-Based Methods: Enhancing Transparency with Decision Trees</strong></p><p>Delve into the concept of rule-based methods, which involve extracting rules from trained models. Learn how decision trees and rule-based systems offer inherent interpretability by breaking down complex models into understandable rules. Discover how these methods provide clear explanations for individual predictions.</p><p><strong>Uncovering Feature Importance: Insights into Model Behavior</strong></p><p>Explore the approach of feature importance analysis, which identifies the key features influencing model predictions. Gain an understanding of techniques like feature importance scores, sensitivity analysis, and permutation feature importance. Learn how these methods provide valuable insights into the behavior of AI models.</p><p><strong>Local Explanations: Delving into Individual Predictions with LIME and SHAP</strong></p><p>Discover the power of local explanations, which focus on explaining individual predictions rather than the entire model. Learn about methods like LIME and SHAP, which approximate model behavior for specific predictions. Understand how these techniques provide detailed insights into AI decision-making.</p><p><strong>Global Explanations: Capturing High-Level Insights for Interpretability</strong></p><p>Explore global explanation methods that offer an overview of a model’s behavior. Discover how techniques such as rule extraction, surrogate models, and partial dependence plots capture high-level patterns and insights. Learn how these methods contribute to a deeper understanding of AI systems.</p><p><strong>Designing Transparent Model Architecture for Enhanced Explainability</strong></p><p>Learn how designing AI models with transparency in mind enhances explainability. Explore the benefits of using simpler models like linear regression and decision trees for interpretability. Discover how architectural modifications, such as attention mechanisms, offer insights into model behavior.</p><p><strong>Human-AI Interaction: Incorporating Feedback for Improved Interpretation</strong></p><p>Understand the role of human-AI interaction in achieving explainability. Explore techniques like interactive machine learning and human-in-the-loop approaches, allowing users to query AI systems for explanations and provide corrections or feedback. Learn how human feedback contributes to improved model interpretation.</p><p><strong>Balancing Trade-Offs: Striking the Right Balance between Accuracy and Explainability</strong></p><p>Quote: “In the world of AI, transparency fuels trust and understanding.” –</p><p>Recognize the challenges and trade-offs in achieving complete transparency and explainability in AI systems. Understand the delicate balance between model performance and interpretability. Learn how researchers are actively developing new techniques and standards to navigate this balance, ensuring accuracy and transparency in AI systems.</p><p>By incorporating SEO-friendly header tags, a concise meta description, and relevant keywords, this article becomes optimized for search engines. Readers can gain comprehensive insights into the concept of explainable AI, explore various techniques for enhancing AI transparency, and understand the challenges of achieving accuracy and interpretability in AI systems.</p><p>By</p><p><strong>Dr. Kamal Kant Verma</strong></p>', '2023-09-06', '2', 1, 8, NULL, NULL, NULL, NULL, 129),
(9, 'Beyond Bitcoin: Unveiling the Revolutionary Potential of Blockchain and Cryptocurrency', 'beyond-bitcoin-unveiling-the-revolutionary-potential-of-blockchain-and-cryptocurrency', '', NULL, '<p><strong>The Rise of Bitcoin: A Decentralized Digital Currency</strong></p><p>Discover the ascent of Bitcoin, the decentralized digital currency that emerged in 2009. Learn how factors like restricted supply, increased adoption, and growing investor interest have propelled Bitcoin’s value, paving the way for the rise of cryptocurrencies and blockchain-based applications.</p><p><strong>Demystifying Blockchain: Decentralized Security and Transparency</strong></p><p>Uncover the mechanics of blockchain, a decentralized technology facilitating secure and transparent transactions. Explore its interconnected blocks, consensus methods, and how it ensures immutability and transparency by validating transaction validity across a network of computers.</p><p><strong>Understanding Cryptocurrencies: Digital Currency Redefined</strong></p><p>Delve into the realm of cryptocurrencies, virtual or digital currencies employing cryptographic techniques for transaction security and new unit generation. Explore how blockchain technology underpins cryptocurrencies, enabling peer-to-peer transactions, enhancing financial empowerment, and reducing transaction costs.</p><p><strong>The Power of Blockchain: Revolutionizing Multiple Industries</strong></p><p>Explore the revolutionary potential of blockchain technology. Witness how its decentralized nature disrupts industries like finance, supply chain management, and healthcare, reducing intermediary reliance, enhancing accountability, and automating processes through smart contracts.</p><p><strong>Real-World Applications: Blockchain in Financial Services, Supply Chain, Healthcare, and More</strong></p><p>Unearth the practical applications of blockchain and cryptocurrency across diverse sectors:</p><p>– Financial Services: Enhance security, transparency, and cross-border transactions in banking, payments, and identity verification.</p><p>– Supply Chain Management: Ensure traceability and authenticity in logistics, food, and pharmaceutical industries, combating counterfeiting and improving efficiency.</p><p>– Healthcare: Elevate patient data security, interoperability, and drug supply chain management through secure sharing of medical records.</p><p>– Voting Systems: Introduce transparency, tamper resistance, and voter verification, bolstering trust in electoral processes.</p><p>– Decentralized Finance (DeFi): Enable decentralized lending, borrowing, and trading platforms, granting global financial access.</p><p>– Energy and Sustainability: Verify renewable energy generation, facilitate peer-to-peer energy trading, and promote sustainability through carbon credit tracking.</p><p><strong>The Future Impact: Blockchain and Cryptocurrency’s Transformative Journey</strong></p><p>Gain insights into the potential impact of blockchain and cryptocurrency. Witness the profound influence on transaction security, supply chain transparency, financial inclusion, cross-border transactions, and emerging business opportunities. Anticipate institutional engagement, technical advancements, regulatory frameworks, and global economic transformation.</p><p><strong>Insights from an Expert: Priyanka Suyal on Blockchain and Cryptocurrency</strong></p><p>Explore the perspective of Priyanka Suyal, Assistant Professor (CSE) at COER University. Discover her expert insights on the revolutionary potential of blockchain and cryptocurrency, and their role in reshaping industries and economies.</p><p>By structuring the content with SEO-friendly elements like header tags, a concise meta description, and relevant keywords, the article becomes optimized for search engines. This ensures that readers can easily discover and engage with insights about blockchain, cryptocurrency, and their transformative impact on various sectors.</p><p>By</p><p><strong>Ms Priyanka Suyal</strong></p><p><strong>Assistant Professor</strong></p><p><strong>Department of CSE (AI-ML)</strong></p>', '2023-09-06', '2', 1, 9, NULL, NULL, NULL, NULL, 126),
(10, 'Demystifying Explainable Artificial Intelligence (XAI): Enhancing Transparency in AI Systems', 'demystifying-explainable-artificial-intelligence-xai-enhancing-transparency-in-ai-systems', 'uploads/blogs/5-1024x576.png', NULL, '<p>Explore the realm of Explainable Artificial Intelligence (XAI) and its critical role in unraveling complex AI decision-making processes. Learn how XAI empowers users to understand AI systems, detect biases, ensure transparency, and foster human-AI collaboration.</p><p><strong>The Need for Explainable AI</strong></p><p>Discover why achieving transparency in AI decisions is imperative. Delve into how traditional AI models’ “black box” nature hampers their use in sensitive domains like healthcare, finance, and justice, and the importance of XAI in addressing these challenges.</p><p><strong>Approaches to Achieve Explainability</strong></p><p>Uncover the various methods and techniques utilized in XAI to demystify AI systems:</p><p><strong>Rule-Based Approaches</strong></p><p>Understand how explicit rules or decision trees provide interpretable insights into AI predictions, enabling traceability of decisions back to specific rules or conditions.</p><p><strong>Feature Importance Analysis</strong></p><p>Explore techniques that assess each input feature’s impact on AI model outputs, helping identify key contributing factors.</p><p><strong>Local Interpretability Techniques</strong></p><p>Learn about local interpretability methods that focus on explaining individual predictions by highlighting influential features, such as LIME and SHAP.</p><p><strong>Model-Agnostic Methods</strong></p><p>Discover approaches like LIME and SHAP, which offer explanations for any AI model, ensuring versatility across diverse model architectures.</p><p><strong>Transparent Model Architectures</strong></p><p>Understand how inherently interpretable models like decision trees, linear models, or rule-based systems provide transparency at the cost of predictive complexity.</p><p><strong>Interactive Visualizations</strong></p><p>Explore visualization techniques like saliency maps and heatmaps that visually represent AI model behavior, enhancing understanding of influential regions or concepts.</p><p><strong>Simplicity and Comprehensibility</strong></p><p>Learn how techniques like distillation or model compression simplify complex models while retaining essential characteristics, enhancing overall explainability.</p><p><strong>Domain Expertise and Contextual Explanations</strong></p><p>Discover the significance of incorporating domain knowledge and contextual information to align explanations with human expertise and expectations.</p><p><strong>Balancing Transparency and Performance</strong></p><p>Recognize the importance of tailoring explainability techniques to meet specific application requirements and strike the right balance between interpretability and performance.</p><p><strong>Advancements and Future of XAI</strong></p><p>Explore how ongoing research in XAI is driving innovation, exploring new methods, and establishing ethical standards and guidelines for responsible AI deployment.</p><p><strong>Conclusion</strong></p><p>Understand the pivotal role of Explainable Artificial Intelligence in unraveling the complexities of AI decision-making. Discover how approaches like rule-based methods, feature importance, and local interpretability enhance transparency and accountability in AI systems. As XAI advances, it continues to pave the way for more responsible, ethical, and understandable AI deployments.</p><p>By employing SEO-friendly header tags, relevant keywords, and a concise meta description, this content becomes optimized for search engines. Readers gain a comprehensive understanding of the importance of XAI in enhancing transparency and accountability in AI systems, as well as the various approaches used to achieve it.</p><p>By</p><p><strong>Ms Supriya </strong></p><p><strong>Assistant professor</strong></p><p><strong>Department of CSE (AI-ML)</strong></p>', '2023-09-06', '2', 1, 10, NULL, NULL, NULL, NULL, 102),
(11, 'Defenders of the Digital Realm: Safeguarding Cybersecurity and Data Privacy', 'defenders-of-the-digital-realm-safeguarding-cybersecurity-and-data-privacy', '', NULL, '<p><strong>Introduction: Navigating the Digital Landscape</strong></p><p>Discover the critical importance of robust cybersecurity and data protection measures in our modern, hyper-connected world. Learn how these measures ensure safety and privacy in an era where technology is integral to every aspect of our lives.</p><p><strong>The Crucial Role of Cybersecurity</strong></p><p>Explore how cybersecurity acts as a sentinel, guarding our digital infrastructure against malicious actors aiming to exploit vulnerabilities for personal gain or nefarious purposes. Learn how cyber threats are evolving in tandem with our technological advancements, necessitating a robust defense strategy.</p><p><strong>Data Protection: A Vital Companion</strong></p><p>Understand the symbiotic relationship between cybersecurity and data protection, focusing on preserving the confidentiality and integrity of personal and sensitive information. Discoverhow organizations secure user trust through encryption, network fortifications, and stringent access controls.</p><p><strong>Champions of the Digital Realm</strong></p><p>Uncover the need for experts and practitioners as guardians of the digital realm. Learn how these cybersecurity professionals continually adapt their strategies to counter evolving cyber threats, while also fostering collaboration between governments, private sectors, and individuals to build a comprehensive defense ecosystem.</p><p><strong>Key Insights into Cybersecurity</strong></p><p>Gain insights into the rapid growth of cybercrime, with projected global damages surpassing $10.5 trillion annually by 2025. Explore the common types of cybersecurity breaches, including phishing attacks, malware infections, and data breaches.</p><p><strong>Perspectives on Cybersecurity</strong></p><p>Read thought-provoking quotes from experts in the field, including insights from Gene Spafford and Eric Schmidt, shedding light on the true nature of cybersecurity and the digital world.</p><p><strong>Noteworthy Quotes on Cybersecurity</strong></p><p>Explore quotes from notable figures such as Richard Clarke and Peter Sondergaard, providing unique perspectives on the importance of resource allocation to IT security and the value of information in the digital age.</p><p><strong>In Conclusion: Ensuring a Secure Digital Future</strong></p><p>Reflect on the significance of cybersecurity and data protection as we navigate the hyper-connected digital landscape. Embrace the role of guardians in securing our digital realm against malicious forces, ensuring the privacy and security of our digital identities.</p><p>By incorporating SEO-friendly header tags, relevant keywords, and a concise meta description, this content becomes optimized for search engines. Readers gain valuable insights into the imperative of cybersecurity, data privacy, and the role of experts in fortifying the digital realm against threats.</p><p>By</p><p><strong>Ms Soumya Upadhyay</strong></p><p><strong>Assistant Professor </strong></p><p><strong>Department of Cyber Security</strong></p>', '2023-09-06', '2', 1, 11, NULL, NULL, NULL, NULL, 93),
(12, 'Unleashing the Power of Data: Revolutionizing Business with Analytics and Business Intelligence', 'unleashing-the-power-of-data-revolutionizing-business-with-analytics-and-business-intelligence', '', NULL, '<p><strong>The Rise of Data-Driven Decision Making</strong></p><p>Explore how data analytics and business intelligence empower businesses with informed decision-making. Learn how analyzing diverse data sources uncovers patterns, trends, and correlations, providing valuable insights into customer behavior, market dynamics, and operational efficiency. Discover the financial performance advantages highlighted by Gartner for organizations embracing data-driven decisions [1].</p><p><strong>Enhancing Operational Efficiency through Analytics and BI</strong></p><p>Uncover how the integration of analytics and BI revolutionizes operational efficiency. Discover how data analysis of production processes, supply chains, and resource allocation identifies inefficiencies, enabling streamlined operations, reduced costs, and increased productivity. Explore McKinsey’s findings, showcasing a 15% productivity increase for data-driven organizations [2].</p><p><strong>Unlocking Customer Insights for Business Success</strong></p><p>Delve into the power of analytics and BI in understanding customers. Learn how customer data analysis drives segmentation, personalized marketing, and targeted offerings. Discover Forbes’ insights on revenue increase through data-driven customer personalization [3]. Understand how data insights lead to enhanced customer satisfaction, loyalty, and retention.</p><p><strong>Real-Time Monitoring and Predictive Analytics: Staying Agile</strong></p><p>Discover the significance of real-time data monitoring and predictive analytics. Explore interactive dashboards and visualizations for up-to-date insights on key performance indicators. Learn how predictive analytics leverages advanced models and machine learning to forecast outcomes, empowering businesses to proactively address challenges and seize opportunities.</p><p><strong>Data Visualization and Storytelling: Communicating Insights Effectively</strong></p><p>Understand the role of data visualization and storytelling in effective communication. Explore how analytics and BI tools offer intuitive visual representations, aiding comprehension and decision-making. Learn how compelling storytelling techniques engage stakeholders and foster data-driven decisions across all organizational levels.</p><p><strong>Embracing a Data-Driven Future: Innovate, Adapt, Thrive</strong></p><p>Conclude by embracing the transformative impact of data analytics and business intelligence. Unleash a competitive advantage, improve operational efficiency, and drive innovation through data-driven decision-making. As the business landscape evolves, organizations that harness the power of data are poised to innovate, adapt, and thrive.</p><p>Structured with SEO-friendly header tags and relevant keywords, this article provides insights into the revolutionary impact of data analytics and business intelligence on businesses. From data-driven decision-making to operational efficiency enhancement, readers can explore the multifaceted benefits of embracing analytics and BI for a more agile and competitive future.</p>', '2023-09-06', '2', 1, 12, NULL, NULL, NULL, NULL, 80),
(13, 'Advancements in Solar Energy: Latest Breakthroughs in Efficiency, Storage, and Design', 'advancements-in-solar-energy-latest-breakthroughs-in-efficiency-storage-and-design', 'uploads/blogs/solar-energy-1024x768.png', NULL, '<p><strong>Increased Efficiency in Solar Cells</strong></p><p>Experience the incredible strides in solar cell technology, with a substantial efficiency boost from 24.4% to 31.6%. Learn how this progress is transforming solar power generation, making it a viable choice for households globally.</p><p><strong>Enhancing Durability and Lifespan</strong></p><p>Discover cutting-edge technological innovations that enhance solar cell durability and lifespan. Explore how these advancements contribute to more efficient solar panel installations, maximizing energy extraction from the sun’s rays.</p><p><strong>Flexibility Revolutionizing Solar Cells</strong></p><p>Learn about researchers’ success in developing flexible silicon PV modules with thinner membranes. Explore how this breakthrough allows solar cells to be printed on various surfaces, enhancing versatility and simplifying installation.</p><p><strong>Solar Panels with Sun-Tracking Abilities</strong></p><p>Explore the latest solar technology featuring panels equipped with autonomous sun-tracking capabilities. Uncover how these panels optimize energy generation by following the sun’s path, boosting overall efficiency.</p><p><strong>Focus on Third-Generation Solar Cells</strong></p><p>Delve into the forefront of solar cell technology with a focus on third-generation cells. Discover how these advanced cells are designed for improved efficiency and cost-effectiveness compared to their predecessors.</p><p><strong>Revolutionizing Energy Storage in Solar Technology</strong></p><p>Overcome the challenge of solar energy storage with recent technological advancements. Learn how improved energy storage solutions enhance reliability and accessibility, bolstering the overall dependability of solar power systems.</p><p><strong>Embracing a Cleaner Future with Solar Energy</strong></p><p>In conclusion, witness the rapid evolution of solar cell technology and its potential to shape a cleaner and brighter future. Stay informed about the latest scientific developments driving solar power’s journey toward becoming a primary energy source for homes and businesses worldwide.</p><p>By</p><p><strong>Dr Nitesh Dutt</strong></p><p><strong>Associate Professor and Head</strong></p><p><strong>Department of Mechanical Engineering</strong></p>', '2023-09-06', '2', 1, 13, NULL, NULL, NULL, NULL, 92);
INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `short_description`, `description`, `blog_date`, `blog_type`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`, `wp_id`) VALUES
(14, 'Earth Day 2023: Investing in Our Planet for Climate Change and Sustainability Education', 'earth-day-2023-investing-in-our-planet-for-climate-change-and-sustainability-education', 'uploads/blogs/earth-day-1024x576.png', NULL, '<p><strong>Introduction:</strong></p><p>Earth Day 2023 underscores the urgency of climate change and sustainability education under the theme “Invest in Our Planet.” This interdisciplinary focus aims to cultivate values, knowledge, and skills necessary for a sustainable world. Sustainability education equips students with the insights to make informed decisions, fostering an understanding of the interconnectedness between nature and society.</p><p><strong>Climate Change Impact and Vulnerability</strong>:</p><p>The ramifications of climate change disproportionately affect marginalized communities, resulting in reduced productivity and job loss. The imperative shift to a green economy to avert increased unemployment, poverty, and inequality necessitates reskilling and upskilling. Meeting the Paris Agreement and UN Sustainable Development Goals requires substantial investments in these processes.</p><p><strong>Addressing Climate Change Challenges</strong>:</p><p>Societal entities, from individuals to ecosystems, grapple with the adverse consequences of climate change driven by resource overexploitation and fossil fuel-based energy production. The escalating greenhouse gas emissions and pollution call for immediate measures to curtail the impacts. Nations worldwide have committed to reducing their carbon footprint to mitigate these effects.</p><p><strong>The Significance of Green Jobs</strong>:</p><p>Green jobs, exemplified by improved energy efficiency, emission reduction, waste management, and ecosystem protection, represent essential employment opportunities. These roles span both established sectors like manufacturing and emerging fields such as renewable energy. Transitioning to a sustainable future demands skills development that aligns with these evolving demands.</p><p><strong>Necessity of Green Structural Transformation</strong>:</p><p>Adapting to environmental changes mandates embracing new technologies, regulations, pricing, and tariffs. As industries undergo significant shifts, displaced workers and those in declining sectors require support for retraining and reskilling. This facilitates their smooth transition into new, sustainable job markets.</p><p><strong>Empowering Through Public-Private Partnerships</strong>:</p><p>Collaboration between public and private sectors, bolstered by corporations and governments, plays a pivotal role in skills development. Financial incentives are integral to the functioning of green markets, stimulating skill growth and shaping the trajectory of sustainable professions. Robust public-private partnerships can overcome financial barriers and drive innovative, data-driven skills programs.</p><p><strong>Inclusivity and Addressing Skill Gaps</strong>:</p><p>Inclusive skill development programs must encompass women, addressing labor market gaps and shortages in environmentally sustainable sectors. Apprenticeship and training initiatives that involve women are crucial to bridging these disparities.</p><p><strong>Environmental Activities for a Sustainable Future</strong>:</p><p>Environmental change necessitates a multipronged approach encompassing sustainable practices, renewable energy adoption, conservation efforts, and community awareness. Strategies include transitioning to circular economy principles, promoting eco-friendly transportation, advocating for renewable energy sources, biodiversity preservation, and fostering public engagement on environmental concerns.</p><p><strong>Promoting Collaboration for a Sustainable Future</strong>:</p><p>Achieving genuine change hinges on collaborative efforts between organizations and individuals. By pooling resources and aligning objectives, a sustainable future can be realized. Collective commitment to green technologies and practices, combined with heightened public awareness, will drive the transformation toward a sustainable world.</p><p><strong>Conclusion: Forging a Sustainable Path Forward</strong>:</p><p>Earth Day 2023 amplifies the need for climate change education and green skills development. As we navigate climate challenges, investing in education, reskilling, and collaboration lays the groundwork for a harmonious balance between human advancement and planetary health. By taking strategic action, uniting for common goals, and unwavering dedication, a sustainable world can be realized, securing the well-being of generations to come.</p><p>By</p><p><strong>Dr Deep Gupta</strong></p><p><strong>Professor </strong></p><p><strong>College of Smart Agriculture</strong></p>', '2023-09-06', '4', 1, 14, NULL, NULL, NULL, NULL, 134),
(15, 'Impact of Global Warming on Uttarakhand’s Climate: Challenges and Recommendations', 'impact-of-global-warming-on-uttarakhands-climate-challenges-and-recommendations', '', NULL, '<p><strong>Introduction:</strong></p><p>Global warming is swiftly reshaping the Earth’s climate, with rapid temperature rise attributed to human activities. Dr. Pashupati Nath, an Assistant Professor at COER University’s College of Smart Agriculture, delves into the repercussions of global warming on Uttarakhand’s environment and suggests potential solutions.</p><p><strong>Understanding Global Warming:</strong></p><p>Global warming, driven by human-induced factors, is causing a significant rise in Earth’s temperature. This phenomenon, acknowledged by the Intergovernmental Panel on Climate Change (IPCC), is projected to lead to a 1.5-degree Celsius increase in global temperature within two decades.</p><p><strong>Natural and Anthropogenic Influences:</strong></p><p>Climate change stems from both natural processes, like Continental Drift and Ocean Currents, and human-induced factors such as Greenhouse Gas emissions and land use changes. Anthropogenic impacts play a pivotal role in exacerbating the effects of global warming.</p><p><strong>Climate Change in India:</strong></p><p>India faces substantial climate change risks. It ranked fifth in terms of vulnerability to climate change globally. The Himalayas, covering a significant portion of India’s landmass, play a crucial role in the nation’s climate patterns, acting as a watershed and influencing monsoons.</p><p><strong>Impact on Uttarakhand:</strong></p><p>Uttarakhand, a region larger than Costa Rica, anticipates a temperature increase of 1.6 to 1.9 degrees Celsius by 2050. Residents are already witnessing changing weather patterns, glacial retreat, unpredictable rainfall, and altered cropping seasons, as outlined in the state’s climate change action plan.</p><p><strong>State’s Response to Climate Change:</strong></p><p>Uttarakhand’s climate action plan emphasizes assessing vulnerability and risks to sectors like agriculture. Water stress, floods, and changing crop yields are the main concerns. Certain districts like Almora, Champawat, Pauri Garhwal, and Tehri Garhwal face elevated water stress.</p><p><strong>Uttarakhand’s Recent Challenges:</strong></p><p>The devastating flood in Chamoli district in 2021 exemplified the impact of climate change. A glacier burst led to flash floods, affecting the region. Major hydropower projects were severely damaged, resulting in casualties and destruction.</p><p><strong>Future Recommendations:</strong></p><p>Mitigating the impacts of climate change requires a focus on sustainable growth. Policymakers should recognize the links between emissions, warming, glacier melt, and extreme weather events. Sustainable development practices and responsible urban planning are essential to preserving the fragile ecosystem of Uttarakhand.</p><p><strong>Conclusion:</strong></p><p>Dr. Pashupati Nath’s insights emphasize the need for immediate action to address the climate crisis in Uttarakhand. With rising temperatures and their consequent effects, preserving the delicate ecological balance of the region is of utmost importance. Eco-friendly development practices and thoughtful urban expansion are pivotal to securing Uttarakhand’s future against the backdrop of global warming.</p><p>By</p><p><strong>Dr Pashupati Nath</strong></p><p><strong>Assistant Professor</strong></p><p><strong>College of Smart Agriculture</strong></p>', '2023-09-06', '4', 1, 15, NULL, NULL, NULL, NULL, 100),
(16, 'Developing Smart Cities and Sustainable Urban Development', 'developing-smart-cities-and-sustainable-urban-development', 'uploads/blogs/9-1024x625.png', NULL, '<p><strong>Introduction</strong></p><p>Discover the journey of India’s urban transformation towards developing smart cities and fostering sustainable urban development. Explore the challenges posed by rapid urbanization and the initiatives taken by the Indian government to create livable and prosperous urban spaces. Dr. Nishant Raj Kapoor from COER University sheds light on the integration of technology, infrastructure, renewable energy, waste management, and citizen engagement in achieving this visionary goal.</p><p><strong>India’s Urbanization Challenge and Smart Cities Mission</strong></p><p>Understand the unprecedented urbanization India has undergone in recent decades, leading to significant challenges such as congestion, pollution, and resource demands. Explore the Smart Cities Mission launched by the Indian government in 2015, aiming to transform 100 cities into technologically advanced and sustainable urban centers. Learn how this initiative envisions enhancing infrastructure, livability, and inclusivity through cutting-edge technology and citizen engagement.</p><p><strong>Key Areas for Sustainable Smart Cities Development</strong></p><p>Dive into the six major areas crucial for developing sustainable smart cities in India, catering to the needs of the rapidly growing urban population. Explore how infrastructure development, sustainable energy solutions, smart governance, waste management, digital connectivity, and citizen engagement contribute to creating holistic and prosperous urban environments.</p><p><strong>COER University’s Role in Promoting Sustainable Smart Cities</strong></p><p>Discover COER University’s commitment to aligning education with Sustainable Development Goals (SDGs) for creating sustainable smart cities. Learn how education and training are essential for producing leaders who will contribute to the holistic growth of the nation. Explore how COER University’s efforts are in sync with the mission of developing smart cities and sustainable urban development.</p><p><strong>Dr. Nishant Raj Kapoor’s Insight on Smart Cities</strong></p><p>Quote: “Smart cities are not just built with bricks and mortar; they are forged by the seamless integration of technology, sustainability, and the aspirations of its citizens.” – Dr. Nishant Raj Kapoor.</p><p>Gain insights from Dr. Nishant Raj Kapoor, a visionary in the field of sustainable smart cities. Explore his perspective on the multifaceted approach required for building smart cities, emphasizing the harmonious blend of technology, sustainability, and citizen aspirations.</p><p><strong>Conclusion</strong></p><p>Explore India’s remarkable progress in developing smart cities and sustainable urban development. Understand how investments in research, education, technology, infrastructure, renewable energy, waste management, and citizen engagement have driven this mission forward. Recognize the importance of a holistic and inclusive approach, adapting to the diverse needs and challenges faced by different cities. Discover how India can create a sustainable and prosperous urban future through continuous learning and adaptation.</p><p><strong>Reference</strong></p><p>Reference: Kumar, Aman, Nishant Raj Kapoor, Harish Chandra Arora, Ashok Kumar, G. Saini, D. M. Nguyen, N. Kumar, and R. Shah. “Smart cities: a step toward sustainable development.” In Smart Cities: Concepts, Practices, and Applications, pp. 1-43. Boca Raton and London: CRC Press, 2022.</p><p>By incorporating SEO-friendly header tags, a concise meta description, and relevant keywords, this article becomes optimized for search engines. Readers can gain comprehensive insights into the development of smart cities and sustainable urban environments in India, exploring key areas, initiatives, and the role of COER University in this transformative journey.</p><p>By</p><p><strong>Dr. Nishant Raj Kapoor</strong></p><p><strong>Assistant professor </strong></p><p><strong>Department of Civil Engineering</strong></p>', '2023-09-06', '4', 1, 16, NULL, NULL, NULL, NULL, 123),
(17, 'The Electric Vehicle (EV) Revolution: Shaping a Sustainable Future', 'the-electric-vehicle-ev-revolution-shaping-a-sustainable-future', '', NULL, '<p><strong>Introduction</strong></p><p>Discover the imminent transportation revolution centered around electric vehicles (EVs), driven by the need for cleaner and more sustainable mobility solutions. Understand how the EV revolution offers a paradigm shift in transportation, leading to a greener and more efficient alternative to conventional vehicles.</p><p><strong>Benefits of Electric Vehicles</strong></p><p>Uncover the remarkable advantages of electric vehicles, from their positive environmental impact to increased energy efficiency. Learn how EVs contribute to reducing greenhouse gas emissions and improving air quality, playing a crucial role in combatting climate change.</p><p><strong>Environmental Impact</strong></p><p>Delve into how EVs significantly reduce tailpipe emissions, enhancing air quality and addressing environmental challenges associated with traditional vehicles.</p><p><strong>Energy Efficiency</strong></p><p>Understand the inherent energy efficiency of EVs, converting a higher percentage of grid energy to power at the wheels, leading to lower energy waste and operational costs.</p><p><strong>Noise Reduction</strong></p><p>Explore how electric vehicles’ quieter operation compared to internal combustion engine vehicles leads to reduced noise pollution, creating quieter and more pleasant urban environments.</p><p><strong>Energy Independence</strong></p><p>Learn how the shift to electric vehicles contributes to reduced reliance on imported fossil fuels, enhancing energy security and stability for countries.</p><p><strong>Technological Advancements</strong></p><p>Discover how the EV revolution drives technological advancements, from battery innovations to charging infrastructure, with far-reaching implications for various industries.</p><p><strong>Challenges and Opportunities</strong></p><p>Explore the challenges and opportunities presented by the electric vehicle revolution, ranging from infrastructure development to consumer awareness.</p><p><strong>Infrastructure Development</strong></p><p>Recognize the importance of establishing a robust charging infrastructure for widespread EV adoption. Collaboration between governments and private entities is vital to build comprehensive charging networks.</p><p><strong>Range Anxiety</strong></p><p>Understand how advancements in battery technology and fast-charging solutions are crucial in addressing range anxiety and instilling confidence in potential EV buyers.</p><p><strong>Affordability</strong></p><p>Explore how falling battery costs and government incentives are making electric vehicles more affordable, gradually leveling the playing field with traditional vehicles.</p><p><strong>Consumer Awareness</strong></p><p>Learn how educating consumers about the benefits and features of electric vehicles is pivotal in promoting their adoption and acceptance.</p><p><strong>Conclusion</strong></p><p>Embrace the significance of the electric vehicle revolution as it shapes the transportation landscape toward sustainability. Discover how advancements in technology will make EVs more accessible and practical for everyday use. Recognize the collaborative effort needed by governments, industries, and individuals to address challenges and seize the opportunities presented by this revolutionary shift. By embracing electric vehicles, we can create a cleaner, greener world, improve air quality, and contribute to a prosperous future.</p><p>By structuring the article with SEO-friendly header tags, relevant keywords, and a concise meta description, this content becomes optimized for search engines. Readers gain a comprehensive understanding of the electric vehicle revolution’s implications for a more sustainable and environmentally friendly transportation future.</p><p>By</p><p><strong>Dr. Mukul Dixit</strong></p><p><strong>Assistant Professor and Head</strong></p><p><strong>Department of Electrical and Electronics Engineering</strong></p>', '2023-09-06', '4', 1, 17, NULL, NULL, NULL, NULL, 114),
(18, 'Equipping Students for Emerging Technologies: Enhancing STEM Education', 'equipping-students-for-emerging-technologies-enhancing-stem-education', '', NULL, '<p><strong>Introduction</strong></p><p>Delve into the world of STEM education and its pivotal role in preparing students for careers in emerging technologies. Learn how STEM transcends conventional subjects, equipping students with essential skills and competencies to thrive in the dynamic challenges of the 21st century.</p><p><strong>Developing Problem-Solving Skills through STEM Education</strong></p><p>Discover the significant advantage of STEM education in nurturing essential problem-solving skills. Understand how students engage in hands-on, collaborative learning, applying scientific and mathematical concepts to real-world situations. Explore how this approach fosters innovative problem-solving abilities that are crucial for both professional endeavors and everyday life.</p><p><strong>Fostering Creativity and Innovation in STEM</strong></p><p>Uncover the invaluable aspect of STEM education that cultivates creativity and innovation. Learn how exposure to diverse disciplines, tools, and technologies sparks students’ curiosity and imagination. Explore how STEM encourages experimentation, design, and prototyping, empowering students to unleash their creative potential and ingenuity.</p><p><strong>Enhancing Communication and Collaboration Skills in STEM</strong></p><p>Recognize the crucial role of STEM education in improving communication and collaboration skills. Explore how students express their findings, opinions, and arguments using various modes and media. Understand how collaborative projects teach the value of active listening, respect for diverse perspectives, and effective teamwork.</p><p><strong>Promoting Critical Thinking and Ethics in STEM</strong></p><p>Delve into how STEM education promotes critical thinking and ethics. Learn how students are challenged to question assumptions, evaluate evidence, and consider consequences. Understand how exploring ethical dilemmas related to STEM fields equips students to apply moral principles and values in their personal and professional lives.</p><p><strong>Cultivating Lifelong Learning and Curiosity in STEM</strong></p><p>Explore how STEM education cultivates a love for lifelong learning and curiosity. Understand how students are exposed to the latest developments in STEM, fostering a growth mindset and a sense of wonder. Discover how STEM equips students to embrace new challenges and opportunities as they arise.</p><p><strong>Preparing Students for Diverse Career Opportunities in STEM</strong></p><p>Learn how STEM education prepares students for diverse career paths in emerging technologies. Explore how foundational knowledge and sought-after skills cater to sectors such as healthcare, engineering, information technology, and beyond. Discover how exposure to various STEM careers and role models inspires students to pursue their passions and aspirations.</p><p><strong>Conclusion</strong></p><p>Recognize the vital role of STEM education in preparing students for the evolving world of emerging technologies. Understand how it equips students with problem-solving skills, creativity, collaboration, critical thinking, and a passion for continuous learning. Explore the diverse career opportunities that STEM education unlocks across various sectors, empowering students to thrive in a rapidly changing landscape.</p><p>By incorporating SEO-friendly header tags, a concise meta description, and relevant keywords, this article becomes optimized for search engines. Readers can gain comprehensive insights into the significance of STEM education in preparing students for emerging technologies and diverse career paths.</p><p>By</p><p><strong>Dr. Sumit Kumar</strong></p><p><strong>Professor and Head</strong></p><p><strong>Department of AI and ML</strong></p>', '2023-09-06', '6', 1, 18, NULL, NULL, NULL, NULL, 119),
(19, 'Navigating the Future of Work in the Age of Automation', 'navigating-the-future-of-work-in-the-age-of-automation', '', NULL, '<p><strong>The Automation Revolution: Redefining Industries and Labor</strong></p><p>Discover how automation is reshaping various sectors, from manufacturing to IT, through the utilization of technology to streamline processes and minimize human labor. Understand its influence on jobs, especially those involving repetitive tasks.</p><p><strong>The Fourth Industrial Revolution and Job Evolution</strong></p><p>Explore the impending Fourth Industrial Revolution and its transformative effects on the job landscape. Learn about the shift from job creation to job destruction, prompting the need for individuals to acquire new skills to remain relevant.</p><p><strong>Adapting to Change: Embracing New Skills and Expertise</strong></p><p>Understand the importance of adapting to the changing job environment. Delve into the necessity of embracing new skills to meet the demands of the evolving job market and ensuring continued employability.</p><p><strong>Emphasis on Higher Cognitive, Social, Emotional, and Technological Skills</strong></p><p>Learn about the skills that will be in demand as automation reshapes the workforce. Explore how higher cognitive skills, social and emotional intelligence, and technological proficiency will take center stage, replacing mundane and manual tasks.</p><p><strong>The Role of Continuous Learning in Sustaining Employment</strong></p><p>Recognize the vital role of continuous learning in the face of automation. Discover how staying updated with the latest skills and technologies is crucial for professionals to secure their positions and thrive in the dynamic job landscape.</p><p><strong>Conclusion: Paving the Way for a Future of Resilience and Adaptability</strong></p><p>Reflect on the profound insights shared about the future of work in an automated world. Acknowledge the need for resilience and adaptability, encouraging a proactive approach to skill development and learning.</p><p>By structuring the article with SEO-friendly elements like header tags, a concise meta description, and relevant keywords, the content becomes optimized for search engines. This facilitates easy discovery and engagement for readers seeking information about the future of work in the era of automation.</p><p>By</p><p><strong>Dr. Gunjan Agarwal</strong></p>', '2023-09-06', '6', 1, 19, NULL, NULL, NULL, NULL, 106),
(20, 'Teachers Day', 'teachers-day', 'uploads/blogs/1.jpg', NULL, '<p><strong>Honoring Educational Excellence: A Vibrant Teachers’ Day Celebration at COER University</strong></p><p>COER University, a renowned institution dedicated to learning and enlightenment, holds its educators in the highest esteem. Recognizing that teachers are the pillars of knowledge and architects of societal progress, we extend our heartfelt gratitude to these remarkable individuals on World Teachers’ Day. Join us as we revisit the heartwarming festivities that graced our campus, highlighted by the esteemed presence of Dr. Ramesh Pokhriyal “Nishank,” former Education Minister, whose visit left an indelible mark of inspiration on our academic community.</p><p><strong>Dr. Ramesh Pokhriyal “Nishank” Graces the Occasion</strong></p><p>This year’s Teachers’ Day celebration at COER University was graced by the distinguished presence of Dr. Ramesh Pokhriyal “Nishank.” With his wealth of wisdom and extensive experience in education, Dr. Nishank captivated both students and faculty. His words resonated deeply, emphasizing the transformative power of education and the pivotal role played by teachers in nurturing future leaders and change-makers. Dr. Nishank’s visit served as a poignant reminder that dreams can be realized through diligence and dedication.</p><p><strong>Fostering Connections Through Interactive Engagement</strong></p><p>Beyond the inspiring speeches and profound insights, the essence of COER University’s Teachers’ Day celebration lay in the interactive engagements that strengthened the bonds between teachers and students, creating lasting connections.</p><p><strong>Unity in Diversity:</strong> The classic Tug of War embodied unity and teamwork, as students and educators joined forces, pulling in harmony towards a common goal.</p><p></p><p></p><p>Teachers’ Day at COER University was a jubilant celebration, a testament to the institution’s commitment to acknowledging the invaluable contributions of its educators. Dr. Ramesh Pokhriyal “Nishank’s” presence was the icing on the cake, further underscoring the transformative potential of education. As we pay tribute to the exceptional teachers who have illuminated countless lives, we also celebrate the importance of nurturing strong bonds and creating cherished memories throughout the educational journey. This Teachers’ Day served as a poignant reminder that while knowledge forms the foundation, the relationships and experiences shared along the way are equally vital, fostering a culture of excellence and unity within our academic community.</p>', '2023-09-20', '1', 1, 20, NULL, NULL, NULL, NULL, 172),
(21, 'Peering into the Future: COER University’s Job Fair', 'peering-into-the-future-coer-universitys-job-fair', 'uploads/blogs/job-fair-1024x679.jpg', NULL, '<p>In today’s fiercely competitive job market, securing a job offer can often seem like an uphill marathon. Students find themselves relentlessly pursuing the ideal opportunity to kickstart their careers. One indispensable stepping stone on this journey is the Job Fair, a transformative event meticulously organized over three weeks by COER University. These mock drives not only act as litmus tests for students but also equip them with vital skills, knowledge, and the confidence needed to navigate the real-world job hunt. In this blog post, we delve into the significance and impact of COER University’s Mock Placement Drive, shedding light on how it has emerged as an instrumental force shaping the futures of its students.</p><p><strong>Unpacking the Job Fair</strong></p><p>The Job Fair was thoughtfully designed to replicate the real-world recruitment process. Hosted within the secure confines of the institute campus, it provides students with a platform to assess their preparedness for the actual placement season. This event faithfully mirrors every facet of the hiring process, from resume submissions to written tests and from group discussions to interview sessions, ensuring that students traverse the entire journey towards securing a job offer.</p><p><strong>The Multifaceted Benefits of Job Fair:</strong></p><p>1. <strong>Skill Enhancement</strong>: The Mock Placement Drive empowers students with essential skills, encompassing resume crafting, aptitude testing, and interview etiquette. It serves as an exhaustive crash course, teaching them how to confidently present themselves to prospective employers.</p><p>2. <strong>Stress Reduction</strong>: The prospect of job interviews often triggers anxiety among students. The mock drive acquaints them with the process, substantially diminishing the fear and stress associated with the actual experience.</p><p>3. <strong>Confidence Building:</strong> As the adage goes, “practice makes a man perfect.” Through recurrent mock interviews and assessments, students develop confidence and refine their abilities.</p><p>4. <strong>Feedback and Improvement</strong>: After each mock interview or test, students receive constructive feedback from industry experts and faculty. This feedback proves invaluable in identifying areas for improvement and fine-tuning their approach.</p><p>5. <strong>Networking Opportunities</strong>: Mock Placement Drives frequently entail interactions with real industry professionals, affording students a unique opportunity to network and forge connections that may prove advantageous in the future.</p><p>6<strong>. Reality Check</strong>: For many students, the mock drive serves as a reality check, helping them gauge their employability and pinpoint areas that require further development.</p><p><strong>The Impact on Future Placements</strong></p><p>COER University’s Mock Placement Drive leaves an indelible mark on students’ future job prospects, with effects that ripple through their careers in the following ways:</p><p>1<strong>. Increased Employability</strong>: By honing their skills and gaining valuable feedback, students become more appealing to potential employers. They emerge better prepared to tackle real interviews and assessments, thereby elevating their prospects of securing job offers.</p><p>2. <strong>Boosted Confidence: </strong>Confidence stands as a linchpin in job interviews. The rigorous training of the mock drive instils confidence in students, enabling them to effectively showcase their talents and abilities.</p><p>3<strong>. Employer Collaboration</strong>: Companies participating in mock drives gain an early glimpse of the college’s talent pool. This often results in stronger employer-college relationships, an increase in internship opportunities, and even early job placements.</p><p>4. <strong>Enhanced Resumes</strong>: Experiences garnered during the mock drive furnish students with concrete examples to enrich their resumes. These experiences can be pivotal in leaving a lasting impression on potential employers.</p><p><strong>The Chronicles of Success</strong></p><p>Over the years, COER University has witnessed numerous success stories. Many students who initially grappled with interviews and aptitude tests have gone on to secure prestigious job offers from top-tier companies. This transformation is a testament to the power of practice, guidance, and unwavering perseverance.</p><p>In the fast-paced realm of career-building, adequate preparation often paves the way for success. COER University’s Job Fair exemplifies how educational institutions can empower students with the tools required to excel in the professional world. By enhancing skills, fostering confidence, and providing invaluable experiences, this event transcends mere simulation, acting as a launchpad towards future accomplishments. As COER University continues to nurture tomorrow’s leaders, the Mock Placement Drive undoubtedly remains an indispensable cornerstone in their journey towards professional excellence.”</p><p>Avinash Kumar B.tech ET, Batch 2020</p>', '2023-09-29', '7', 1, 21, NULL, NULL, NULL, NULL, 193),
(22, 'Highlights from G20 India’s Presidency: Shaping Global Diplomacy', 'highlights-from-g20-indias-presidency-shaping-global-diplomacy', 'uploads/blogs/g20-1024x576.png', NULL, '<p><strong>Prime Minister Narendra Modi’s Diplomatic Triumph:</strong></p><p>India’s G20 presidency has emerged as a diplomatic milestone, amplifying the concerns of the Global South. The outcomes of this summit hold significance for every Indian. Under India’s leadership, the G20 Summit garnered support from all member nations for a Leaders’ Declaration acknowledging the conflict in Ukraine without attributing blame. Prime Minister Modi chaired the Summit and advocated for reforming global institutions like the United Nations Security Council (UNSC), gaining support from the United States.</p><p><strong>G20 New Delhi Declaration:</strong></p><p>The 2023 G20 New Delhi Leaders’ Declaration, encompassing 83 paragraphs, achieved a remarkable 100 percent consensus, even with China and Russia in agreement. Notably, it broke from tradition by containing no footnotes or Chair’s Summary, marking a historic moment. This comprehensive declaration included numerous agreements in the Finance Track, 8 paragraphs addressing the Ukraine conflict’s economic implications, and emphasized strategies for strengthening multilateral development banks, regulating cryptocurrencies, and enhancing financial inclusion.</p><p><strong>Climate Change Commitments:</strong></p><p>The declaration underscored the urgency of mobilizing substantial funding for developing countries, targeting “US$5.8-5.9 trillion in the pre-2030 period” and “US$4 trillion per year for clean energy technologies by 2030” to achieve net-zero emissions by 2050. It called for a significant increase in climate funding, shifting from billions to trillions of dollars.</p><p><strong>African Union Joins the G20:</strong></p><p>In a historic move, the African Union, representing 55 African nations, gained full membership in the G20, akin to the European Union’s representation.</p><p><strong>India’s Global Leadership</strong>:</p><p>India strategically positioned itself as a champion for developing and underdeveloped nations, aligning with aspirations for a permanent UNSC seat. New Delhi actively sought support from the African continent, which wields 55 crucial votes.</p><p><strong>Diverse Attendees:</strong></p><p>The G20 Summit in Delhi attracted a diverse array of global leaders, including the President of the Union of Comoros and Chairperson of the African Union, alongside leaders from Germany, France, the UK, Turkey, Canada, Italy, South Korea, and Brazil.</p><p><strong>Notable Absences:</strong></p><p>Chinese President Xi Jinping and Russian President Vladimir Putin were absent, with Premier Li Qiang representing China and Foreign Minister Sergey Lavrov representing Russia.</p><p><strong>India-Middle East-Europe Economic Corridor (IMEC):</strong></p><p>During the summit, an MoU was signed among India, the U.S., Saudi Arabia, the European Union, the UAE, France, Germany, and Italy to establish the India-Middle East-Europe Economic Corridor. IMEC aims to promote economic development by fostering integration between Asia, the Arabian Gulf, and Europe, offering an alternative to China’s Belt and Road Initiative.</p><p><strong>Climate Action Debate:</strong></p><p>Despite the urgency of phasing out fossil fuels, G20 leaders did not reach a consensus, casting a shadow over forthcoming climate discussions in the UAE, where the G20 nations’ collective contribution to global emissions remains a crucial concern.”</p><p>In conclusion, India’s presidency of the G20 in 2023 marked a pivotal moment in global diplomacy. Prime Minister Narendra Modi’s leadership led to significant achievements, including unanimous support for acknowledging the Ukraine conflict without assigning blame and a historic 100 percent consensus on the G20 New Delhi Declaration. India’s role as a champion for developing nations and its outreach to the African Union showcased its commitment to shaping a more inclusive and equitable world order. In summary, India’s G20 presidency showcased the nation’s growing diplomatic influence and its commitment to addressing pressing global challenges. It highlighted the power of diplomacy and cooperation on the world stage, reminding us that together, nations can work towards a more sustainable, equitable, and prosperous future.”</p>', '2023-09-29', '7', 1, 22, NULL, NULL, NULL, NULL, 196),
(23, 'Embracing Engineering Excellence: Engineers’ Day Celebration at COER University', 'embracing-engineering-excellence-engineers-day-celebration-at-coer-university', 'uploads/blogs/en1.jpg', NULL, '<p>Every year, on September 15th, Engineers’ Day is celebrated with immense enthusiasm and passion throughout India. This date marks the birthday of one of India’s most esteemed engineers, Sir M. Visvesvaraya. Engineers’ Day serves as an opportunity to acknowledge and honour the invaluable contributions of engineers to society. At COER University this day transcends a mere celebration of technical prowess; it’s a platform to showcase the diverse talents, creativity, and innovation of its students. In this blog post, we invite you to join us on a journey through the vibrant Engineers’ Day celebration organized by the Disha Committee, which comprised of Project Exhibition, COER U Got Talent, Technical Workshop and Guest Lectures.</p><p><strong>The Project Exhibition:</strong></p><p>The Engineers’ Day celebration at COER reached new heights this year, elevating the Project Exhibition to the forefront of the event.</p><p><strong>Innovative Showcases</strong>: The Project Exhibition featured a dazzling array of projects that addressed pressing real-world challenges. From cutting-edge technological innovations to sustainable solutions, students presented a diverse range of projects that left attendees awe-inspired.</p><p><strong>Problem-Solving Prowess</strong>: Each project in the exhibition embodied the essence of engineering as a discipline dedicated to solving practical problems. Students at COER University showcased their prowess in identifying issues and developing innovative solutions that have the potential to transform industries and improve lives.</p><p><strong>Fostering an Innovation Ecosystem</strong>: The heightened emphasis on the Project Exhibition underscored COER University’s commitment to nurturing an ecosystem of creativity and innovation. It emphasized that engineering education is not just about theoretical knowledge but also about empowering students to be change-makers who can address real challenges in the world.</p><p><strong>COER Got Talent:</strong></p><p>This year’s Engineers’ Day celebration at COER University was made even more memorable with the inclusion of “COER Got Talent,” a talent show designed to let students shine in areas beyond their academic and engineering pursuits. This event aimed to unearth hidden talents among students and provide them with a stage to display their abilities.</p><p>It featured an impressive array of performances, ranging from mesmerizing dance routines that left the audience spellbound to heartfelt poetry recitations that touched the core. Students expressed their artistic talents through painting and other creative endeavours. The event also witnessed impressive displays of various games and sports, showcasing the well-rounded nature of COER University students.</p><p><strong>Technical Workshops</strong>: To keep students engaged and well-informed about the latest developments in engineering, a series of technical workshops were thoughtfully organized. These workshops provided hands-on experience and practical insights, enriching the knowledge of aspiring engineers.</p><p><strong>Enlightening Guest Lectures</strong>: Eminent engineers and industry experts graced the occasion with inspiring lectures that shed light on the real-world applications of engineering principles. These lectures served as motivational beacons for students, igniting their aspirations for greatness in their engineering careers.</p><p><strong>Conclusion:</strong></p><p>The Engineers’ Day celebration at the COER University, meticulously organized by the Disha Committee, was an unequivocal success. “COER U Got Talent” emerged as a testament to the diverse talents and capabilities of COER University’s students, emphasizing that engineers are not merely problem solvers but also creative thinkers and artists. The exhibition showcased that engineers aren’t just problem solvers but also creators of solutions that can bring about positive change in the world. This event underscored COER’s dedication to instilling in students the belief that engineering education is about fostering a well-rounded personality capable of excelling in multiple domains and making a significant impact on society through innovation.</p><p>By</p><p>Avinash Kumar</p><p>B.Tech (Electronics and Telecommunications )</p><p>Class of 2024</p>', '2023-10-09', '7', 1, 23, NULL, NULL, NULL, NULL, 201),
(24, 'Motivational Talk by Jaya Kishori ji (18th Sept 2023)', 'motivational-talk-by-jaya-kishori-ji-18th-sept-2023', 'uploads/blogs/jaya1.jpg', NULL, '<p>In reaffirming the timeless adage that “Half of her Beauty is her Brain,” JAYA KISHORI JI once again graced the spotlight. Her magnetic charm and unwavering devotion have drawn countless followers from around the globe. Her engagement with both students and faculty members at the College of Engineering Roorkee was a profound privilege. On the evening of September 18th, under the grand roof of Vardhman Auditorium, she brought enlightenment and enrichment. With her deep devotion to spirituality and devotional music, she has earned the title of ‘MEERA OF THE MODERN WORLD.</p><p><strong>The Warm Welcome:</strong></p><p></p><p>The news of Jaya Kishori Ji’s imminent visit to our university spread like wildfire, igniting a fervent buzz of excitement and anticipation among students and faculty alike. Her reputation as a spiritual luminary, renowned for her ability to forge profound connections with people, left everyone eagerly awaiting her presence. Finally, the day arrived, and the university’s campus buzzed with enthusiasm. The palpable anticipation among the audience was a testament to their eagerness to welcome Jaya Kishori Ji. Thousands of students congregated in tribute to her, eager to catch a glimpse of her charismatic, motivating, and inspiring personality.</p><p><strong>Impact on the Campus:</strong></p><p>She emphasized the significance of effective listening skills in nurturing one’s inner strength.  During her interaction with the audience, students and faculty members found answers to the questions that had been lingering in their minds.</p><p>Targeting the student audience, Jaya Kishori Ji made sure they grasped the true essence of success, the value of genuine friendships, and how to manage anger as young individuals. She pointed out that today’s generation possesses immense passion and energy but often lacks patience. Furthermore, she emphasized the importance of never disobeying parents under any circumstances.</p><p><strong>Conclusion:</strong></p><p>Jaya Kishori Ji’s visit to the College of Engineering Roorkee was an unforgettable experience that left an indelible mark on the hearts and minds of the entire university community. Her enlightening discourse, soul-stirring bhajans, and personal interactions touched the very core of our spiritual beings. Her presence served as a powerful reminder of the importance of spirituality, devotion, and their positive influence in our lives. Her teachings continue to inspire us to lead more meaningful and purposeful lives.</p><p>As we reflect on her visit, we are reminded that true spiritual leaders are not only those who speak eloquently but also those who embody their teachings. Jaya Kishori Ji’s visit was profoundly enriching for every member of the audience who had the privilege of witnessing her heartfelt presence. We are immensely grateful for the opportunity to have hosted her at our university, and her visit will remain etched in our memories as a perpetual source of inspiration. RADHE RADHE.</p><p>In conclusion, she treated the audience to one of her renowned songs: “Kishori Kuch Aisa intezam hojaye, Zubaan pe Radha Radha Radha naam hojaye.”</p>', '2023-10-09', '7', 1, 24, NULL, NULL, NULL, NULL, 207),
(25, 'Unlocking the Future: Recent Trends in IoT Reshaping Our World', 'unlocking-the-future-recent-trends-in-iot-reshaping-our-world', '', NULL, '<p><strong>Introduction:</strong></p><p>The Internet of Things (IoT) has emerged as a revolutionary force in the tech world, reshaping our interactions with the environment and our daily lives. As we navigate deeper into the digital age, IoT continues to evolve, spearheading innovation across various industries. In this article, we will explore some of the most exciting recent trends in IoT that are driving transformation and innovation, paving the way for a more connected and efficient future.</p><p><strong>1. Edge Computing:</strong></p><p>A game-changer in IoT, edge computing brings processing power to IoT devices, reducing latency and enhancing security. This trend is making IoT applications more efficient and reliable by enabling local data processing.</p><p><strong>2. 5G Connectivity:</strong></p><p>The rollout of 5G networks is set to revolutionize the IoT ecosystem. Faster and more reliable connectivity enables real-time applications like autonomous vehicles, remote surgery, and augmented reality, transforming industries like healthcare, transportation, and entertainment.</p><p><strong>3. AI and Machine Learning Integration:</strong></p><p>IoT devices are becoming smarter with AI and machine learning. They can analyze data on the fly, making intelligent decisions and predictions, opening new possibilities in predictive maintenance, personalized marketing, and smart cities.</p><p><strong>4. IoT in Healthcare:</strong></p><p>The healthcare industry is witnessing a profound transformation with IoT. Wearables, remote monitoring, and smart health applications empower patients to track vital signs, share data with healthcare providers, and receive personalized treatment, improving patient outcomes and healthcare system efficiency.</p><p><strong>5. Sustainable IoT:</strong></p><p>IoT contributes to a greener future with smart energy management, efficient agriculture, and waste management. These innovations play a crucial role in addressing climate change challenges.</p><p><strong>6. Security and Privacy:</strong></p><p>With the proliferation of IoT devices, security and privacy have become paramount. Robust security protocols, encryption techniques, and privacy regulations ensure the safety of data and user privacy.</p><p><strong>7. Blockchain and IoT:</strong></p><p>The integration of blockchain technology with IoT creates secure and transparent ecosystems, ensuring data integrity and preventing unauthorized access. This trend is particularly promising for supply chain management and goods tracking.</p><p><strong>8. Customized IoT Solutions:</strong></p><p>As IoT adoption grows, businesses are investing in tailor-made IoT solutions, offering flexibility, scalability, and resource optimization. Custom solutions cater to specific needs and drive efficiency. In conclusion, IoT is continually pushing the boundaries of innovation, enhancing our lives and business operations. From edge computing and 5G connectivity to AI integration and sustainability initiatives, IoT trends are steering us toward a brighter and more connected future. Embracing these trends and staying at the forefront of IoT developments will be vital for individuals and organizations seeking to thrive in this exciting era of technological advancement. The journey of IoT is far from over, and the future holds even more transformative possibilities. </p><p><strong>Ms. Sandhya Samant</strong></p><p><strong> Assistant Professor, Department of CSE (AI-ML)</strong></p>', '2023-10-25', '2', 1, 25, NULL, NULL, NULL, NULL, 219);
INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `short_description`, `description`, `blog_date`, `blog_type`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`, `wp_id`) VALUES
(26, 'Revolutionizing Civil Engineering with Artificial Intelligence (AI)', 'revolutionizing-civil-engineering-with-artificial-intelligence-ai', '', NULL, '<p><strong>Introduction:</strong></p><p>Artificial Intelligence (AI) is reshaping industries across the globe, and the field of Civil Engineering is no exception. In an era of unprecedented technological advancement, AI is revolutionizing the way civil engineers plan, design, construct, and manage infrastructure projects. In this article, we will explore the burgeoning scope of AI in Civil Engineering, highlighting how it is enhancing efficiency, sustainability, and innovation in the industry.</p><p><strong>1. Design Optimization and Simulation:</strong></p><p>AI-powered algorithms can analyze vast datasets and generate optimal designs for various civil engineering projects. From bridges to buildings, AI can simulate different design scenarios, helping engineers identify the most cost-effective and structurally sound solutions. This not only saves time but also reduces material wastage, contributing to sustainability.</p><p><strong>2. Structural Health Monitoring:</strong></p><p>AI plays a crucial role in the maintenance and monitoring of infrastructure. Through sensors and data analysis, AI systems can detect early signs of structural degradation or damage, allowing for timely repairs and preventive measures. This technology enhances safety and extends the lifespan of critical infrastructure.</p><p><strong>3. Construction Automation:</strong></p><p>Construction sites are becoming smarter with the integration of AI and robotics. Autonomous construction vehicles, drones, and robots are increasingly used for tasks such as excavation, concrete pouring, and bricklaying. These technologies improve efficiency, reduce labor costs, and enhance safety on construction sites.</p><p><strong>4. Predictive Maintenance:</strong></p><p>AI-driven predictive maintenance models are transforming how civil engineers manage infrastructure assets. By analyzing real-time data from sensors and historical maintenance records, AI can predict when equipment or structures are likely to fail, allowing for proactive maintenance and reducing downtime.</p><p><strong>5. Traffic Management and Smart Cities:</strong></p><p>AI is a key enabler of smart cities. Traffic management systems use AI algorithms to optimize traffic flow, reduce congestion, and enhance safety. Additionally, AI-powered surveillance systems can monitor urban environments, detect anomalies, and improve public safety.</p><p><strong>6. Environmental Sustainability:</strong></p><p>Civil engineers are increasingly focused on sustainability, and AI can play a vital role in this aspect. AI algorithms can optimize energy consumption in buildings, reduce water wastage, and even predict and mitigate environmental risks in large-scale projects.</p><p><strong>7. Cost Estimation and Risk Management:</strong></p><p>Accurate cost estimation and risk assessment are critical in civil engineering projects. AI can analyze historical project data, market trends, and external factors to provide more precise cost estimates and identify potential risks, allowing for better project planning and budget management.</p><p><strong>8. Collaboration and Project Management:</strong></p><p>AI-powered project management tools enhance collaboration among project stakeholders. These tools can streamline communication, automate administrative tasks, and provide real-time project insights, improving project delivery timelines and outcomes.</p><p><strong>Conclusion:</strong></p><p>The scope of artificial intelligence in Civil Engineering is vast and continues to expand rapidly. As we harness the power of AI, civil engineers are better equipped to address complex challenges and create sustainable, efficient, and resilient infrastructure. The integration of AI not only enhances the quality of civil engineering projects but also contributes to cost-effectiveness and environmental stewardship. For professionals in the field of Civil Engineering, staying updated with AI advancements and embracing these technologies can lead to more innovative and successful projects. AI is not just a tool but a catalyst for transformation, driving the industry toward a future of smarter, safer, and more sustainable infrastructure. It’s an exciting time to be part of the Civil Engineering community as we embark on this AI-powered journey into the future of construction and infrastructure development.</p><p><strong> By Prashant Kumar </strong></p><p><strong>Assistant Professor, Department of Civil Engineering</strong></p>', '2023-10-25', '2', 1, 26, NULL, NULL, NULL, NULL, 224),
(27, 'India’s New Regulations on Laptop and Computer Imports: A Double-Edged Sword', 'indias-new-regulations-on-laptop-and-computer-imports-a-double-edged-sword', '', NULL, '<p>In a recent development, the Directorate General of Foreign Trade (DGFT) in India announced new regulations regarding the import of laptops and computer equipment. The statement, released on August 3rd, initially required enterprises to obtain permits before importing these devices. However, due to concerns about its negative impact, a second notification was issued just a day later, offering a three-month respite. Consequently, starting from November 1, 2023, imports of laptops and computers will be “restricted.” The Ministry of Electronics and IT (MeitY) has also called upon companies to submit their production plans in India and seek advice on how to minimize laptop and personal computer imports. This move is seen as an attempt to bolster domestic manufacturing but comes with both potential benefits and challenges.</p><p><strong>Introduction:</strong></p><p>Laptops and computers have become indispensable in today’s era of rapid technological transformation. The imposition of import restrictions is expected to temporarily boost domestic laptop and computer manufacturing, with potential advantages including increased demand for local products, job creation, infrastructure investment, supply chain strengthening, and economic growth.</p><p><strong>Challenges and Concerns:</strong></p><p>However, these new regulations have sparked concerns. Dealing with licensing and bureaucratic hurdles may be seen as burdensome by businesses. The ban could also impact the import of Graphics Processing Units (GPUs). Despite India’s claims as an electronics manufacturing hub, it heavily relies on imports to meet domestic demand for laptops and personal computers. In the fiscal year 2022-23, over 75% of India’s $5.33 billion worth of laptop and computer imports came from China.</p><p><strong>Conclusion:</strong></p><p>While these import restrictions may boost domestic manufacturing in the short term, a cautious approach is necessary. Striking a balance between promoting domestic production and maintaining a globalized technology landscape would likely yield more sustainable results. The government should consider incentivizing local manufacturing through policies that foster innovation, invest in skill development, and address supply chain vulnerabilities. Collaborative efforts between governments, manufacturers, and consumers are vital to navigate the complex terrain of technology import restrictions, ensuring economic benefits without stifling innovation and consumer choice.</p><p><strong> By Vinay Saroha </strong></p><p><strong>Assistant Professor Department of Cyber Security</strong></p>', '2023-10-25', '6', 1, 27, NULL, NULL, NULL, NULL, 227),
(28, 'The Crucial Role of Mathematical Proficiency in Healthcare', 'the-crucial-role-of-mathematical-proficiency-in-healthcare', '', NULL, '<p>In the dynamic realm of healthcare, mathematical proficiency is a cornerstone for precision, efficiency, and superior patient outcomes. Medical professionals require a strong foundation in a variety of math skills, including Pre-Algebra, Geometry, Statistics, Probability, Differential Equations for Dynamics, and Optimization for Resource Management, to excel in their roles. These mathematical tools play a pivotal role in diagnostics, treatments, research, dynamics, and resource management in the medical field.</p><p>Pre-Algebra for Dosage Calculations:Pre-algebraic skills ensure accurate medication dosing. For instance, consider a nurse calculating the right dose of a painkiller for a patient based on their weight and the medication’s concentration, using pre-algebraic principles.</p><p>Geometry in Medical Imaging:Geometry is essential for precise measurements in medical imaging. Surgeons, for example, rely on geometric principles when planning and executing complex surgeries, ensuring minimal harm to healthy tissue.</p><p>Statistics for Data Analysis:Medical professionals use statistics to analyze data critically. In a clinical setting, statisticians help assess the effectiveness of a new drug by analyzing clinical trial data, identifying trends, and determining if the drug produces significant improvements in patient outcomes.</p><p>Probability in Epidemiology:Probability models are instrumental in epidemiology. During a pandemic, epidemiologists use probability to predict disease transmission. For example, they estimate the probability of an infected individual spreading the virus to others and use this data to guide public health measures.</p><p>Differential Equations for Dynamics:Differential equations model dynamic systems, particularly in cardiology. Cardiologists employ these equations to understand the heart’s electrical activity. They use this mathematical knowledge to detect irregularities like arrhythmias and design appropriate treatment plans.</p><p>Optimization for Resource Management:Optimization techniques are vital for efficient resource allocation in healthcare. Hospitals use optimization to schedule surgeries effectively. For example, optimization helps in assigning operating rooms and staff efficiently, reducing patient wait times.</p><p>These mathematical skills are essential for clinical practice, research, decision-making, and healthcare system optimization. They empower medical professionals to provide precise diagnoses, tailor treatments to individual needs, contribute to medical advancements, and manage resources effectively. These skills ensure the highest standard of patient care, contribute to ground-breaking research, and optimize resource allocation for improved healthcare management. Mathematical proficiency truly underpins the excellence of healthcare in the modern world.</p><p><strong> By Dr. Summiya Parveen</strong></p><p><strong> Assistant Professor Department of Mathematics</strong></p>', '2023-10-25', '8', 1, 28, NULL, NULL, NULL, NULL, 230),
(29, 'Uttarakhand: Devbhoomi – Land of Gods and Literary Inspiration', 'uttarakhand-devbhoomi-land-of-gods-and-literary-inspiration', 'uploads/blogs/uttarakhand1.png', NULL, '<p>Devbhoomi, which means “The Land of God,” holds a significant place in India’s religious landscape. Uttarakhand is famously known as ‘Dev Bhoomi’ or the ‘Land of the Gods’ due to its profound religious beliefs and spiritual heritage. This northern state is adorned with ancient temples, pilgrimage sites, and shrines, each steeped in mythological significance, dedicated to various Hindu deities.</p><p>Uttarakhand has a history that dates back to ancient times, with rishis and sadhus finding their abode in its serene landscapes. This region earned its title of Dev Bhoomi because it boasts an array of Hindu pilgrimage sites. Over the ages, it has witnessed the rule of several empires, including the Pauravas, Kushanas, Guptas, Katyuris, Palas, Chands, Parmars, and the British.</p><p>In recent times, Uttarakhand has evolved as a sought-after destination, captivating not just Indians but people from around the world. Visitors are drawn not only to its natural beauty but also its spiritual significance. This transformation has ignited the creative spark of Indian authors, resulting in a collection of remarkable texts, some of which have already been published, while others are in the pipeline.</p><p>These emerging texts offer a fresh perspective on Uttarakhand, shedding light on its unique charm and spiritual essence. Let’s explore some of these literary works:</p><p>1.”Uttarakhand ki Lok Kathayen” by Dr. Prabha Pant**: This work delves into the stories native to the hilly regions of Uttarakhand, uncovering the common motifs that underlie stories from across the globe. It beautifully showcases how Uttarakhand infuses its distinct storytelling flavor to impart profound life lessons.</p><p>2.”A Comprehensive Study of UTTARAKHAND” by Himanshu Kafaltia and Gunjan Sharma Kafaltia**: This comprehensive study is a treasure trove of information, divided into two major parts. The first section delves into the geographical, historical, environmental, economic, societal, cultural, governance, and policy aspects of the state. The second part takes readers on a journey through the history, geography, culture, dances, folk songs, and tourist destinations spanning all districts of Uttarakhand.</p><p>3. Books on archaeology and culture**: Notable mentions in this category include a legendary work by K.P. Nautiyal and “Garhwal Paintings” by Mukundilal, focusing on a specific subject.</p><p>The literary exploration of Uttarakhand continues, with numerous texts already available in Hindi, enriching the understanding of this magnificent state:</p><p>Uttarakhand presents not only a rich tapestry of religious beliefs and natural beauty but also hidden mysteries that continue to inspire writers to delve deeper into this enchanting state. The journey of literary exploration in Uttarakhand is far from over, with many more inspiring workson the horizon.</p>', '2023-10-25', '3', 1, 29, NULL, NULL, NULL, NULL, 233),
(30, 'Exploring Parallel Universes in Myth, Hinduism, and Modern Literature', 'exploring-parallel-universes-in-myth-hinduism-and-modern-literature', '', NULL, '<p>A parallel or alternate universe, dimension, or reality, is a hypothetical self-contained plane of existence, co-existing with each other. The summation of all potential alternate universes that organizes reality is often called a “Multiverse.” This concept is not limited to science fiction; it can be found in religious texts and myths. Hindu mythology, for instance, vividly portrays the idea of infinite universes.</p><p>In Hindu mythology, Lord Krishna, an avatar of Vishnu, shows Arjuna multiple cosmic creations and destructions in the Mahabharata. He explains that different universes exist within different parts of his body. Krishna’s revelation includes the existence of many Brahmas, each responsible for different universes, demonstrating the idea of a parallel multiverse.</p><p>A well-known story in Hindu mythology involves Lord Brahma’s attempt to verify Krishna’s divinity. Brahma sends Krishna’s friends and cows into deep sleep, but to his shock, upon his return, everything appears unchanged. In reality, Krishna, with his other avatars, had taken the places of his missing friends and cows. This story highlights the existence of parallel realities and alternate universes.</p><p>The concept of parallel universes is not confined to ancient traditions; it continues to captivate modern writers and scientists. Writers like Terry Pratchett (with Discworld) and C. S. Lewis (with The Chronicles of Narnia) have skillfully explored parallel worlds in their imaginative works. Indian writer Nayantara Ghosh’s “Ayame’s Parallel Universe” and H. G. Wells’ “Men Like Gods” also delve into the multiverse theory in literature.</p><p>While the scientific validity of parallel universes remains a subject of debate, it’s a concept that intrigues modern scientists. As our understanding of the universe evolves, the concept of parallel universes and alternate dimensions continues to inspire both creative storytelling and scientific exploration. In the future, we can expect to see further dimensions of this captivating concept.</p>', '2023-10-25', '3', 1, 30, NULL, NULL, NULL, NULL, 236),
(31, 'Autonomous Vehicles: Transforming Transportation Safety, Efficiency, and Economy', 'autonomous-vehicles-transforming-transportation-safety-efficiency-and-economy', '', NULL, '<p><strong>Introduction:</strong> Engagingly introduce the paradigm shift brought by autonomous vehicles, setting the stage for subsequent discussions.</p><p><strong>Core Sections:</strong> Elaborate on the evolution, safety, efficiency, economic, environmental impacts, challenges, public perception, and future prospects of autonomous vehicles.</p><p><strong>Conclusion:</strong> Summarize the transformative potential of autonomous vehicles, reiterating their benefits, challenges, and future implications.</p><p><strong>Visuals:</strong></p><p>Incorporate relevant images, info graphics, or videos illustrating autonomous vehicle technology, safety statistics, environmental impact, or future transportation concepts to enhance engagement and understanding.</p><p><strong>Links:</strong></p><p>Include authoritative sources, statistics, or case studies to support statements or predictions about the impacts and challenges of autonomous vehicles.</p><p><strong>Conclusion:</strong></p><p>By structuring content with clear headings, a compelling meta description, and strategic use of keywords, you can optimize the article for better search engine visibility. Visuals, relevant links, and LinkedIn sharing can enhance engagement and credibility, attracting a wider audience interested in autonomous vehicle technology and its implications in transportation.</p><p><strong><u>by </u></strong></p><p><strong><u>Ms.Abha Sharma</u></strong></p>', '2023-11-22', '2', 1, 31, NULL, NULL, NULL, NULL, 253),
(32, 'AI and Data Science Ethics: Guiding the Digital Revolution', 'ai-and-data-science-ethics-guiding-the-digital-revolution', 'uploads/blogs/AI-and-Data-Science-Ethics-Guiding-the-Digital-Revolution-1024x555.jpg', NULL, '<p><strong>Introduction:</strong> Begin with an engaging introduction, highlighting the transformative potential of AI and Data Science and introducing the importance of ethical principles in their development.</p><p><strong>Core Sections:</strong> Address each ethical concern separately (bias, privacy, accountability, etc.) and provide insights, examples, and potential solutions for each.</p><p>Conclusion: Summarize the significance of ethical considerations in AI and Data Science, stressing their essential role in ensuring responsible and beneficial technological advancements.</p><p><strong>Visuals:</strong></p><p>– Incorporate relevant images, graphs, or charts demonstrating ethical challenges or solutions in AI and Data Science to enhance engagement and comprehension.</p><p><strong>Links:</strong></p><p>– Include internal and external links to reputable sources, studies, or ethical guidelines supporting the discussion on AI and Data Science ethics.</p><p>By structuring the content with clear headings, a concise meta description, and strategic use of keywords, you can optimize the article for better search engine visibility. Visuals and relevant links can enhance engagement and credibility, while sharing on LinkedIn can extend its reach among a professional audience interested in ethical considerations in AI and Data Science.</p><p><strong><u>by</u></strong></p><p><strong><u> Dr. Ankush Joshi</u></strong></p>', '2023-11-22', '2', 1, 32, NULL, NULL, NULL, NULL, 249),
(33, 'Cyber Security in Software Engineering: Mitigating Vulnerabilities for Safe Systems', 'cyber-security-in-software-engineering-mitigating-vulnerabilities-for-safe-systems', '', NULL, '<p><strong>Introduction:</strong> Introduce the importance of cyber security in software engineering and the threat of vulnerabilities.</p><p><strong>Sections: </strong>Dive into the significance of cyber security, vulnerabilities in software, associated costs, strategies to address vulnerabilities, and a concluding message.</p><p><strong>Conclusion:</strong> Summarize key points, emphasizing the ongoing commitment to cyber security.</p><p><strong>Visuals:</strong></p><p>If available, include relevant images, charts, or info graphics to complement the content.</p><p><strong>Links:</strong></p><p>Incorporate internal and external links to credible sources or related articles to provide additional context or resources for readers.</p><p>By structuring the content with clear headings, a concise meta description, and strategic use of keywords, you can optimize this piece for improved search engine visibility. Additionally, integrating visuals and relevant links can enhance engagement and credibility. Posting on LinkedIn with appropriate hashtags and tagging relevant professionals can extend its reach among the professional audience interested in cyber security and software engineering.</p><p><strong>by </strong></p><p><strong>Mr.Bhupender Sharma</strong></p>', '2023-11-22', '2', 1, 33, NULL, NULL, NULL, NULL, 258),
(34, 'Drone Technology Evolution: From Military Roots to Everyday Uses', 'drone-technology-evolution-from-military-roots-to-everyday-uses', '', NULL, '<p><strong>Introduction:</strong> Start with a captivating introduction, highlighting the overarching evolution of drone technology.</p><p><strong>Timeline Sections:</strong> Detail each era’s significant advancements and transitions in drone technology, including historical developments and impactful milestones.</p><p><strong>Military Applications:</strong> Create a separate section detailing the diverse applications of drone technology in the military domain.</p><p><strong>Visuals:</strong></p><p>Include relevant images, diagrams, or videos illustrating the historical progression and various applications of drones, enhancing engagement.</p><p><strong>Links:</strong></p><p>– Incorporate internal and external links to credible sources, historical references, or detailed reports supporting the article’s context and technological evolution. By structuring the content with clear headings, a concise meta description, and strategic use of keywords, you can optimize the article for better search engine visibility. Visuals and relevant links can enhance engagement and credibility, while sharing on LinkedIn can extend its reach among a professional audience interested in drone technology and its historical evolution.</p><p><strong><u>by</u></strong></p><p><strong><u> Mr.Vikas Kumar</u></strong></p>', '2023-11-22', '2', 1, 34, NULL, NULL, NULL, NULL, 263),
(35, 'Edge AI: Advantages, Applications, and Future Trends', 'edge-ai-advantages-applications-and-future-trends', '', NULL, '<p><strong>Introduction:</strong> Begin with an engaging introduction explaining the concept of Edge AI and its significance in real-time computing.</p><p><strong>Core Sections:</strong> Discuss the benefits of Edge AI in detail, its impact on digital transformation, integration with edge computing, practical applications, and future trends in adoption.</p><p><strong>Conclusion:</strong> Summarize the impact of Edge AI on industries, predict its future trends, and emphasize its growing importance in the tech landscape.</p><p><strong>Visuals:</strong></p><p>Incorporate relevant images, diagrams, or info graphics illustrating Edge AI concepts, applications, or trends to enhance visual appeal and comprehension.</p><p><strong>Links:</strong></p><p>– Include credible sources, case studies, or industry reports to support statements or statistics related to the adoption and predicted trends of Edge AI.</p><p>By structuring the content with clear headings, a concise meta description, and strategic use of keywords, you can optimize the article for better search engine visibility. Visuals and relevant links can enhance engagement and credibility, while sharing on LinkedIn can extend its reach among a professional audience interested in Edge AI technologies.</p><p><strong>by Dr. Bhupender Singh Rawat</strong></p>', '2023-11-22', '2', 1, 35, NULL, NULL, NULL, NULL, 266),
(36, 'Enhancing Higher Education in Uttarakhand: Blended Learning & MOOCs Strategy', 'enhancing-higher-education-in-uttarakhand-blended-learning-moocs-strategy', '', NULL, '<p><strong>Introduction:</strong> Introduce the concept of Blended Learning &amp; MOOCs in the context of modern education systems and their importance in Uttarakhand.</p><p><strong>Sections:</strong> Explore the challenges faced by higher education in Uttarakhand, benefits of Blended Learning, and a concluding message emphasizing its potential impact.</p><p><strong>Conclusion:</strong> Summarize key points and highlight the potential of these innovative approaches for Uttarakhand’s educational development.</p><p><strong>Visuals:</strong></p><p>Incorporate relevant images, charts, or infographics supporting the content’s context to enhance engagement.</p><p><strong>Links:</strong></p><p>Include internal and external links to credible sources, reports, or related articles providing additional context or resources for readers interested in Uttarakhand’s higher education scenario.</p><p>By structuring the content with clear headings, a concise meta description, and strategic use of keywords, you can optimize this piece for improved search engine visibility. Additionally, integrating visuals and relevant links can enhance engagement and credibility. Posting on LinkedIn with appropriate hash tags and tagging relevant professionals can extend its reach among the professional audience interested in higher education strategies and innovation in Uttarakhand.</p><p><strong>by</strong> <strong>Mr.Harsh Pant</strong></p>', '2023-11-22', '1', 1, 36, NULL, NULL, NULL, NULL, 269),
(37, 'Impact of AI Development on Global Power Dynamics: Economics, Military, Diplomacy, and Society', 'impact-of-ai-development-on-global-power-dynamics-economics-military-diplomacy-and-society', '', NULL, '<p><strong>Introduction:</strong> Describe the significance of AI’s development in reshaping global power dynamics across various sectors.</p><p>Sections: Divided into Economic Transformations, Military Prowess, Diplomacy and Alliances, Socioeconomic Disparities, Technological Divide, and a Conclusion.</p><p><strong>Conclusion:</strong> Summarize key points and emphasize the importance of responsible AI utilization for global benefits.</p><p><strong>Visuals:</strong></p><p>– If available, include relevant images, charts, or info graphics to complement the content.</p><p><strong>Links:</strong></p><p>– Incorporate internal and external links to reputable sources or related articles to provide additional context or resources for readers.</p><p>By structuring the content with clear headings, a concise meta description, and strategic use of keywords, you can optimize this piece for improved search engine visibility. Additionally, integrating visuals and relevant links can enhance engagement and credibility. Posting on LinkedIn with appropriate hashtags can extend its reach among the professional audience interested in the topic.</p><p><strong>by  Dr. Gesu Thakur</strong></p>', '2023-11-22', '2', 1, 37, NULL, NULL, NULL, NULL, 273),
(38, 'The Quantum Internet: Secure Communication in a Changing World', 'the-quantum-internet-secure-communication-in-a-changing-world', '', NULL, '<p><strong>Introduction:</strong> Begin with an engaging introduction highlighting the potential of the quantum internet in ensuring secure communication.</p><p><strong>Core Sections:</strong> Explore the unique properties of the quantum internet, delve into Quantum Key Distribution (QKD), discuss challenges, advancements, and potential practical applications.</p><p><strong>Conclusion:</strong> Summarize the transformative impact of the quantum internet on secure communication, emphasizing its ongoing evolution and potential for the future.</p><p><strong>Visuals:</strong></p><p>Incorporate relevant images, diagrams, or illustrations explaining quantum principles or applications of the quantum internet to enhance visual appeal and comprehension.</p><p><strong>Links:</strong></p><p> Include reputable sources or studies to support claims or technological advancements related to the quantum internet. By structuring the content with clear headings, a concise meta description, and strategic use of keywords, you can optimize the article for better search engine visibility. Visuals and relevant links can enhance engagement and credibility, while sharing on LinkedIn can extend its reach among a professional audience interested in quantum technology and secure communication.</p><p><strong>by Ms Akriti Sharma</strong></p>', '2023-11-22', '2', 1, 38, NULL, NULL, NULL, NULL, 276),
(39, 'Revolutionizing Healthcare: Embracing IoT for Enhanced Patient Care', 'revolutionizing-healthcare-embracing-iot-for-enhanced-patient-care', 'uploads/blogs/Revolutionizing-Healthcare-1024x616.jpg', NULL, '<p><strong>Introduction: Unleashing The Potential Of Iot In Healthcare</strong></p><p>The Internet of Things (IoT) has ushered in a new era of healthcare, where wireless, interconnected devices redefine data handling without direct human interaction. This technology, instrumental in diagnosing, treating, and monitoring patients globally, proves pivotal in anticipating health risks and enhancing healthcare delivery. Policymakers, particularly in response to the COVID-19 pandemic, are actively shaping regulations to leverage technology for healthcare services, underscoring the critical role of established and emerging IoT technologies. This viewpoint paper aims to provide a concise summary of the current landscape.</p><p>1. IoT in Healthcare Delivery:</p><p>   – Facilitates data collection, transmission, and storage without human interaction.</p><p>   – Vital for diagnosing, treating, and monitoring patients, ensuring streamlined healthcare delivery.</p><p>2. Global Policy Shifts:</p><p>   – Policymakers worldwide respond to the COVID-19 pandemic by implementing rules for technology-driven healthcare.</p><p>   – Emphasizes the need for safe and effective treatment through IoT technologies.</p><p>3. IoT Device Surge:</p><p>   – Predicted surge to over 21 billion online devices globally in 2020.</p><p>   – IoT basics involve linking identifiable objects to the internet, including health-related data-gathering devices.</p><p>4. Evolution of Health Systems:</p><p>   – Shift towards technology-supported health delivery, transforming traditional models into virtual and distance modalities.</p><p>   – Effective incorporation of technology-assisted services during crises, emphasizing the importance of IoT technologies.</p><p>5. Smart Health Services Enabled by IoT:</p><p>   – IoT infrastructure powers smart health services through data collection, communication, and storage.</p><p>   – Enhances risk identification, diagnostics, treatments, and remote monitoring, empowering individuals in their healthcare journey.</p><p>6. Technological Innovations Impacting Healthcare:</p><p>   – Information technology innovations, including cloud computing, big data analytics, IoT, AI, and deep machine learning, revolutionize healthcare delivery.</p><p>   – Result in more convenient, effective, and individualized smart health care services.</p><p>7. Advancements in Prediction Skills:</p><p>   – Recent advancements in information computing technologies enable healthcare systems with sophisticated prediction skills within and beyond hospitals. In this connected healthcare landscape, IoT emerges as a transformative force, promising a future where technology shapes a more efficient, personalized, and accessible healthcare experience.</p><p><strong>by Nidhi Prajapati</strong></p>', '2024-02-03', '8', 1, 39, NULL, NULL, NULL, NULL, 281),
(40, 'Revolutionizing Industries: The Impact of IoT on Connectivity, Efficiency, and Decision-Making', 'revolutionizing-industries-the-impact-of-iot-on-connectivity-efficiency-and-decision-making', '', NULL, '<p>Introduction:</p><p>In the dynamic landscape of industry, the advent of the Internet of Things (IoT) has emerged as a pivotal force, reshaping how businesses operate and make critical decisions. IoT, at its core, serves as a catalyst for seamless connectivity, fostering real-time data exchange among devices. This transformative connectivity not only revolutionizes communication within industrial processes but also acts as a cornerstone for improving efficiency, minimizing downtime, and empowering decision-making capabilities. In this exploration, we delve into the multifaceted impact of IoT on the industrial sector, unraveling its potential to redefine operational paradigms and drive unprecedented advancements.</p><p>1. Seamless Connectivity:</p><p>   – IoT establishes interconnectedness between devices.</p><p>   – Enables a seamless flow of data in real-time.</p><p>2. Optimizing Communication:</p><p>   – Reshapes communication frameworks within industrial processes.</p><p>   – Enhances the exchange of information among devices.</p><p>3. Improved Efficiency:</p><p>   – Streamlines processes and workflows through continuous connectivity.</p><p>   – Optimizes resource utilization, contributing to overall efficiency.</p><p>4. Reduced Downtime:</p><p>   – IoT implementation facilitates real-time monitoring.</p><p>   – Enables predictive maintenance, minimizing downtime and enhancing system reliability.</p><p>5. Enhanced Decision-Making:</p><p>   – Provides valuable insights through continuous data exchange.</p><p>   – Empowers data-driven decision-making capabilities for better strategic choices.</p><p>In essence, the role of IoT in the industry extends beyond connectivity; it acts as a catalyst for operational excellence, resilience, and informed decision-making, marking a paradigm shift in how industries navigate the complexities of the modern business landscape.</p><p><strong>by  Mr. Anuj Rana</strong></p>', '2024-02-03', '2', 1, 40, NULL, NULL, NULL, NULL, 285),
(41, 'Revolutionizing Object Detection in Visual Scenes: Deep Learning Breakthroughs', 'revolutionizing-object-detection-in-visual-scenes-deep-learning-breakthroughs', '', NULL, '<p>Introduction:</p><p>Explore the transformative impact of deep learning on object detection in computer vision, highlighting its role in enhancing accuracy and efficiency across diverse applications.</p><p>Traditional Approaches vs. Deep Learning:</p><p>Compare the limitations of traditional object detection methods with the groundbreaking capabilities of deep learning, particularly Convolutional Neural Networks (CNNs). Emphasize how deep learning models automatically learn complex patterns, overcoming challenges like variations in lighting and diverse object appearances.</p><p>Convolutional Neural Networks (CNNs):</p><p>Delve into the pivotal role of CNNs as the cornerstone of deep learning-based object detection. Explain how these networks mimic human visual processing, capturing hierarchical features for precise object localization. Highlight the significance of convolutional and fully connected layers in the extraction and prediction process.</p><p>Regions of Interest and Proposals:</p><p>Describe the use of region proposal networks (RPNs) in optimizing object detection systems. Highlight how RPNs generate bounding box proposals for potential object locations, streamlining the search space and improving overall efficiency.</p><p>Anchor Boxes and Intersection over Union (IoU):</p><p>Explain the importance of anchor boxes as reference points in object detection. Introduce the Intersection over Union (IoU) metric, emphasizing its role in measuring the accuracy of predicted bounding boxes against ground truth, contributing to model refinement during training.</p><p>Popular Object Detection Architectures:</p><p>Present key deep learning architectures for object detection, such as Faster R-CNN, YOLO, and SSD. Highlight their unique features and successes, showcasing Faster R-CNN’s unified model, YOLO’s real-time processing capabilities, and SSD’s efficiency in predicting multiple bounding boxes.</p><p>Transfer Learning and Pre-trained Models:</p><p>Discuss the democratizing impact of transfer learning on deep learning for object detection. Emphasize the role of pre-trained models, particularly on large datasets like ImageNet, as a starting point for training specialized object detection models. Highlight the effectiveness of fine-tuning for domain-specific adaptation.</p><p>Challenges and Future Directions:</p><p>Address existing challenges in object detection, including occlusions, scale variations, and the need for extensive labeled datasets. Emphasize ongoing research efforts aimed at enhancing interpretability, robustness, and efficiency of object detection models.</p><p>Applications:</p><p>Illustrate the wide-ranging applications of object detection in domains such as autonomous vehicles, surveillance systems, medical imaging, and augmented reality. Emphasize the pivotal role accurate object identification plays in advancing various technologies.</p><p>Conclusion:</p><p>Summarize the revolutionary impact of deep learning on object detection, highlighting its significance in overcoming traditional limitations and propelling advancements in computer vision applications.</p><p><strong>by</strong> <strong>Mr. Kapil Kumar</strong></p>', '2024-02-03', '2', 1, 41, NULL, NULL, NULL, NULL, 288),
(42, 'Optimizing Electric Vehicle Charging with IoT: A Smart Approach to Sustainable Transportation', 'optimizing-electric-vehicle-charging-with-iot-a-smart-approach-to-sustainable-transportation', 'uploads/blogs/A-Smart-Approach-to-Sustainable-Transportation-1024x683.png', NULL, '<p>1: “Introduction”</p><p>Introduce the significance of transitioning to electric vehicles (EVs) for reducing carbon emissions. Highlight the challenges posed by the rapid growth in the EV market, particularly in terms of charging infrastructure.</p><p> 2: “IoT Smart Grids: A Game-Changer for EV Charging”</p><p>Discuss the role of IoT-based smart grids in addressing challenges related to identifying and coordinating optimal charging strategies for EV drivers. Emphasize the potential of a connected EV assistant to recommend the best time and place for refueling.</p><p> 3: “Integrated Charging Stations: Beyond Conventional Fueling”</p><p>Contrast EV charging stations with traditional gasoline fuel stations, emphasizing the connectivity and integration with third-party service providers. Explore the various protocols and back-end cloud infrastructure that ensure seamless charging operations.</p><p> 4: “The Key to EV Adoption: Robust Charging Infrastructure”</p><p>Highlight the importance of developing robust charging infrastructure for the successful adoption of electric vehicles. Stress the need for remote management and smooth operation of dispersed charging devices.</p><p> 5: “IoT in EV Charging: Convergence of OT and IT”</p><p>Explain how the Internet of Things (IoT) serves as a convergence of Operational Technology (OT) and Information Technology (IT) in the context of EV charging. Define the roles of OT and IT in managing physical properties and digital transformation aspects, respectively.</p><p> 6: “Components of IoT in EV Charging”</p><p>Detail the three major elements of IoT in EV charging: charging equipment, mobile app, and charging management platform. Explain their roles in generating telemetry data, managing service requests, and ensuring a seamless charging experience.</p><p> 7: “Continuous Monitoring and Data Presentation”</p><p>Explore how IoT in EV charging facilitates continuous monitoring and presents data through reports and dashboards. Highlight its role in notifying users about charging time and costs, enabling remote troubleshooting for charge point operators, and enhancing roaming services for network operators.</p><p>Conclusion: Summarize the transformative impact of IoT on EV charging, emphasizing its role in accelerating the adoption of electric vehicles. Conclude with the overarching benefits for consumers, charge point operators, and network providers in achieving sustainable transportation goals.</p><p><strong>Ms. Pooja Verma</strong></p>', '2024-02-03', '2', 1, 42, NULL, NULL, NULL, NULL, 291),
(43, 'Revolutionizing Energy: The Transformative Role of IoT in Smart Grid Technology and Applications', 'revolutionizing-energy-the-transformative-role-of-iot-in-smart-grid-technology-and-applications', 'uploads/blogs/The-Transformative-Role-of-IoT-in-Smart-Grid-Technology-and-Applications-1024x790.jpg', NULL, '<p>1. Aging Traditional Grids:</p><p>   – Inadequacies of traditional grid systems in meeting growing electricity demands.</p><p>2. Global Focus on Smart Grids:</p><p>   – European Union’s emphasis on sustainable, economic, and secure electricity supplies.</p><p>   – U.S. government’s decade-long commitment to smart and clean energy policies.</p><p>3. Smart Grid Components:</p><p>   – Electricity network with infrastructural, hardware, and software solutions.</p><p>   – Facilitates two-way communication for efficient power generation and distribution.</p><p>4. Characteristics of Smart Grids:</p><p>   – Self-sufficient distributed system.</p><p>   – Capable of utilizing various power sources, including renewables and storage.</p><p>   – Provides unprecedented control and management capabilities for suppliers and consumers.</p><p>5. Complex Network Structure:</p><p>   – Contrasts one-way communication of traditional grids with the complex, interactive nature of smart grids.</p><p>   – Enables multiple two-way interactions between equipment and participants in the supply chain.</p><p>6. Benefits Over Traditional Grids:</p><p>   – Demonstrated differences and advantages of smart grids over traditional counterparts.</p><p>   – Improved efficiency and adaptability to diverse scenarios.</p><p>7. Reasons for Smart Grid Adoption:</p><p>   – Addresses issues like wasted resources and lack of safety in traditional grids.</p><p>   – Essential for meeting the growing electricity demand in an optimized manner.</p><p>8. Household and City Adoption:</p><p>   – Encourages adoption of smart grid technology at both household and city levels.</p><p>   – Enables real-time monitoring and control of energy usage.</p><p>9. Improved Visibility and Problem Prevention:</p><p>   – Enhanced visibility of every element in the grid, including loads, equipment, and transmission lines.</p><p>   – Proactive problem detection to prevent costly issues like outages and downtime.</p><p>10. Overall Impact:   </p><p>  – Smart grid technology emerges as a critical solution for the evolving energy landscape.</p><p><strong>by Neetu Singh</strong></p>', '2024-02-03', '2', 1, 43, NULL, NULL, NULL, NULL, 294),
(44, 'The Rise of Cyber Crime in India: Navigating Detection, Prevention, and Response Strategies', 'the-rise-of-cyber-crime-in-india-navigating-detection-prevention-and-response-strategies', '', NULL, '<p>1. Digital Transformation in India:</p><p>   – Nation poised on the brink of digital development.</p><p>   – Government commitment to transforming into an advanced economy.</p><p>2. Government Initiatives:</p><p>   – Introduction of Digital Locker to eliminate paper-based document handling.</p><p>   – Demonetization driving widespread adoption of digital payments.</p><p>3. Cyber security Concerns:</p><p>   – Anticipation of a looming cyber war.</p><p>   – Daily evolution of hacker techniques poses a growing threat.</p><p>4. Economic Implications:</p><p>   – Potential for a surge in financial growth.</p><p>   – Increased investment and job creation in various sectors.</p><p>5. Digital Economy Challenges:</p><p>   – Growing digital storage of consumer and national data.</p><p>   – Rise in online transactions across businesses and government.</p><p>6. Targets for Cybercriminals:</p><p>   – India becomes a prime focus for digital criminals.</p><p>   – Urgent need for better preparation, particularly for Indian organizations.</p><p>7. National Cybersecurity Strategy:</p><p>   – Crucial for ensuring and empowering the digital economy.</p><p>   – Comprehensive approach needed from individual users to the government.</p><p>8. Preventive Measures:</p><p>   – Establishment of robust National Cyber Security Strategies.</p><p>   – Adjustment of national priorities for enhanced cybersecurity.</p><p>   – Strengthening network security infrastructure.</p><p>   – Implementation of a dedicated administration.</p><p>   – Prioritized training and education to enhance cybersecurity awareness. </p><p>In summary, as India navigates the challenges and opportunities of digital advancement, proactive steps such as robust cybersecurity strategies, national prioritization, and enhanced infrastructure are essential. The collaborative effort, spanning from individual users to the government, is crucial to secure the digital future and empower the nation’s digital economy.</p><p><strong>by Mr. Anurag Singh</strong></p>', '2024-02-03', '2', 1, 44, NULL, NULL, NULL, NULL, 297),
(45, 'Unleashing the Power of IoT in Electronic Waste Management', 'unleashing-the-power-of-iot-in-electronic-waste-management', '', NULL, '<p>Introduction:</p><p>– E-waste emerges as a global environmental concern due to rapid technological advancements.</p><p>– The Internet of Things (IoT) offers innovative solutions for efficient, transparent, and sustainable e-waste management.</p><p>Tracking and Monitoring:</p><p>– IoT enables real-time tracking of electronic devices throughout their lifecycle using sensors and RFID tags.</p><p>– Informed decision-making for manufacturers, recyclers, and regulators through data analysis.</p><p>Smart Bins and Collection Points:</p><p>– IoT-integrated smart bins optimize e-waste collection by autonomously determining fill levels and recording device types.</p><p>– Promotes responsible disposal, reduces costs, and optimizes collection routes.</p><p>Reverse Logistics:</p><p>– Streamlines reverse logistics with IoT-enabled tracking of returned devices, optimizing transportation routes and reducing carbon footprints.</p><p>Predictive Maintenance:</p><p>– IoT facilitates predictive maintenance in recycling facilities, minimizing downtime and reducing maintenance expenses.</p><p>– Ensures recycling facilities operate efficiently, enhancing e-waste processing capacity.</p><p>Data Analytics for Decision-Making:</p><p>– IoT-generated data analyzed for informed decision-making in optimizing recycling processes and designing sustainable products.</p><p>– Assists policymakers in formulating impactful regulations for the electronics industry.</p><p>Environmental Impact Assessment:</p><p>– IoT devices provide real-time environmental impact assessments near recycling facilities, monitoring air and water quality.</p><p>– Aids in developing greener and more sustainable e-waste management strategies.</p><p>Conclusion:</p><p>– Embracing IoT in electronic waste management is imperative for a sustainable future.</p><p>– Establishes a connected and intelligent system optimizing the entire lifecycle of electronic devices. – Promotes responsible consumer behavior and fosters innovation within the electronics industry, paving the way for a circular economy.</p><p><strong>by Dr. Rakhi Bhardwaj</strong></p>', '2024-02-03', '2', 1, 45, NULL, NULL, NULL, NULL, 300),
(46, 'Yoga and Technology: A Fantabulous Fusion', 'yoga-and-technology-a-fantabulous-fusion', '', NULL, '<p>Introduction:</p><p>– Technologically integrated yoga enhances life with ease, combining ancient postures with advanced meditation techniques.</p><p>– Strikes a balance between traditional yoga and modern tranquility, fueled by cutting-edge technology.</p><p>The Beginning:</p><p>– Practice yoga anywhere with smartphone apps like Pocket Yoga and Yoga Studio, transforming homes into personalized yoga studios.</p><p>Towards Development: Clothes, Gadgets, and Mats:</p><p>– Yogic clothes blend technology and yoga, translating movements into statistical data and offering real-time feedback.</p><p>– Wearable gadgets like Apple Watch and Jeevah Yoga smartwatch track heart rate, calories, and stress levels during yoga.</p><p>– Intelligent yoga mats innovate by personalizing postures for an enhanced yoga experience.</p><p>Globalization of Yoga:</p><p>– Yoga transcends regions, becoming a global phenomenon with around 29 million Americans practicing, spurred by the pandemic.</p><p>Final Words:</p><p>– Yoga evolves from an ancient art to a tech-infused way of life, simplifying wellness in a world shifting focus to health.</p><p> – Yogic technology continues to evolve, envisioning a future with tech yogis beyond traditional stereotypes.</p><p><strong>by Dr. Monika Panwar</strong></p>', '2024-02-03', '8', 1, 46, NULL, NULL, NULL, NULL, 302);
INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `short_description`, `description`, `blog_date`, `blog_type`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`, `wp_id`) VALUES
(47, 'Unlocking Agricultural Potential: The Power of Machine Learning in Farming Practices', 'unlocking-agricultural-potential-the-power-of-machine-learning-in-farming-practices', '', NULL, '<p>“Introduction”</p><p>Delve into the revolutionary role of machine learning in modern agricultural practices, introducing Assistant Professor Prachi Chauhan as the guide to explore the significance of ML in farming.</p><p>“ML in Agriculture: A Game-Changer”</p><p>Highlight the transformative force of machine learning in reshaping cultivation, resource management, and decision-making for farmers. Emphasize its ability to process vast data from sensors, satellites, and drones, enabling precision farming and efficient resource use.</p><p>“Precision Farming: Optimizing Resource Utilization”</p><p>Examine the paradigm shift brought by precision farming, where machine learning plays a central role in managing inputs based on real-time data and analytics. Showcase its impact on minimizing resource wastage, reducing environmental impact, and maximizing crop yields.</p><p>“Crop Monitoring and Disease Detection”</p><p>Explore the proactive and data-driven era ushered in by machine learning in crop monitoring and disease detection. Highlight the use of advanced technologies like drones and sensors to swiftly identify anomalies in crop health, enabling timely interventions and minimizing crop losses.</p><p>“Yield Prediction: A Pivotal Tool in Modern Agriculture”</p><p>Uncover the significance of machine learning in yield prediction, offering farmers valuable insights for strategic decision-making. Showcase its ability to analyze diverse datasets for accurate predictions, optimizing resource allocation, and aiding in risk management throughout the cultivation cycle.</p><p>Conclusion: </p><p>Summarize the overarching impact of machine learning in agriculture, emphasizing its role in promoting sustainability, productivity, and the evolution of farming practices. Encourage readers to embrace the potential of data-driven insights in optimizing farming operations for a more efficient and resilient agricultural future.</p><p><strong>by  Ms. Prachi Chauhan</strong></p>', '2024-02-03', '2', 1, 47, NULL, NULL, NULL, NULL, 305),
(48, 'Unmasking the Impact of Deepfake Technology on Society', 'unmasking-the-impact-of-deepfake-technology-on-society', 'uploads/blogs/Unmasking-the-Impact-of-Deepfake-Technology-1024x616.png', NULL, '<p>Unveiling the Influence of Deepfake Technology on Society</p><p>a student at Royal College of Pharmacy and Health Sciences, sheds light on the far-reaching consequences of Deepfake AI in society. Explore the transformative impact of Deepfake algorithms that generate convincing images, audio, and video hoaxes, posing a significant threat to the dissemination of trustworthy information.”</p><p>Understanding Deepfake: Digital Deception Unleashed</p><p>“Deepfake technology adeptly transforms existing source content, seamlessly swapping one person for another or creating entirely fabricated content.  underscores the dangers of this technology, particularly in its ability to produce false information that masquerades as coming from reliable sources.”</p><p>The Anatomy of Deepfake Algorithms</p><p>“Delve into the core of Deepfake technology as it employs two crucial algorithms: the generator and the discriminator.  explains how the generator crafts initial fake digital content, while the discriminator analyzes and refines its realism. This iterative process enhances the generator’s ability to create convincing content, while the discriminator becomes more adept at identifying flaws.”</p><p>Generative Adversarial Networks (GANs): Crafting Realism Through Deep Learning</p><p>” unravels the intricacies of Generative Adversarial Networks (GANs), the driving force behind Deepfake algorithms. GANs utilize deep learning to recognize patterns in real images, applying these insights to create sophisticated fakes. Discover the meticulous process involved in generating deepfake photographs and videos, capturing details, perspectives, and even behavior, movement, and speech patterns.” </p><p>“As  provides insights into the impact of Deepfake technology, it becomes evident that the ability to generate convincing hoaxes poses serious challenges for society. Stay informed about the evolving landscape of AI-generated content and its potential consequences.”</p><p><strong>by Mr.Anant Koshal</strong></p>', '2024-02-03', '2', 1, 48, NULL, NULL, NULL, NULL, 308),
(49, 'Introduction to Generative AI', 'introduction-to-generative-ai', 'uploads/blogs/Introduction-to-Generative-AI-1024x538.jpg', NULL, '<p>Introduction:</p><p>Generative AI, or Generative Artificial Intelligence, represents a category of artificial intelligence systems focused on producing novel content or data resembling existing information. Employing algorithms, often rooted in deep learning, these systems generate diverse outputs, spanning images, text, music, and even entire scenarios.</p><p>Key Concepts and Types:</p><p>1. Generative Models:</p><p>   Autoencoders: Encode and decode input data into a lower-dimensional representation, applicable for various generative tasks.</p><p> Generative Adversarial Networks (GANs): Comprising a generator and a discriminator, GANs engage in adversarial training, with the generator creating realistic data and the discriminator distinguishing between real and generated data.</p><p>2. Natural Language Processing (NLP) Models:</p><p>   Recurrent Neural Networks (RNNs):* Used for sequential data generation, like text, generating content character by character or word by word.</p><p>   Transformers:Transformer-based models, exemplified by OpenAI’s GPT, excel in language generation, producing coherent and contextually relevant text.</p><p>3. Image Generation:</p><p>   Variational Autoencoders (VAEs): Learn a probabilistic mapping between input data and a latent space, suitable for generating diverse images.</p><p>  StyleGAN: A GAN variant tailored for realistic image generation, excelling in creating high-quality, diverse, and controllable synthetic images.</p><p>4. Applications:</p><p>   Content Creation: Used in generating realistic images, artwork, and entire scenes.</p><p>   Text Generation: Applied for writing assistance, content creation, or mimicking specific writing styles.</p><p>   Data Augmentation: Employed to generate additional training data, enhancing the performance of other machine learning models.</p><p>5. Challenges:</p><p>   Ethical Concerns: Notably with deepfake technology, raising concerns about the generation of realistic fake content.</p><p>  Bias and Fairness: Risk of amplifying biases from training data, leading to biased generated content. </p><p>Generative AI has demonstrated significant progress, continually evolving and impacting diverse industries. As the technology advances, addressing ethical considerations is paramount to ensure responsible deployment.</p><p><strong>by Kamal Kant Verma</strong></p>', '2024-02-03', '2', 1, 49, NULL, NULL, NULL, NULL, 311),
(50, 'Exploring Image Synthesis with Generative Adversarial Networks (GANs)', 'exploring-image-synthesis-with-generative-adversarial-networks-gans', 'uploads/blogs/Exploring-Image-Synthesis-with-Generative-Adversarial-Networks-GANs-1024x576.jpg', NULL, '<p>Image Synthesis Using Generative Adversarial Networks (GANs)</p><p>Generative Adversarial Networks (GANs) have revolutionized computer vision by generating realistic images from random noise. This post explores the applications and mechanisms behind GANs in image synthesis.</p><p>What are GANs?</p><p>GANs, designed by Ian Goodfellow and colleagues in 2014, are machine learning frameworks with two components: a generator and a discriminator. The generator produces data instances, and the discriminator evaluates their authenticity. The generator refines its output based on the discriminator’s feedback.</p><p>Image Synthesis with GANs</p><p>Image synthesis involves creating new images, often by modifying existing ones. GANs excel in this area, generating realistic images almost indistinguishable from real ones. The process begins with the generator creating an image from random noise. The discriminator then evaluates it, and if deemed fake, the generator adjusts to improve the next output. This iterative process continues until the discriminator can’t distinguish generated from real images.</p><p>Applications of GANs in Image Synthesis</p><p>GANs find diverse applications in image synthesis:</p><p>1. Art Creation: Artists use GANs to produce unique artworks.</p><p>2. Medical Imaging: GANs generate medical images for research and training.</p><p>3. Entertainment: GANs contribute to creating realistic characters and environments in video games and movies.</p><p>Conclusion</p><p>GANs have significantly advanced image synthesis, unlocking possibilities across various domains. As the technology evolves, we anticipate even more innovative applications in the future.</p><p><strong>by Umesh Chandra Garjola</strong></p>', '2024-02-03', '2', 1, 50, NULL, NULL, NULL, NULL, 314),
(51, 'Navigating the Future: Unveiling IoT Breakthroughs – A Comprehensive Guide', 'navigating-the-future-unveiling-iot-breakthroughs-a-comprehensive-guide', '', NULL, '<p>Welcome to the Era of Limitless Connectivity:  Unveils IoT Breakthroughs”</p><p>Introductionunveils the revolutionary strides in IoT technology, offering a comprehensive guide to the latest breakthroughs. Explore limitless connectivity, where devices seamlessly communicate, embedding intelligence into our daily lives and unlocking unprecedented opportunities across various industries.”</p><p>“Revolutionizing Data Processing: The Convergence of IoT and Edge Computing”</p><p>Content 1:”Discover how the convergence of IoT and edge computing is transforming data processing.  explains how bringing computational power closer to the source minimizes latency, enabling real-time decision-making. Explore breakthrough applications in smart cities and industrial automation.”</p><p>“A Quantum Leap for IoT: 5G Connectivity Unleashed”</p><p>“Fasten your seatbelts as  explores how 5G takes IoT to new heights. Unleash the possibilities with high speed, low latency, and increased device density. From connected healthcare to smart homes, discover how 5G is propelling the future of IoT.”</p><p>“The Intelligent Core of IoT: AI and Machine Learning Integration”</p><p>“Witness IoT devices getting smarter with  as she delves into the integration of Artificial Intelligence (AI) and Machine Learning (ML). Learn how these technologies analyze patterns, make predictions, and adapt in real-time, revolutionizing the efficiency and autonomy of IoT applications.”</p><p>“Securing Trust in a Connected World: Exploring Blockchain in IoT”</p><p>“Security is paramount in the IoT ecosystem. Join  in exploring how blockchain technology reinforces trust and transparency. Discover its decentralized and tamper-resistant framework, along with applications in supply chain management and beyond.”</p><p>“IoT Meets Energy Efficiency: Sustainable Solutions Explored”</p><p>“As the IoT network expands, sustainability takes center stage. Dive into innovations making IoT more energy-efficient, from low-power processors to energy harvesting techniques. Witness how these advancements pave the way for a greener and more sustainable IoT ecosystem.”</p><p>“Precision in Data Collection: Sensor Revolution in IoT”</p><p>” celebrates sensors as the unsung heroes of IoT. Explore recent advancements in sensor technologies, from cutting-edge environmental sensors in agriculture to precise healthcare sensors. These innovations amplify the accuracy and scope of data collection within the IoT ecosystem.”</p><p>Conclusion:”Embrace the Connected Future: ‘s Vision”</p><p><strong>Ms.Anita Singh</strong></p>', '2024-02-03', '2', 1, 51, NULL, NULL, NULL, NULL, 317),
(52, 'Optimizing Data Visualizations: Effective Testing and Validation Strategies', 'optimizing-data-visualizations-effective-testing-and-validation-strategies', '', NULL, '<p>1. User-Centric Testing:</p><p>   – Engage with the target audience for valuable feedback.</p><p>   – Conduct usability testing for intuitive and meaningful interactions.</p><p>2. Accuracy Verification:</p><p>   – Rigorously validate visualizations by cross-referencing with the original dataset.</p><p>   – Prevent unintentional misrepresentation for credible insights.</p><p>3. Cross-Browser and Device Compatibility:</p><p>   – Test across different browsers and devices for a seamless user experience.</p><p>   – Ensure responsiveness and adaptability to various screen sizes.</p><p>4. Color Accessibility Testing:</p><p>   – Evaluate color choices for accessibility to different vision abilities.</p><p>   – Use color contrast tools for enhanced readability and inclusivity.</p><p>5. Interactive Feature Validation:</p><p>   – Verify functionality of interactive elements for a deeper user understanding.</p><p>   – Ensure features enhance without causing confusion.</p><p>6. Comparative Analysis:</p><p>   – Conduct comparative analysis with alternative visualization methods.</p><p>   – Confirm chosen visualization type is most effective for clarity and engagement.</p><p>7. Consistency Across Visualization:</p><p>   – Maintain visual consistency for a coherent and understandable narrative.</p><p>   – Ensure consistent design elements, color schemes, and labeling.</p><p>8. Performance Testing:</p><p>   – Assess performance, especially with large datasets.</p><p>   – Optimize rendering speed for a smooth user experience, avoiding delays.</p><p>9. Feedback Mechanism:</p><p>   – Implement a feedback mechanism for issue reporting and suggestions.</p><p>   – Facilitate continuous improvement based on user insights.</p><p>10. Accessibility Standards Compliance:</p><p>    – Ensure compliance with accessibility standards for usability by individuals with disabilities.     – Provide alternative text, keyboard navigation, and other accessibility features.</p><p><strong>by Sunil Singh</strong></p>', '2024-02-03', '2', 1, 52, NULL, NULL, NULL, NULL, 320),
(53, 'AI-Powered Robots Shaping Engineering: The Rise of Intelligent Machines', 'ai-powered-robots-shaping-engineering-the-rise-of-intelligent-machines', 'uploads/blogs/AI-Powered-Robots-Shaping-Engineering-1024x574.jpg', NULL, '<p>AI-Powered Robots: Revolutionizing Engineering </p><p>Explore the impact of sophisticated algorithms and intelligent robots on the technical landscape, transforming traditional engineering practices and opening new possibilities for innovation.</p><p>Automation of Repetitive Tasks by Intelligent Machines </p><p>Discover how AI-enabled robots are reshaping industries by automating repetitive and physically taxing operations, increasing productivity, and reducing human error in various technical occupations.</p><p>Overcoming Dangerous Environments with AI Robotics  </p><p>Learn how intelligent robots equipped with advanced sensors and AI-driven decision-making skills are venturing into hazardous areas, collecting vital data, and performing essential tasks to advance scientific understanding while ensuring human safety.</p><p>Collaboration Between Humans and Robots in Engineering </p><p>Explore the concept of human-robot collaboration, where engineers work alongside robots to manage sophisticated projects, share tasks, and enhance each other’s abilities, leading to increased creativity, problem-solving, and job satisfaction.</p><p>Ethical Considerations in the Integration of AI in Robotics </p><p>Understand the ethical challenges raised by the emergence of intelligent robots, including concerns about safety, control, responsibility, and the need for transparent development and strong ethical frameworks to ensure the responsible deployment of AI in robotics.</p><p>Conclusion </p><p>AI-powered robots are not replacing engineers but evolving into powerful instruments that enhance human talents and pave the way for a more promising and effective future for the engineering profession. Embracing the advent of robots and fostering collaboration between humans and machines can lead to transformative advancements in productivity, safety, and creativity across various engineering fields.</p><p><strong><strong>by Mr. Bhubaneswar Pratap Singh</strong></strong></p>', '2024-02-29', '2', 1, 53, NULL, NULL, NULL, NULL, 324),
(54, 'Plastic Bans in India: A Step Towards Sustainable Waste Management (Part 1)', 'plastic-bans-in-india-a-step-towards-sustainable-waste-management-part-1', '', NULL, '<p>Plastic Bans in India: A Step Towards Sustainability </p><p>Explore the movement towards banning single-use plastics in India, highlighting the efforts of various states to tackle plastic pollution and promote sustainable waste management practices.</p><p>Maharashtra’s Pioneering Plastic Ban in 2018 </p><p>Learn about Maharashtra’s role as the first Indian state to implement a comprehensive ban on single-use plastics in March 2018, setting a precedent for other states to follow.</p><p>Recent Bans on Single-Use Plastics in Indian States </p><p>Discover the timeline of plastic bans in Indian states, including Tamil Nadu, Telangana, Himachal Pradesh, Sikkim, and Odisha, reflecting a growing awareness of the environmental impact of plastic pollution.</p><p>Impact of Plastic Bans on Waste Management </p><p>Understand the significance of plastic bans in addressing waste management challenges, reducing plastic usage, and promoting alternative eco-friendly solutions to minimize environmental harm.</p><p>Importance of Sustainable Practices in Plastic Management </p><p>Explore the importance of adopting sustainable practices in plastic management, emphasizing the need for responsible consumption, recycling initiatives, and public awareness campaigns to achieve long-term environmental goals.</p><p>Conclusion </p><p>The implementation of plastic bans across Indian states marks a significant step towards sustainable waste management and environmental conservation. By embracing alternative solutions and promoting eco-friendly practices, India can pave the way for a cleaner and healthier future for generations to come.</p><p><strong>by  Mr. Neeraj Kumar Tiwari</strong></p>', '2024-02-29', '4', 1, 54, NULL, NULL, NULL, NULL, 329),
(55, 'Python Applications in Water Resources Engineering: Harnessing Data for Informed Decisions', 'python-applications-in-water-resources-engineering-harnessing-data-for-informed-decisions', 'uploads/blogs/python-1024x576.png', NULL, '<p>Content:</p><p>Leveraging Python for Water Resources Data Analysis </p><p>Discover how Python libraries like NumPy, Pandas, and Matplotlib enable engineers to analyze and visualize water-related datasets effectively, facilitating informed decision-making.</p><p>Hydrological Modelling with Python: Simulating Water Systems </p><p>Explore the realm of hydrological modeling using Python, leveraging libraries like HEC-HMS to simulate and analyze the behavior of water systems, aiding in flood risk assessment and management.</p><p>Geographic Analysis in Water Resource Engineering using Python </p><p>Learn how Python, along with libraries such as GDAL and Fiona, empowers engineers to perform geospatial analysis, including watershed mapping and precipitation distribution assessment, enhancing understanding and management of water resources.</p><p>Python for Hydraulic Modelling: Analyzing River Flows </p><p>Dive into hydraulic modeling with Python, utilizing interfaces like HEC-RAS to simulate river flows, evaluate hydraulic behavior, and mitigate flood risks, contributing to effective water resource management.</p><p>Time Series Analysis in Water Resources: Forecasting with Python </p><p>Explore the crucial role of time series analysis in water resource engineering, employing Python libraries like Statsmodels and Pandas for forecasting hydrological patterns and trends, aiding in decision-making and planning.</p><p>Conclusion </p><p>Python serves as a versatile tool in water resources engineering, facilitating data analysis, modeling, and decision support. By harnessing Python’s capabilities, engineers can navigate the complexities of water systems, optimize resource management, and ensure sustainable water use for the future.</p><p><strong>by Mr. Lovejeet Singh</strong></p>', '2024-02-29', '2', 1, 55, NULL, NULL, NULL, NULL, 333),
(56, 'Pipe Composting Technology (PCT): Nudging SDGs through Sustainable Waste Management', 'pipe-composting-technology-pct-nudging-sdgs-through-sustainable-waste-management', '', NULL, '<p>Pipe Composting Technology (PCT): Revolutionizing Waste Management </p><p>Explore how Pipe Composting Technology (PCT) is transforming waste management practices, particularly in rural areas, by converting organic waste into valuable compost using PVC pipes.</p><p>Converting Organic Waste into Compost with PVC Pipes </p><p>Learn about the process of implementing PCT, which involves using PVC pipes buried vertically in the ground to decompose organic waste such as leftover food, fruit and vegetable peels, and agricultural waste into nutrient-rich compost.</p><p>Environmental Benefits of Pipe Composting Technology </p><p>Discover the environmental advantages of PCT, including its contribution to waste reduction, preservation of the environment, and promotion of clean and hygienic surroundings within school campuses and communities.</p><p>Role of PCT in Promoting Sustainable Development Goals (SDGs) </p><p>Understand how PCT aligns with the United Nations Sustainable Development Goals (SDGs) by promoting responsible consumption and production, sustainable cities and communities, and climate action through effective waste management practices.</p><p>Implementation of PCT in Assam under “Swachhata Hi Seva” Campaign </p><p>Explore the successful implementation of PCT in Assam as part of the “Swachhata Hi Seva” campaign, highlighting its inclusivity and effectiveness in addressing local waste management challenges.</p><p>Conclusion  Pipe Composting Technology (PCT) offers a sustainable solution to organic waste management, contributing to environmental preservation and the achievement of Sustainable Development Goals (SDGs). By promoting PCT, communities can create cleaner and healthier environments while fostering a culture of sustainability and responsible waste management practices.</p><p><strong>by Mr. Amardeep Sharma</strong></p>', '2024-02-29', '2', 1, 56, NULL, NULL, NULL, NULL, 336),
(57, 'Understanding Structural Health Monitoring (SHM) in Engineering Structures', 'understanding-structural-health-monitoring-shm-in-engineering-structures', 'uploads/blogs/Understanding-Structural-Health-Monitoring-SHM-1024x727.png', NULL, '<p>Significance of Structural Health Monitoring (SHM) </p><p>Explore the critical role of SHM in establishing damage detection and assessing the current condition of engineering structures, ensuring their longevity and safety.</p><p>Objectives of Structural Health Monitoring </p><p>Learn about the key objectives of SHM, including performance enhancement, monitoring structures affected by external factors, and improving future design based on experience.</p><p>Steps of Structural Health Monitoring </p><p>Discover the sequential process of SHM, from detecting and locating damage to identifying types and quantifying severity, enabling effective maintenance and repair strategies.</p><p>Enhancing Structural Performance through SHM </p><p>Understand how SHM enables proactive maintenance and performance enhancement of structures, minimizing downtime and optimizing operational efficiency.</p><p>Proactive Maintenance and Performance Enhancement with SHM </p><p>Explore the benefits of proactive maintenance facilitated by SHM, leading to improved structural reliability, reduced maintenance costs, and enhanced overall performance.</p><p>Conclusion </p><p>By implementing structural health monitoring practices, engineers can ensure the long-term integrity and safety of engineering structures, contributing to sustainable infrastructure and safer communities.</p><p><strong>by Mr. Sachin Kumar Saini</strong></p>', '2024-02-29', '8', 1, 57, NULL, NULL, NULL, NULL, 341),
(58, 'Strengthening of RC Columns using FRP Composites: Enhancing Structural Integrity', 'strengthening-of-rc-columns-using-frp-composites-enhancing-structural-integrity', '', NULL, '<p>Strengthening RC Columns with FRP Composites </p><p>Explore the use of fiber-reinforced polymers (FRP) in strengthening and rehabilitating reinforced concrete (RC) structures, focusing on the application of FRP jackets for external confinement of RC columns.</p><p>Application of FRP Jackets for External Confinement </p><p>Learn about the process of externally wrapping RC columns with glass or carbon-fiber-reinforced polymer (CFRP) jackets to provide effective confinement, preventing sudden and catastrophic failures during seismic events.</p><p>Importance of FRP in Enhancing Structural Integrity </p><p>Discover how FRP confinement enhances the resistance capacity of RC columns, allowing for large deformation under load before failure and providing energy dissipation during seismic events, ultimately saving lives.</p><p>Advantages of FRP Over Traditional Reinforcement </p><p>Understand the advantages of using FRP over traditional steel reinforcement, including easy handling, minimal time and labor requirements for implementation, and effectiveness in reinforcing various types of structures.</p><p>Experimental Research on FRP Confinement Techniques </p><p>Explore the significance of experimental research devoted to investigating FRP confinement techniques, confirming the effectiveness of this innovative retrofitting method in the civil engineering field.</p><p>Conclusion  The use of FRP composites in strengthening RC columns offers a durable and cost-effective solution to enhance structural integrity, improve seismic performance, and ensure safer and more resilient built environments, contributing to sustainable infrastructure development</p><p><strong>by Mr. Prashant Kumar</strong></p>', '2024-02-29', '2', 1, 58, NULL, NULL, NULL, NULL, 344),
(59, 'Retrofitting Corrosion-Damaged Structural Members with High-Strength Textile-Reinforced Concrete (TRC)', 'retrofitting-corrosion-damaged-structural-members-with-high-strength-textile-reinforced-concrete-trc', '', NULL, '<p>Retrofitting Corrosion-Damaged Structural Members with TRC </p><p>Explore the process of retrofitting corroded structural members using high-strength textile-reinforced concrete (TRC) to enhance durability and performance.</p><p>Assessment and Surface Preparation for TRC Retrofitting </p><p>Learn about evaluating corrosion damage and preparing the surface of structural members to ensure optimal bonding between existing concrete and TRC.</p><p>Bonding Agents and TRC Panel Fabrication </p><p>Discover the importance of using suitable bonding agents and fabricating TRC panels according to required dimensions and reinforcement layout for effective retrofitting.</p><p>Installation and Curing of TRC Panels </p><p>Understand the steps involved in affixing TRC panels onto structural members, ensuring proper alignment, consolidation, and curing for uniform load transfer and durability.</p><p>Quality Control and Monitoring of TRC Retrofitting </p><p>Explore the significance of conducting quality control tests and implementing monitoring plans to verify bond strength, structural integrity, and long-term performance of the TRC retrofitting system.</p><p>Conclusion </p><p>Retrofitting corrosion-damaged structural members with high-strength TRC provides a robust and economical solution to prolong the lifespan of infrastructure while improving structural performance and corrosion resistance, ensuring safer and more sustainable built environments.</p><p><strong>by Mr. Shubham Dangwal</strong></p>', '2024-02-29', '2', 1, 59, NULL, NULL, NULL, NULL, 347),
(60, 'Understanding Near-Fault Ground Motion: Implications for Structural Engineering', 'understanding-near-fault-ground-motion-implications-for-structural-engineering', '', NULL, '<p>Near-Fault Ground Motion (NFGM) in Structural Engineering </p><p>Explore the heightened risk posed by NFGM to various structural forms, prompting attention from seismologists and engineers to understand its impact on seismic design.</p><p>Characterizing Parameters of Near-Fault Ground Motion </p><p>Learn about the distinct parameters of NFGM, including pulse period, amplitude, and number of predominant pulses, and efforts to represent it through equivalent pulse models.</p><p>Implications of NFGM Pulse Models on Structural Behavior </p><p>Discover how pulse models aid in quantifying seismic demands, leading to increased base shear, inter-story drift, and ductility demand in high-rise buildings due to the impulsive nature of NFGM.</p><p>Enhancing Seismic Resilience through Understanding NFGM </p><p>Understand the importance of incorporating NFGM considerations into seismic design practices to mitigate the risk of structural damage and improve overall seismic resilience.</p><p>Addressing the Gap: NFGM Considerations in Seismic Design </p><p>Highlight the necessity of integrating NFGM considerations into codal provisions and seismic design codes to ensure structures are adequately designed to withstand the effects of near-fault ground motion.</p><p>Conclusion </p><p>By comprehensively understanding and accounting for the characteristics of near-fault ground motion, structural engineers can enhance the seismic resilience of buildings and infrastructure, ultimately contributing to safer and more resilient communities.</p><p><strong>by  Dr Prabhat Kumar</strong></p>', '2024-02-29', '2', 1, 60, NULL, NULL, NULL, NULL, 350);

-- --------------------------------------------------------

--
-- Table structure for table `blog_mapping`
--

CREATE TABLE `blog_mapping` (
  `blog_map_id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT 0,
  `school_id` int(11) DEFAULT 0,
  `department_id` int(11) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `show_on_home_page` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `blog_type_id` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blog_mapping`
--

INSERT INTO `blog_mapping` (`blog_map_id`, `blog_id`, `school_id`, `department_id`, `display_order`, `show_on_home_page`, `status`, `created_date`, `blog_type_id`) VALUES
(1, 41, 11, 0, 0, 1, 1, '2024-04-08 11:37:49', ''),
(2, 42, 11, 0, 0, 1, 1, '2024-04-08 11:37:49', ''),
(3, 1, 11, 0, 0, 1, 1, '2024-04-08 11:37:49', ''),
(4, 3, 11, 0, 0, 1, 1, '2024-04-08 11:37:49', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_type`
--

CREATE TABLE `blog_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blog_type`
--

INSERT INTO `blog_type` (`id`, `title`, `slug`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Startups and Innovation', 'startups-and-innovation', 1, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(2, 'Emerging Technology', 'emerging-technology', 1, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(3, 'Literature, Arts and Basic Sciences', 'literature-arts-and-basic-sciences', 1, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(4, 'Sustainability and Environmental Issues', 'sustainability-and-environmental-issues', 1, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(5, 'Workplace and Leadership', 'workplace-and-leadership', 1, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(6, 'Education and Future of Work', 'education-and-future-of-work', 1, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(7, 'Campus News', 'campus-news', 1, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(8, 'Health Care', 'health-care', 1, 0, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `board_governance`
--

CREATE TABLE `board_governance` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `board_governance_type`
--

CREATE TABLE `board_governance_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `id` int(11) NOT NULL,
  `campus_name` varchar(355) NOT NULL,
  `address` varchar(455) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_page`
--

CREATE TABLE `career_page` (
  `id` int(11) NOT NULL,
  `overview` longtext NOT NULL,
  `description` longtext NOT NULL,
  `more_description` longtext NOT NULL,
  `faq` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `page_id` int(11) NOT NULL,
  `parent_id` int(15) NOT NULL,
  `page_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `page_slug` varchar(256) NOT NULL,
  `overwrite_url` varchar(255) NOT NULL,
  `section1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `section2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon_image` varchar(255) DEFAULT NULL,
  `display_order` int(10) NOT NULL,
  `page_status` tinyint(4) NOT NULL,
  `show_home` int(11) DEFAULT 0,
  `show_on_submenu` int(11) DEFAULT 0,
  `show_in_department` int(11) DEFAULT 0,
  `show_in_school` int(11) DEFAULT 0,
  `show_in_primary_navigation` tinyint(4) NOT NULL DEFAULT 0,
  `show_in_secondary_navigation` tinyint(4) NOT NULL DEFAULT 0,
  `created_date` varchar(50) NOT NULL,
  `created_by` int(15) NOT NULL,
  `updated_date` varchar(50) DEFAULT NULL,
  `updated_by` int(15) NOT NULL DEFAULT 1,
  `short_description` longtext DEFAULT NULL,
  `detail_description` longtext DEFAULT NULL,
  `cms_header` longtext DEFAULT NULL,
  `school_id` int(25) DEFAULT 0,
  `department_id` int(25) DEFAULT 0,
  `page_type` int(11) NOT NULL DEFAULT 0 COMMENT '0= not direct, 1= direct',
  `related_page_id` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `showon_submenu` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `parent_id`, `page_name`, `heading`, `page_slug`, `overwrite_url`, `section1`, `section2`, `icon_image`, `display_order`, `page_status`, `show_home`, `show_on_submenu`, `show_in_department`, `show_in_school`, `show_in_primary_navigation`, `show_in_secondary_navigation`, `created_date`, `created_by`, `updated_date`, `updated_by`, `short_description`, `detail_description`, `cms_header`, `school_id`, `department_id`, `page_type`, `related_page_id`, `image1`, `showon_submenu`) VALUES
(1, 0, 'About Us', 'About COER University', 'about-us', '', '<!-- About Area Two Start -->\n<section class=\"aboutSec_two\">\n<div class=\"container inner_container\">\n<div class=\"row justify-content-end\">\n<div class=\"col-lg-5\">\n<div class=\"about_twoLeft\">\n<div class=\"about_twoInner\">\n<figure><img src=\"SITE_URLassets/images/home/jcJain-chairmman.webp\" alt=\"JC Jain\" class=\"img-fluid w-100\"></figure>\n<p>Under the visionary leadership of Chancellor Er. JC Jain and the legacy of COER, COER University aspires to be the foremost university in Uttarakhand, excelling in technical, management, medical, health sciences, and agriculture education.</p>\n</div>\n</div>\n</div>\n<div class=\"col-lg-6\">\n<div class=\"about_twoRight\">\n<figure><img src=\"SITE_URLassets/images/home/aboutTwo.webp\" alt=\"COER University\" class=\"img-fluid w-100\"></figure>\n<p>Established in 2021, COER University has transformed into a beacon of academic excellence, innovation, and holistic student development. It offers a comprehensive spectrum of undergraduate and postgraduate programs in fields such as engineering, management, and computer applications.</p>\n<p>The university’s unwavering commitment to maintaining rigorous academic standards is evident through its well-structured curriculum, seasoned faculty, and cutting-edge facilities.</p>\n<p>COER University is distinguished by its steadfast and unwavering focus on research and innovation. The institution actively fosters research initiatives, providing an enabling environment for students and faculty to engage in pioneering research projects spanning various disciplines. Furthermore, COER University places a premium on holistic student development. Beyond academic pursuits, the university encourages students to participate in extracurricular activities, cultural events, and sports to foster their overall growth.</p>\n<div class=\"count_number\">\n<h2>75</h2>\n<span>acre campus</span></div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section class=\"aboutSec_three\"><img src=\"SITE_URLassets/images/home/about_bg.webp\" alt=\"meticulously designed\" class=\"img-fluid w-100\">\n<div class=\"aboutThree_wraper\">\n<div class=\"inner_container container\">\n<div class=\"aboutThree_bx\">\n<p>The meticulously designed 75-acre campus, characterized by predominantly white exteriors, exudes a welcoming ambience for all seekers of knowledge.</p>\n</div>\n</div>\n</div>\n</section>\n<!-- About Area Three End -->\n<section class=\"aboutSec_Four\">\n<div class=\"container inner_container\">\n<div class=\"aboutFour_One\">\n<div class=\"row g-0 justify-content-end\">\n<div class=\"col-lg-6\">\n<div class=\"aboutFour_OneRight\">\n<p>Amidst the picturesque surroundings, the campus offers an ideal setting for learning and personal development. With a mission to nurture future leaders and professionals, COER University has established itself as a premier hub for quality education in Uttarakhand and across the nation.</p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"aboutFour_Two\">\n<div class=\"row g-0 justify-content-end\">\n<div class=\"col-lg-6\">\n<div class=\"aboutFour_TwoLeft\">\n<figure><img src=\"SITE_URLassets/images/home/aboutThree.webp\" alt=\"COER University\" class=\"img-fluid w-100\"></figure>\n</div>\n</div>\n<div class=\"col-lg-6\">\n<div class=\"aboutFour_TwoRight\">\n<p>The education at COER University is comprehensive, aiming to develop the intellectual and personal strengths of students. It encompasses not only classroom learning but also fosters creativity and innovation through challenging projects and participative learning experiences.</p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"aboutFour_Three\">\n<div class=\"row g-0 justify-content-end\">\n<div class=\"col-lg-6\">\n<div class=\"aboutFour_ThreeRight\">\n<figure><img src=\"SITE_URLassets/images/home/aboutFour.webp\" alt=\"COER University\" class=\"img-fluid w-100\"></figure>\n<p>Moreover, COER University collaborates with renowned academic institutions worldwide and industries to offer students valuable industry exposure.</p>\n<p>The university also provides opportunities for global exposure through its study abroad programs. COER University stands as a testament to academic excellence, innovation, and holistic development in the realm of higher education.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', '', 'uploads/cms_images/about-main.webp', 1, 1, 1, 0, 0, 0, 0, 0, '', 0, '2024-04-16', 1, 'COER University, located in Roorkee,\r\nUttarakhand, India, is a distinguished\r\ninstitution of higher learning with a rich legacy of 25 years as College of Engineering Roorkee (COER) since 1998.', '', '', 0, 0, 0, '', '', 0),
(2, 1, 'Overview', 'Overview', 'overview', '', '<!-- About Area Two Start -->\n<section class=\"aboutSec_two\">\n<div class=\"container inner_container\">\n<div class=\"row justify-content-end\">\n<div class=\"col-lg-5\">\n<div class=\"about_twoLeft\">\n<div class=\"about_twoInner\">\n<figure><img src=\"SITE_URLassets/images/home/jcJain-chairmman.webp\" alt=\"JC Jain\" class=\"img-fluid w-100\"></figure>\n<p>Under the visionary leadership of Chancellor Er. JC Jain and the legacy of COER, COER University aspires to be the foremost university in Uttarakhand, excelling in technical, management, medical, health sciences, and agriculture education.</p>\n</div>\n</div>\n</div>\n<div class=\"col-lg-6\">\n<div class=\"about_twoRight\">\n<figure><img src=\"SITE_URLassets/images/home/aboutTwo.webp\" alt=\"COER University\" class=\"img-fluid w-100\"></figure>\n<p>Established in 2021, COER University has transformed into a beacon of academic excellence, innovation, and holistic student development. It offers a comprehensive spectrum of undergraduate and postgraduate programs in fields such as engineering, management, and computer applications.</p>\n<p>The university’s unwavering commitment to maintaining rigorous academic standards is evident through its well-structured curriculum, seasoned faculty, and cutting-edge facilities.</p>\n<p>COER University is distinguished by its steadfast and unwavering focus on research and innovation. The institution actively fosters research initiatives, providing an enabling environment for students and faculty to engage in pioneering research projects spanning various disciplines. Furthermore, COER University places a premium on holistic student development. Beyond academic pursuits, the university encourages students to participate in extracurricular activities, cultural events, and sports to foster their overall growth.</p>\n<div class=\"count_number\">\n<h2>75</h2>\n<span>acre campus</span></div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section class=\"aboutSec_three\"><img src=\"SITE_URLassets/images/home/about_bg.webp\" alt=\"meticulously designed\" class=\"img-fluid w-100\">\n<div class=\"aboutThree_wraper\">\n<div class=\"inner_container container\">\n<div class=\"aboutThree_bx\">\n<p>The meticulously designed 75-acre campus, characterized by predominantly white exteriors, exudes a welcoming ambience for all seekers of knowledge.</p>\n</div>\n</div>\n</div>\n</section>\n<!-- About Area Three End -->\n<section class=\"aboutSec_Four\">\n<div class=\"container inner_container\">\n<div class=\"aboutFour_One\">\n<div class=\"row g-0 justify-content-end\">\n<div class=\"col-lg-6\">\n<div class=\"aboutFour_OneRight\">\n<p>Amidst the picturesque surroundings, the campus offers an ideal setting for learning and personal development. With a mission to nurture future leaders and professionals, COER University has established itself as a premier hub for quality education in Uttarakhand and across the nation.</p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"aboutFour_Two\">\n<div class=\"row g-0 justify-content-end\">\n<div class=\"col-lg-6\">\n<div class=\"aboutFour_TwoLeft\">\n<figure><img src=\"SITE_URLassets/images/home/aboutThree.webp\" alt=\"COER University\" class=\"img-fluid w-100\"></figure>\n</div>\n</div>\n<div class=\"col-lg-6\">\n<div class=\"aboutFour_TwoRight\">\n<p>The education at COER University is comprehensive, aiming to develop the intellectual and personal strengths of students. It encompasses not only classroom learning but also fosters creativity and innovation through challenging projects and participative learning experiences.</p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"aboutFour_Three\">\n<div class=\"row g-0 justify-content-end\">\n<div class=\"col-lg-6\">\n<div class=\"aboutFour_ThreeRight\">\n<figure><img src=\"SITE_URLassets/images/home/aboutFour.webp\" alt=\"COER University\" class=\"img-fluid w-100\"></figure>\n<p>Moreover, COER University collaborates with renowned academic institutions worldwide and industries to offer students valuable industry exposure.</p>\n<p>The university also provides opportunities for global exposure through its study abroad programs. COER University stands as a testament to academic excellence, innovation, and holistic development in the realm of higher education.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', '', '', 2, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(3, 1, 'Vision & Mission ', 'Vision & Mission ', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 3, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(4, 1, 'Values & Strengths (PEOs PSOs)', 'Values & Strengths (PEOs PSOs)', 'values-strengths-peos-psos)', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 4, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(5, 1, 'Our History/ Journey', 'Our History/ Journey', 'our-history-journey', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 5, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(6, 1, 'Founder\'s Message', 'Founder\'s Message', 'founder-s-message', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 6, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(7, 1, 'President’s Message', 'President’s Message', 'president’s-message', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 7, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(8, 1, 'Vice President’s Message', 'Vice President’s Message', 'vice-president’s-message', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 8, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(9, 1, 'Executive Director Message', 'Executive Director Message', 'executive-director-message', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 9, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(10, 1, 'VC\'s Message', 'VC\'s Message', 'vc-s-message', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 10, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(11, 1, 'Leadership Talk', 'Leadership Talk', 'leadership-talk', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 11, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(12, 1, 'Governance Structure', 'Governance Structure', 'governance-structure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 12, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(13, 1, 'Board of Governance', 'Board of Governance', 'board-of-governance', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 13, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(14, 1, 'Board of Management', 'Board of Management', 'board-of-management', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 14, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(15, 1, 'Academic Council', 'Academic Council', 'academic-council', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 15, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(16, 1, 'Finance Committee', 'Finance Committee', 'finance-committee', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 16, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(17, 1, 'Board of Research', 'Board of Research', 'board-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 17, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(18, 1, 'Organogram ', 'Organogram ', 'organogram', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 18, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(19, 1, 'Approvals', 'Approvals', 'approvals', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 19, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(20, 1, 'Awards & Highlights', 'Awards & Highlights', 'awards-highlights', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 20, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(21, 0, 'WHY US?', 'WHY US?', 'why-us', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', 'uploads/cms_images/coming.jpg', 21, 1, 1, 0, 0, 0, 0, 0, '', 0, '2024-04-16', 1, '', '', '', 0, 0, 0, '', '', 0),
(22, 21, 'University @ Glance', 'University @ Glance', 'university-glance', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 22, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(23, 21, 'Life @ COERU', 'Life @ COERU', 'life-coeru', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 23, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(24, 21, 'Clubs & Committees\n', 'Clubs & Committees\n', 'clubs-committees\n', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 24, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(25, 21, 'Eating Joints\n', 'Eating Joints\n', 'eating-joints\n', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 25, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(26, 21, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 26, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(27, 21, '\nCampus Facilities\n', '\nCampus Facilities\n', '\ncampus-facilities\n', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 27, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(28, 21, 'Hostels\n', 'Hostels\n', 'hostels\n', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 28, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(29, 21, 'Sports\n', 'Sports\n', 'sports\n', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 29, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(30, 21, 'Gym', 'Gym', 'gym', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 30, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(31, 21, 'Accreditation and Recognition', 'Accreditation and Recognition', 'accreditation-and-recognition', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 31, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(32, 21, 'Collaborations & Partnership', 'Collaborations & Partnership', 'collaborations-partnership', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 32, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(33, 21, 'Placements', 'Placements', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 33, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(34, 21, 'Virtual Tours', 'Virtual Tours', 'virtual-tours', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 34, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(35, 21, 'Student Life', 'Student Life', 'student-life', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 35, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(36, 21, 'Cultural Activities', 'Cultural Activities', 'cultural-activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 36, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(37, 0, 'ACADEMICS', 'ACADEMICS', 'academics', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 37, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(38, 37, 'Academic Body', 'Academic Body', 'academic-body', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 38, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(39, 37, 'Programs', 'Programs', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 39, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(40, 37, 'Academic Labs', 'Academic Labs', 'academic-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 40, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(41, 37, 'Examinations', 'Examinations', 'examinations', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 41, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(42, 37, 'Results', 'Results', 'results', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 42, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(43, 37, 'Notices', 'Notices', 'notices', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 43, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(44, 37, 'Circulars', 'Circulars', 'circulars', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 44, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(45, 37, 'Academic Calendar', 'Academic Calendar', 'academic-calendar', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 45, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(46, 37, 'Guidelines & Policies', 'Guidelines & Policies', 'guidelines-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 46, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(47, 37, 'Centre of Excellence', 'Centre of Excellence', 'centre-of-excellence', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 47, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(48, 37, 'DIY Labs', 'DIY Labs', 'diy-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 48, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(49, 37, 'Incubation And Entrepreneurship', 'Incubation And Entrepreneurship', 'incubation-and-entrepreneurship', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 49, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(50, 37, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 50, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(51, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 51, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(52, 51, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 52, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(53, 51, 'Admission Process', 'Admission Process', 'admission-process', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 53, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(54, 51, 'Admission', 'Admission', 'admission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 54, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(55, 51, 'UG Program ', 'UG Program ', 'ug-program-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 55, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(56, 51, 'PG Program', 'PG Program', 'pg-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 56, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(57, 51, 'Doctoral Program', 'Doctoral Program', 'doctoral-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 57, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(58, 51, 'International Admission', 'International Admission', 'international-admission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 58, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(59, 51, 'Course, Eligibility  & Fee Structure', 'Course, Eligibility  & Fee Structure', 'course-eligibility-fee-structure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 59, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(60, 51, 'Hostel', 'Hostel', 'hostel', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 60, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(61, 51, 'Scholarship', 'Scholarship', 'scholarship', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 61, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(62, 51, 'Admission Document & Undertaking', 'Admission Document & Undertaking', 'admission-document-undertaking', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 62, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(63, 51, 'FAQ', 'FAQ', 'faq', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 63, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(64, 51, 'Download Prospectus', 'Download Prospectus', 'download-prospectus', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 64, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(65, 51, 'Apply Now', 'Apply Now', 'apply-now', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 65, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(66, 0, 'Placement', 'Placement', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 66, 1, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(67, 0, 'Research', 'Research', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', 'uploads/cms_images/coming.jpg', 67, 1, 0, 0, 0, 0, 0, 0, '', 0, '2024-04-16', 1, '', '', '', 0, 0, 0, '', '', 0),
(68, 0, 'FACILITIES', 'FACILITIES', 'facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 68, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(69, 68, 'Campus Facilities', 'Campus Facilities', 'campus-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 69, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(70, 68, 'Hostels', 'Hostels', 'hostels', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 70, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(71, 68, 'Cafeteria', 'Cafeteria', 'cafeteria', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 71, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(72, 68, 'Sports', 'Sports', 'sports', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 72, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(73, 68, 'Gym', 'Gym', 'gym', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 73, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(74, 68, 'Eating Joints', 'Eating Joints', 'eating-joints', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 74, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(75, 68, 'ATM', 'ATM', 'atm', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 75, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(76, 68, 'Stationary Shops', 'Stationary Shops', 'stationary-shops', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 76, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(77, 68, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 77, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(78, 68, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 78, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(79, 68, 'Academic Labs', 'Academic Labs', 'academic-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 79, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(80, 68, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 80, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(81, 68, 'Library', 'Library', 'library', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 81, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(82, 68, 'Auditorium / Seminar Hall', 'Auditorium / Seminar Hall', 'auditorium--seminar-hall', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 82, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(83, 68, 'Centre of Excellence', 'Centre of Excellence', 'centre-of-excellence', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 83, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(84, 68, 'DIY Labs', 'DIY Labs', 'diy-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 84, 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(85, 68, 'Cultural Activities', 'Cultural Activities', 'cultural-activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 85, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(86, 68, 'COER Hospital', 'COER Hospital', 'coer-hospital', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 86, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(87, 0, 'RESEARCH & INNOVATION', 'RESEARCH & INNOVATION', 'research-innovation', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 87, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(88, 87, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 88, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(89, 87, 'Research Groups', 'Research Groups', 'research-groups', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 89, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(90, 87, 'Research Publications', 'Research Publications', 'research-publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 90, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(91, 87, 'Research Projects', 'Research Projects', 'research-projects', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 91, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(92, 87, 'Research Mandate', 'Research Mandate', 'research-mandate', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 92, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(93, 87, 'Research Administrator & Council', 'Research Administrator & Council', 'research-administrator-council', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 93, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(94, 87, 'PhD Scholars', 'PhD Scholars', 'phd-scholars', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 94, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(95, 87, 'Research Policy', 'Research Policy', 'research-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 95, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(96, 87, 'Patents', 'Patents', 'patents', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 96, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(97, 87, 'Sponsored Projects', 'Sponsored Projects', 'sponsored-projects', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 97, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(98, 87, 'Code of Ethics', 'Code of Ethics', 'code-of-ethics', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 98, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(99, 87, 'COERU Innovation & Incubation Centre', 'COERU Innovation & Incubation Centre', 'coeru-innovation-incubation-centre', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 99, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(100, 87, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 100, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(101, 87, 'Journals', 'Journals', 'journals', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 101, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(102, 87, 'Student\'s Projects', 'Student\'s Projects', 'student-s-projects', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 102, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(103, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', 'uploads/cms_images/coming.jpg', 103, 1, 1, 0, 0, 0, 0, 0, '', 0, '2024-04-16', 1, '', '', '', 0, 0, 0, '', '', 0),
(104, 103, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 104, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(105, 103, 'Process', 'Process', 'process', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 105, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(106, 103, 'Training', 'Training', 'training', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 106, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(107, 103, 'Alumni Portal', 'Alumni Portal', 'alumni-portal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 107, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(108, 103, 'Placement policy', 'Placement policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 108, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(109, 103, 'Top Recruiters', 'Top Recruiters', 'top-recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 109, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(110, 103, 'Placement Highlights', 'Placement Highlights', 'placement-highlights', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 110, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(111, 103, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 111, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(112, 103, 'Feedback Form', 'Feedback Form', 'feedback-form', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 112, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(113, 103, 'Placement Cell', 'Placement Cell', 'placement-cell', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', '', 113, 1, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', '', '', 0, 0, 0, '', '', 1),
(118, 0, 'ABOUT', 'ABOUT', 'about', '', '<p>dsfsdgds</p>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, '2024-04-16', 1, '<p><span>The education at COER University is comprehensive, aiming to develop the intellectual and personal strengths of students. It encompasses not only classroom learning but also fosters creativity and innovation through challenging projects and participative learning experiences.</span></p>', NULL, '<p>dhgfdhgfh</p>', 1, 0, 0, '', 'uploads/cms_images/event04.webp', 0),
(119, 118, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(120, 118, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(121, 118, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(122, 118, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(123, 118, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(124, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0);
INSERT INTO `cms_page` (`page_id`, `parent_id`, `page_name`, `heading`, `page_slug`, `overwrite_url`, `section1`, `section2`, `icon_image`, `display_order`, `page_status`, `show_home`, `show_on_submenu`, `show_in_department`, `show_in_school`, `show_in_primary_navigation`, `show_in_secondary_navigation`, `created_date`, `created_by`, `updated_date`, `updated_by`, `short_description`, `detail_description`, `cms_header`, `school_id`, `department_id`, `page_type`, `related_page_id`, `image1`, `showon_submenu`) VALUES
(125, 124, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(126, 124, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(127, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(128, 127, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(129, 127, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(130, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(131, 130, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(132, 130, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(133, 130, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(134, 130, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(135, 130, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(136, 130, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(137, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(138, 137, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(139, 137, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(140, 137, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(141, 137, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(142, 137, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(143, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(144, 143, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(145, 143, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(146, 143, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(147, 143, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(148, 143, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(149, 143, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(150, 143, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(151, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(152, 151, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(153, 151, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(154, 151, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(155, 151, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(156, 151, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(157, 151, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(158, 151, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(159, 151, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(160, 151, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(161, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(162, 161, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(163, 161, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(164, 161, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(165, 161, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(166, 161, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(167, 161, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(168, 161, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(169, 161, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(170, 161, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(171, 161, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '2024-04-01', 1, NULL, 1, '', NULL, '', 1, 0, 0, '', '', 0),
(172, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 11, 0, 0, '', '', 0),
(173, 172, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(174, 172, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(175, 172, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(176, 172, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(177, 172, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(178, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(179, 178, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(180, 178, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(181, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(182, 181, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(183, 181, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(184, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(185, 184, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(186, 184, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(187, 184, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(188, 184, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(189, 184, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(190, 184, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(191, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(192, 191, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(193, 191, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(194, 191, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(195, 191, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(196, 191, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(197, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(198, 197, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(199, 197, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(200, 197, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(201, 197, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(202, 197, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(203, 197, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(204, 197, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(205, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(206, 205, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(207, 205, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(208, 205, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(209, 205, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(210, 205, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(211, 205, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(212, 205, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(213, 205, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(214, 205, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(215, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(216, 215, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(217, 215, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(218, 215, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(219, 215, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(220, 215, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(221, 215, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(222, 215, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(223, 215, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(224, 215, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(225, 215, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(226, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 5, 0, 0, '', '', 0),
(227, 226, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(228, 226, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(229, 226, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(230, 226, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(231, 226, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(232, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(233, 232, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(234, 232, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(235, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(236, 234, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(237, 234, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(238, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(239, 238, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(240, 238, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(241, 238, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(242, 238, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(243, 238, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(244, 238, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(245, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(246, 245, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(247, 245, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(248, 245, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(249, 245, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(250, 245, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(251, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(252, 251, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(253, 251, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(254, 251, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(255, 251, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(256, 251, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(257, 251, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(259, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(260, 259, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(261, 259, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(262, 259, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(263, 259, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(264, 259, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(265, 259, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(266, 259, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(267, 259, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0);
INSERT INTO `cms_page` (`page_id`, `parent_id`, `page_name`, `heading`, `page_slug`, `overwrite_url`, `section1`, `section2`, `icon_image`, `display_order`, `page_status`, `show_home`, `show_on_submenu`, `show_in_department`, `show_in_school`, `show_in_primary_navigation`, `show_in_secondary_navigation`, `created_date`, `created_by`, `updated_date`, `updated_by`, `short_description`, `detail_description`, `cms_header`, `school_id`, `department_id`, `page_type`, `related_page_id`, `image1`, `showon_submenu`) VALUES
(268, 259, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(269, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(270, 269, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(271, 269, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(272, 269, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(273, 269, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(274, 269, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(275, 269, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(276, 269, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(277, 269, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(278, 269, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(279, 269, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 5, 0, 0, '', '', 0),
(280, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 6, 0, 0, '', '', 0),
(281, 280, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(282, 280, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(283, 280, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(284, 280, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(285, 280, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(286, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(287, 286, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(288, 286, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(289, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(290, 289, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(291, 289, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(292, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(293, 292, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(294, 292, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(295, 292, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(296, 292, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(297, 292, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(298, 292, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(299, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(300, 299, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(301, 299, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(302, 299, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(303, 299, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(304, 299, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(305, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(306, 305, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(307, 305, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(308, 305, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(309, 305, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(310, 305, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(311, 305, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(312, 305, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(313, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(314, 313, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(315, 313, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(316, 313, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(317, 313, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(318, 313, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(319, 313, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(320, 313, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(321, 313, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(322, 313, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(323, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(324, 323, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(325, 323, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(326, 323, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(327, 323, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(328, 323, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(329, 323, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(330, 323, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(331, 323, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(332, 323, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(333, 323, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 6, 0, 0, '', '', 0),
(334, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 7, 0, 0, '', '', 0),
(335, 334, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(336, 334, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(337, 334, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(338, 334, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(339, 334, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(340, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(341, 340, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(342, 340, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(343, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(344, 343, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(345, 343, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(346, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(347, 346, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(348, 346, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(349, 346, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(350, 346, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(351, 346, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(352, 346, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(353, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(354, 353, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(355, 353, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(356, 353, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(357, 353, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(358, 353, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(359, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(360, 359, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(361, 359, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(362, 359, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(363, 359, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(364, 359, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(365, 359, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(366, 359, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(367, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(368, 367, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(369, 367, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(370, 367, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(371, 367, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(372, 367, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(373, 367, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(374, 367, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(375, 367, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(376, 367, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(377, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(378, 377, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(379, 377, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(380, 377, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(381, 377, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(382, 377, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(383, 377, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(384, 377, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(385, 377, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(386, 377, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(387, 377, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 7, 0, 0, '', '', 0),
(388, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 8, 0, 0, '', '', 0),
(389, 388, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(390, 388, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(391, 388, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(392, 388, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(393, 388, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(394, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(395, 394, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(396, 394, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(397, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(398, 397, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(399, 397, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(400, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(401, 400, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(402, 400, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(403, 400, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(404, 400, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(405, 400, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(406, 400, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(407, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(408, 407, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(409, 407, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0);
INSERT INTO `cms_page` (`page_id`, `parent_id`, `page_name`, `heading`, `page_slug`, `overwrite_url`, `section1`, `section2`, `icon_image`, `display_order`, `page_status`, `show_home`, `show_on_submenu`, `show_in_department`, `show_in_school`, `show_in_primary_navigation`, `show_in_secondary_navigation`, `created_date`, `created_by`, `updated_date`, `updated_by`, `short_description`, `detail_description`, `cms_header`, `school_id`, `department_id`, `page_type`, `related_page_id`, `image1`, `showon_submenu`) VALUES
(410, 407, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(411, 407, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(412, 407, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(413, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(414, 413, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(415, 413, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(416, 413, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(417, 413, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(418, 413, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(419, 413, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(420, 413, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(421, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(422, 421, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(423, 421, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(424, 421, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(425, 421, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(426, 421, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(427, 421, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(428, 421, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(429, 421, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(430, 421, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(431, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(432, 431, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(433, 431, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(434, 431, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(435, 431, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(436, 431, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(437, 431, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(438, 431, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(439, 431, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(440, 431, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(441, 431, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 8, 0, 0, '', '', 0),
(442, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 9, 0, 0, '', '', 0),
(443, 442, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(444, 442, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(445, 442, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(446, 442, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(447, 442, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(448, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(449, 448, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(450, 448, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(451, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(452, 451, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(453, 451, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(454, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(455, 454, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(456, 454, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(457, 454, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(458, 454, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(459, 454, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(460, 454, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(461, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(462, 461, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(463, 461, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(464, 461, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(465, 461, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(466, 461, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(467, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(468, 467, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(469, 467, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(470, 467, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(471, 467, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(472, 467, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(473, 467, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(474, 467, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(475, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(476, 475, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(477, 475, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(478, 475, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(479, 475, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(480, 475, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(481, 475, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(482, 475, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(483, 475, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(484, 475, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(485, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(486, 485, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(487, 485, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(488, 485, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(489, 485, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(490, 485, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(491, 485, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(492, 485, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(493, 485, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(494, 485, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(495, 485, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 9, 0, 0, '', '', 0),
(496, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 10, 0, 0, '', '', 0),
(497, 496, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(498, 496, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(499, 496, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(500, 496, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(501, 496, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(502, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(503, 502, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(504, 502, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(505, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(506, 505, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(507, 505, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(508, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(509, 508, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(510, 508, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(511, 508, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(512, 508, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(513, 508, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(514, 508, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(515, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(516, 515, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(517, 515, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(518, 515, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(519, 515, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(520, 515, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(521, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(522, 521, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(523, 521, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(524, 521, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(525, 521, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(526, 521, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(527, 521, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(528, 521, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(529, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(530, 529, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(531, 529, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(532, 529, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(533, 529, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(534, 529, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(535, 529, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(536, 529, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(537, 529, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(538, 529, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(539, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(540, 539, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(541, 539, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(542, 539, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(543, 539, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(544, 539, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(545, 539, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(546, 539, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(547, 539, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(548, 539, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(549, 539, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 10, 0, 0, '', '', 0),
(550, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 2, 0, 0, '', '', 0),
(551, 550, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0);
INSERT INTO `cms_page` (`page_id`, `parent_id`, `page_name`, `heading`, `page_slug`, `overwrite_url`, `section1`, `section2`, `icon_image`, `display_order`, `page_status`, `show_home`, `show_on_submenu`, `show_in_department`, `show_in_school`, `show_in_primary_navigation`, `show_in_secondary_navigation`, `created_date`, `created_by`, `updated_date`, `updated_by`, `short_description`, `detail_description`, `cms_header`, `school_id`, `department_id`, `page_type`, `related_page_id`, `image1`, `showon_submenu`) VALUES
(552, 550, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(553, 550, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(554, 550, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(555, 550, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(556, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(557, 556, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(558, 556, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(559, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(560, 559, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(561, 559, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(562, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(563, 562, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(564, 562, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(565, 562, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(566, 562, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(567, 562, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(568, 562, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(569, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(570, 569, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(571, 569, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(572, 569, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(573, 569, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(574, 569, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(575, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(576, 575, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(577, 575, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(578, 575, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(579, 575, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(580, 575, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(581, 575, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(582, 575, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(583, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(584, 583, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(585, 583, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(586, 583, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(587, 583, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(588, 583, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(589, 583, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(590, 583, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(591, 583, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(592, 583, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(593, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(594, 593, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(595, 593, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(596, 593, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(597, 593, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(598, 593, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(599, 593, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(600, 593, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(601, 593, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(602, 593, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(603, 593, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 2, 0, 0, '', '', 0),
(604, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '2024-04-16', 1, '<p>dsdsd</p>', NULL, '', 3, 0, 0, '', '', 0),
(605, 604, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(606, 604, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(607, 604, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(608, 604, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(609, 604, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(610, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(611, 610, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(612, 610, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(613, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '2024-04-16', 1, '', NULL, '', 3, 0, 0, '', '', 0),
(614, 613, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(615, 613, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(616, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(617, 616, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(618, 616, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(619, 616, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(620, 616, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(621, 616, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(622, 616, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(623, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(624, 623, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(625, 623, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(626, 623, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(627, 623, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(628, 623, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(629, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(630, 629, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(631, 629, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(632, 629, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(633, 629, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(634, 629, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(635, 629, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(636, 629, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(637, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(638, 637, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(639, 637, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(640, 637, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(641, 637, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(642, 637, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(643, 637, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(644, 637, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(645, 637, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(646, 637, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(647, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(648, 647, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(649, 647, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(650, 647, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(651, 647, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(652, 647, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(653, 647, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(654, 647, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(655, 647, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(656, 647, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(657, 647, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 3, 0, 0, '', '', 0),
(658, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 4, 0, 0, '', '', 0),
(659, 658, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(660, 658, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(661, 658, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(662, 658, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(663, 658, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(664, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(665, 664, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(666, 664, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(667, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(668, 667, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(669, 667, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(670, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(671, 670, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(672, 670, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(673, 670, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(674, 670, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(675, 670, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(676, 670, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(677, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(678, 677, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(679, 677, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(680, 677, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(681, 677, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(682, 677, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(683, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(684, 683, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(685, 683, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(686, 683, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(687, 683, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(688, 683, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(689, 683, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(690, 683, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(691, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(692, 691, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(693, 691, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0);
INSERT INTO `cms_page` (`page_id`, `parent_id`, `page_name`, `heading`, `page_slug`, `overwrite_url`, `section1`, `section2`, `icon_image`, `display_order`, `page_status`, `show_home`, `show_on_submenu`, `show_in_department`, `show_in_school`, `show_in_primary_navigation`, `show_in_secondary_navigation`, `created_date`, `created_by`, `updated_date`, `updated_by`, `short_description`, `detail_description`, `cms_header`, `school_id`, `department_id`, `page_type`, `related_page_id`, `image1`, `showon_submenu`) VALUES
(694, 691, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(695, 691, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(696, 691, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(697, 691, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(698, 691, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(699, 691, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(700, 691, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(701, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(702, 701, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(703, 701, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(704, 701, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(705, 701, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(706, 701, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(707, 701, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(708, 701, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(709, 701, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(710, 701, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(711, 701, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 4, 0, 0, '', '', 0),
(712, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 1, 1, 0, '', '', 0),
(713, 712, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(714, 712, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(715, 712, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(716, 712, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(717, 712, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(718, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(719, 718, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(720, 718, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(721, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(722, 721, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(723, 721, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(724, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '2024-04-16', 1, '', NULL, '', 1, 1, 0, '', '', 0),
(725, 724, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(726, 724, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(727, 724, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(728, 724, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(729, 724, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(730, 724, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(731, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '2024-04-16', 1, '', NULL, '', 1, 1, 0, '', '', 0),
(732, 731, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(733, 731, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(734, 731, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(735, 731, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(736, 731, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(737, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 1, 0, 0, 0, 0, 0, '01-04-2024', 1, '2024-04-16', 1, '', NULL, '', 1, 1, 0, '', '', 0),
(738, 737, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(739, 737, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(740, 737, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(741, 737, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(742, 737, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(743, 737, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(744, 737, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(745, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(746, 745, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(747, 745, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(748, 745, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(749, 745, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(750, 745, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(751, 745, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(752, 745, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(753, 745, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(754, 745, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(755, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(756, 755, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(757, 755, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(758, 755, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(759, 755, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(760, 755, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(761, 755, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(762, 755, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(763, 755, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(764, 755, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(765, 755, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 1, 0, '', '', 0),
(766, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 1, 2, 0, '', '', 0),
(767, 766, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(768, 766, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(769, 766, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(770, 766, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(771, 766, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(772, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(773, 772, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(774, 772, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(775, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(776, 775, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(777, 775, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(778, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(779, 778, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(780, 778, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(781, 778, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(782, 778, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(783, 778, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(784, 778, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(785, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(786, 785, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(787, 785, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(788, 785, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(789, 785, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(790, 785, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(791, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(792, 791, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(793, 791, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(794, 791, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(795, 791, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(796, 791, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(797, 791, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(798, 791, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(799, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(800, 799, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(801, 799, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(802, 799, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(803, 799, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(804, 799, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(805, 799, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(806, 799, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(807, 799, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(808, 799, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(809, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(810, 809, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(811, 809, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(812, 809, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(813, 809, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(814, 809, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(815, 809, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(816, 809, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(817, 809, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(818, 809, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(819, 809, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 2, 0, '', '', 0),
(820, 0, 'ABOUT', 'ABOUT', 'about', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 1, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, '01-04-2024', 1, '', NULL, '', 1, 3, 0, '', '', 0),
(821, 820, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 2, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(822, 820, 'Vision & Mission', 'Vision & Mission', 'vision-mission', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 3, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(823, 820, 'Values & Strengths ( PEOs & PSOs)', 'Values & Strengths ( PEOs & PSOs)', 'values-strengths-peos-psos', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 4, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(824, 820, 'Academic Leader', 'Academic Leader', 'academic-leader', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 5, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(825, 820, 'Board of Studies', 'Board of Studies', 'board-of-studies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 6, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(826, 0, 'PROGRAMS', 'PROGRAMS', 'programs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 7, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(827, 826, 'Programs List', 'Programs List', 'programs-list', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 8, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(828, 826, 'Search Program', 'Search Program', 'search-program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 9, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(829, 0, 'FACULTY', 'FACULTY', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 10, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(830, 829, 'Listing', 'Listing', 'listing-', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 11, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(831, 829, 'Detailed Profile', 'Detailed Profile', 'detailed-profile', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 12, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(832, 0, 'ADMISSIONS', 'ADMISSIONS', 'admissions', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 13, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(833, 832, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 14, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(834, 832, 'Program', 'Program', 'program', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 15, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(835, 832, 'Faculty', 'Faculty', 'faculty', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 16, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0);
INSERT INTO `cms_page` (`page_id`, `parent_id`, `page_name`, `heading`, `page_slug`, `overwrite_url`, `section1`, `section2`, `icon_image`, `display_order`, `page_status`, `show_home`, `show_on_submenu`, `show_in_department`, `show_in_school`, `show_in_primary_navigation`, `show_in_secondary_navigation`, `created_date`, `created_by`, `updated_date`, `updated_by`, `short_description`, `detail_description`, `cms_header`, `school_id`, `department_id`, `page_type`, `related_page_id`, `image1`, `showon_submenu`) VALUES
(836, 832, 'Infrastructure', 'Infrastructure', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 17, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(837, 832, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 18, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(838, 832, 'PLACEMENT', 'PLACEMENT', 'placement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 19, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(839, 0, 'INFRASTRUCTURE', 'INFRASTRUCTURE', 'infrastructure', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 20, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(840, 839, 'Academic Facilities', 'Academic Facilities', 'academic-facilities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 21, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(841, 839, 'Classrooms', 'Classrooms', 'classrooms', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 22, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(842, 839, 'Labs', 'Labs', 'labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 23, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(843, 839, 'Beyond Academic', 'Beyond Academic', 'beyond-academic', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 24, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(844, 839, 'Clubs & Society', 'Clubs & Society', 'clubs---society', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 25, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(845, 0, 'PLACEMENTS', 'PLACEMENTS', 'placements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 26, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(846, 845, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 27, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(847, 845, 'Placement News & Activities', 'Placement News & Activities', 'placement-news---activities', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 28, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(848, 845, 'Placement Records', 'Placement Records', 'placement-records', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 29, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(849, 845, 'Recruiters', 'Recruiters', 'recruiters', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 30, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(850, 845, 'Placement Brochures', 'Placement Brochures', 'placement-brochures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 31, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(851, 845, 'Placement Policy', 'Placement Policy', 'placement-policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 32, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(852, 845, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 33, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(853, 0, 'RESEARCH', 'RESEARCH', 'research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 34, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(854, 853, 'Overview', 'Overview', 'overview', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 35, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(855, 853, 'Areas of Research', 'Areas of Research', 'areas-of-research', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 36, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(856, 853, 'Research Grant', 'Research Grant', 'research-grant', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 37, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(857, 853, 'Publications', 'Publications', 'publications', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 38, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(858, 853, 'Research Paper', 'Research Paper', 'research-paper', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 39, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(859, 853, 'Research Events', 'Research Events', 'research-events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 40, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(860, 853, 'Research Labs', 'Research Labs', 'research-labs', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 41, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(861, 853, 'R & D Policies', 'R & D Policies', 'r-d-policies', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 42, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(862, 853, 'Journal', 'Journal', 'journal', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 43, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(863, 0, 'HAPPENINGS', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 44, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(864, 863, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 45, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(865, 863, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 46, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(866, 863, 'Notices & Announcement', 'Notices & Announcement', 'notices---announcement', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 47, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(867, 863, 'Activities & Workshop', 'Activities & Workshop', 'activities---workshop', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 48, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(868, 863, 'Image Gallery', 'Image Gallery', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 49, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(869, 863, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 50, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(870, 863, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 51, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(871, 863, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 52, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(872, 863, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 53, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(873, 863, 'Guest Lectures', 'Guest Lectures', 'guest-lectures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 54, 1, 0, 0, 0, 0, 0, 0, '01-04-2024', 1, NULL, 1, '', NULL, '', 1, 3, 0, '', '', 0),
(1039, 205, 'Student Projects', 'Student Projects', 'student-projects', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 55, 1, 0, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', NULL, '', 11, 0, 0, '', '', 0),
(1040, 0, 'DISCLOSURES', 'DISCLOSURES', 'disclosures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 114, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1041, 1040, 'University Acts & Statutes', 'University Acts & Statutes', 'university-acts-statutes', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 115, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1042, 1040, 'UGC Guidelines', 'UGC Guidelines', 'ugc-guidelines', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 116, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1043, 1040, 'Mandatory Disclosures', 'Mandatory Disclosures', 'mandatory-disclosures', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 117, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1044, 1040, 'Code Of Conduct Of Student', 'Code Of Conduct Of Student', 'code-of-conduct-of-student', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 118, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1045, 1040, 'Code Of Conduct Of Employee', 'Code Of Conduct Of Employee', 'code-of-conduct-of-employee', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 119, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1046, 1040, 'Institutional Distinctiveness', 'Institutional Distinctiveness', 'institutional-distinctiveness', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 120, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1047, 0, 'Important Links', '', 'important-links', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 121, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1048, 1070, 'Sitemap', '', 'sitemap', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 122, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, '2024-04-06', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1049, 1070, 'Disclaimer', '', 'disclaimer', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 123, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, '2024-04-06', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1050, 1047, 'Subscription', '', 'subscription', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 124, 0, 0, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1051, 1070, 'Incubation', '', 'incubation', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 125, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, '2024-04-06', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1052, 1070, 'UBA', '', 'uba', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 126, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, '2024-04-06', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1053, 1047, 'Support Chat', '', 'support-chat', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 127, 0, 0, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1054, 1070, 'Policy', '', 'policy', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 128, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, '2024-04-06', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1055, 1047, 'NIRF', '', 'nirf', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 129, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1056, 1047, 'AICTE', '', 'aicte', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 130, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1057, 1047, 'NAAC', '', 'naac', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 131, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1058, 1047, 'NBA', '', 'nba', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 132, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1059, 1047, 'ISO Certificate', '', 'iso-certificate', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 133, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1060, 1047, 'HR Polices', '', 'hr-polices', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 134, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1061, 1047, 'NPTEL Courses', '', 'nptel-courses', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 135, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1062, 1047, 'ERP Login', '', 'erp-login', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 136, 1, 1, 0, 0, 0, 0, 0, '2024-04-02', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1063, 1091, 'Contact Us', 'Contact Us', 'contact-us', '', '<div class=\"contact_detail_left\">\r\n<h5>Admission Helpline</h5>\r\n<p><span>For help by telephone, please call at:</span> +91 8070500600, 9027916050, 9027916051</p>\r\n<p><span>To get in touch via email:</span> admission@coeruniversity.in</p>\r\n<p>Please reference our <a href=\"#\">Frequently Asked Questions</a> for more information on admissions, financial aid, and other questions about COERU.</p>\r\n<div class=\"contact_grid\">\r\n<div class=\"contact_gridtext\">\r\n<h5>Other Helpline</h5>\r\n<p><span>Please call at:</span> <a href=\"tel:+91 6398689224\">+91 6398689224</a></p>\r\n</div>\r\n<div class=\"contact_gridtext\">\r\n<h5>Hostel Enquiry</h5>\r\n<p><span>Mr. Amit Kumar</span> <a href=\"tel:+91 97600 05327\">+91 97600 05327</a></p>\r\n</div>\r\n</div>\r\n</div>', '<div class=\"map_sec\"><iframe width=\"100%\" height=\"auto\" style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3459.0289920149753!2d77.95760201197128!3d29.89226522565918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39094b65716ff7f7%3A0xd470ef9b29ad7b0d!2sCOER%20University!5e0!3m2!1sen!2sin!4v1711619611803!5m2!1sen!2sin\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe></div>', 'uploads/cms_images/about-main.webp', 137, 1, 1, 1, 0, 0, 0, 0, '2024-04-06', 1, '2024-04-15', 1, '<h2>COER University</h2>\r\n<h6>7th km on Roorkee – Haridwar Road, Vardhmanpuram, <br> Roorkee – 247667, Distt. Haridwar (Uttarakhand)</h6>', '', '', 0, 0, 0, NULL, NULL, 0),
(1064, 0, 'Colleges', '', 'colleges', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 138, 1, 0, 0, 0, 0, 0, 0, '2024-04-06', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1065, 0, 'Programs', '', 'programs-1', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 139, 1, 0, 0, 0, 0, 0, 0, '2024-04-06', 1, '2024-04-16', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1066, 0, 'Happenings', 'HAPPENINGS', 'happenings', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 140, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1067, 1091, 'Testimonials', 'Testimonials', 'testimonials', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 141, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, '2024-04-15', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1068, 1091, 'Careers @ COERU', 'Careers @ COERU', 'careers-coeru', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 142, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, '2024-04-15', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1069, 1091, 'Alumni', 'Alumni', 'alumni', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 143, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, '2024-04-15', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1070, 0, 'Other Links', 'Other Links', 'other-links', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 144, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1071, 0, 'Student Corner', 'Student Corner', 'student-corner', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 145, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1072, 1091, 'Blog', 'Blog', 'blog', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 146, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, '2024-04-15', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1073, 1091, 'Training & Learning', 'Training & Learning', 'training-learning', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 147, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, '2024-04-15', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1074, 1091, 'Downloads', 'Downloads', 'downloads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 148, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, '2024-04-15', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1075, 1047, 'IQAC', 'IQAC', 'iqac', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 149, 1, 1, 0, 0, 0, 0, 0, '2024-04-06', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1076, 1066, 'News', 'News', 'news', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 150, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1077, 1066, 'Events', 'Events', 'events', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 151, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1078, 1066, 'Notices & Announcements', 'Notices & Announcements', 'notices-announcements', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 152, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1079, 1066, 'Activity & Workshops', 'Activity & Workshops', 'activity-workshops', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 153, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1080, 1066, 'Image Gallery', '', 'image-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 154, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1081, 1066, 'Video Gallery', 'Video Gallery', 'video-gallery', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 155, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1082, 1066, 'Print Ads', 'Print Ads', 'print-ads', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 156, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, '2024-04-15', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1083, 1066, 'Media Coverage', 'Media Coverage', 'media-coverage', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 157, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, '2024-04-15', 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1084, 1075, 'IQAC Manual', 'IQAC Manual', 'iqac-manual', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 158, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1085, 1075, 'IQAC Calendar', 'IQAC Calendar', 'iqac-calendar', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 159, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1086, 1075, 'Feedbacks', 'Feedbacks', 'feedbacks', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 160, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1087, 1075, 'Strategic Plan', 'Strategic Plan', 'strategic-plan', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 161, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1088, 1075, 'Best Practices', 'Best Practices', 'best-practices', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 162, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1089, 1075, 'Distinctiveness', 'Distinctiveness', 'distinctiveness', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 163, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1090, 1075, 'Audits', 'Audits', 'audits', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 164, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1091, 0, 'Main link', '', 'main-link', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 165, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0),
(1092, 1091, 'Student Corner', '', 'student-corner', '', '<section class=\"continer\">\r\n	<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/frontend/images/coming.jpg\" class=\"img-fluid\" alt=\"image\"></figure>\r\n</section>', '', NULL, 166, 1, 1, 0, 0, 0, 0, 0, '2024-04-15', 1, NULL, 1, '', '', '', 0, 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cnss_agreement`
--

CREATE TABLE `cnss_agreement` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `campus_id` int(11) NOT NULL DEFAULT 0,
  `academic_programmes` int(11) DEFAULT NULL,
  `academic_members` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `maker_heading` varchar(255) DEFAULT NULL,
  `group_faculty` int(11) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `name_short` varchar(255) DEFAULT NULL,
  `showin_ms` int(11) DEFAULT 0,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `program_image` varchar(255) DEFAULT NULL,
  `course_image` varchar(655) DEFAULT NULL,
  `prospectus` varchar(255) DEFAULT NULL,
  `icons` varchar(255) NOT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `banner_video` varchar(555) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `show_in_list` int(11) NOT NULL DEFAULT 1,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `about_school` text DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `academic_years` varchar(255) DEFAULT NULL,
  `pla_and_rec` longtext DEFAULT NULL,
  `dean_message` text DEFAULT NULL,
  `research` text DEFAULT NULL,
  `campuslife` text DEFAULT NULL,
  `mobile_contact` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `campus_id`, `academic_programmes`, `academic_members`, `name`, `maker_heading`, `group_faculty`, `menu_name`, `name_short`, `showin_ms`, `short_description`, `description`, `slug`, `image`, `program_image`, `course_image`, `prospectus`, `icons`, `thumbnail_image`, `banner_video`, `status`, `show_in_list`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`, `about_school`, `banner_title`, `academic_years`, `pla_and_rec`, `dean_message`, `research`, `campuslife`, `mobile_contact`) VALUES
(1, 0, 0, 0, 'College of Engineering', '', 1, 'College of Engineering', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-engineering', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(2, 0, 0, 0, 'College of Smart Computing', '', 1, 'College of Smart Computing', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-smart-computing', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(3, 0, 0, 0, 'College of Pharmacy', '', 1, 'College of Pharmacy', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-pharmacy', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(4, 0, 0, 0, 'College of Smart Agriculture', '', 1, 'College of Smart Agriculture', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-smart-agriculture', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(5, 0, 0, 0, 'College of Business Studies', '', 1, 'College of Business Studies', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-business-studies', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(6, 0, 0, 0, 'College of Nursing', '', 1, 'College of Nursing', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-nursing', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(7, 0, 0, 0, 'College of Paramedical Sciences', '', 1, 'College of Paramedical Sciences', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-paramedical-sciences', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(8, 0, 0, 0, 'College of Health Sciences', '', 1, 'College of Health Sciences', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-health-sciences', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(9, 0, 0, 0, 'College of Legal Studies', '', 1, 'College of Legal Studies', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-legal-studies', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(10, 0, 0, 0, 'College of Media Studies', '', 1, 'College of Media Studies', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-media-studies', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(11, 0, 0, 0, 'College of Ayurveda', '', 1, 'College of Ayurveda', 'CoE', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-ayurveda', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', ''),
(12, 0, 0, 0, 'College of ALLIED SCIENCE', '', 1, 'College of ALLIED SCIENCE', 'CoAS', 0, '', '<section class=\"continer\">\r\n<figure class=\"comn_soon text-center\"><img src=\"SITE_URLassets/images/coming.jpg\" alt=\"image\"></figure>\r\n</section>', 'college-of-allied-science', '', '', '', '', '', '', NULL, 1, 1, 1, '2024-03-12 00:00:00', 1, '0000-00-00 00:00:00', NULL, NULL, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `connect_programme`
--

CREATE TABLE `connect_programme` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `web_page` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `current_datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `web_page`, `ip_address`, `created_date`, `current_datetime`) VALUES
(1, 'test', 'admin', 6434543543, 'test', 'test', 'contact us', '192.168.100.128', '2024-04-09', '2024-04-09 15:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_slug` varchar(255) DEFAULT NULL,
  `course_image` varchar(255) DEFAULT NULL,
  `course_brochure` varchar(255) DEFAULT NULL,
  `course_subtitle` text DEFAULT NULL,
  `overwrite_url` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `l_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `other_duration` longtext NOT NULL,
  `other_l_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `engagement_mode` varchar(255) DEFAULT 'Full Time',
  `lateral_entry` enum('yes','no') NOT NULL DEFAULT 'no',
  `overview` longtext DEFAULT NULL,
  `program_objective` longtext DEFAULT NULL,
  `highlights` longtext DEFAULT NULL,
  `structure` longtext DEFAULT NULL,
  `intake` longtext DEFAULT NULL,
  `eligibility` text DEFAULT NULL,
  `eligibility_lateral` text DEFAULT NULL,
  `apply_online` varchar(255) DEFAULT NULL,
  `apply2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `fee_lateral` varchar(255) DEFAULT NULL,
  `admissions` longtext DEFAULT NULL,
  `program_curriculam` text DEFAULT NULL,
  `career_path` longtext DEFAULT NULL,
  `testimonial` text DEFAULT NULL,
  `faq` longtext DEFAULT NULL,
  `contact_detail` longtext DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `program_id`, `batch`, `specialization`, `school_id`, `department_id`, `course_name`, `course_slug`, `course_image`, `course_brochure`, `course_subtitle`, `overwrite_url`, `duration`, `l_duration`, `other_duration`, `other_l_duration`, `engagement_mode`, `lateral_entry`, `overview`, `program_objective`, `highlights`, `structure`, `intake`, `eligibility`, `eligibility_lateral`, `apply_online`, `apply2`, `fee`, `fee_lateral`, `admissions`, `program_curriculam`, `career_path`, `testimonial`, `faq`, `contact_detail`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 4, '', '', 2, '', 'Diploma in Computer Science and Engineering', 'diploma-in-computer-science-and-engineering', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(2, 4, '', '', 1, '', 'Diploma in Civil Engineering', 'diploma-in-civil-engineering', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(3, 4, '', '', 1, '', 'Diploma in Mechanical Engineering', 'diploma-in-mechanical-engineering', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 3, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(4, 4, '', '', 1, '', 'Diploma in Electrical Engineering', 'diploma-in-electrical-engineering', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 4, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(5, 4, '', '', 7, '', 'Diploma in Dialysis', 'diploma-in-dialysis', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 5, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(6, 4, '', '', 3, '', 'Diploma with Pharmacy', 'diploma-with-pharmacy', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 6, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(7, 4, '', '', 6, '', 'GNM', 'gnm', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 7, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(8, 1, '', '', 2, '', 'Bachelor of TechnologyComputer Science and Engineering', 'bachelor-of-technologycomputer-science-and-engineering', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 8, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(9, 1, '', '', 2, '', 'CSE with specialization in Artificial Intelligence & Machine Learning', 'cse-with-specialization-in-artificial-intelligence-machine-learning', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 9, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(10, 1, '', '', 2, '', 'CSE with specialization in Cyber Security', 'cse-with-specialization-in-cyber-security', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 10, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(11, 1, '', '', 2, '', 'CSE with specialization in Gaming and AR/VR', 'cse-with-specialization-in-gaming-and-ar/vr', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 11, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(12, 1, '', '', 2, '', 'CSE with specialization in VFX', 'cse-with-specialization-in-vfx', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 12, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(13, 1, '', '', 2, '', 'CSE with specialization in Blockchain', 'cse-with-specialization-in-blockchain', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 13, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(14, 1, '', '', 2, '', 'CSE with specialization in Web Development', 'cse-with-specialization-in-web-development', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 14, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1),
(15, 1, '', '', 2, '', 'Bachelor of Computer Applications (BCA)', 'bachelor-of-computer-applications-bca', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 15, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(16, 1, '', '', 2, '', 'BCA with specialization in Gaming and AR/VR', 'bca-with-specialization-in-gaming-and-ar/vr', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 16, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(17, 1, '', '', 2, '', 'BCA with specialization in VFX', 'bca-with-specialization-in-vfx', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 17, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(18, 1, '', '', 2, '', 'BCA with specialization in Blockchain', 'bca-with-specialization-in-blockchain', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 18, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1),
(19, 1, '', '', 2, '', 'BCA with specialization in Web Development', 'bca-with-specialization-in-web-development', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 19, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(20, 1, '', '', 2, '', 'B.Tech. (Hons) in Computer Science and Engineering (Lateral Entry)', 'btech-hons-in-computer-science-and-engineering-lateral-entry', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 20, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(21, 1, '', '', 1, '', 'Bachelor of Technology in Civil Engineering', 'bachelor-of-technology-in-civil-engineering', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 21, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(22, 1, '', '', 1, '3', 'Bachelor of Technology in Electrical Engineering', 'bachelor-of-technology-in-electrical--engineering', 'uploads/course/Program02.webp', 'uploads/brochure/dummy.pdf', '', '', '4 Years', '', '', '', 'Full Time', 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 22, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1),
(23, 1, '', '', 1, '', 'Bachelor of Technology in Mechanical Engineering', 'bachelor-of-technology-in-mechanical-engineering', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 23, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(24, 1, '', '', 6, '', 'Bachelor of Science in Nursing (B.Sc. Nursing)', 'bachelor-of-science-in-nursing-bsc-nursing', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 24, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(25, 1, '', '', 6, '', 'Post Basic B.Sc. Nursing', 'post-basic-bsc-nursing', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 25, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(26, 1, '', '', 7, '', 'Bachelor of Physiotherapy-BPT', 'bachelor-of-physiotherapy-bpt', '', NULL, '', '', '4.5 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 26, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(27, 1, '', '', 7, '', 'Bachelor in Medical Laboratory Technology-BMLT', 'bachelor-in-medical-laboratory-technology-bmlt', '', NULL, '', '', '3.5 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 27, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(28, 1, '', '', 7, '', 'Bachelor of Medical Radiology and Imaging Technology (BMRIT)', 'bachelor-of-medical-radiology-and-imaging-technology-bmrit', '', NULL, '', '', '3.5 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 28, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(29, 1, '', '', 11, '', 'Bachelor of Ayurvedic Medicine and Surgery (BAMS)', 'bachelor-of-ayurvedic-medicine-and-surgery-bams', '', NULL, '', '', '5.5 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 29, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(30, 1, '', '', 5, '', 'Bachelor of Business Administration (BBA)', 'bachelor-of-business-administration-bba', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 30, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(31, 1, '', '', 5, '', 'Bachelor of Business Administration (BBA) with Specialization in Digital Marketing', 'bachelor-of-business-administration-bba-with-specialization-in-digital-marketing', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 31, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(32, 1, '', '', 5, '', 'Bachelor of Business Administration (BBA) with Specialization in Family Business & Entrepreneurship', 'bachelor-of-business-administration-bba-with-specialization-in-family-business-entrepreneurship', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 32, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(33, 1, '', '', 5, '', 'Bachelor of Business Administration (BBA) with Specialization in Human Resource Management', 'bachelor-of-business-administration-bba-with-specialization-in-human-resource-management', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 33, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(34, 1, '', '', 5, '', 'Bachelor of Business Administration (BBA) with Specialization in Tourism', 'bachelor-of-business-administration-bba-with-specialization-in-tourism', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 34, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(35, 1, '', '', 5, '', 'Bachelor of Business Administration (BBA) with Specialization in Fin Tech', 'bachelor-of-business-administration-bba-with-specialization-in-fin-tech', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 35, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(36, 1, '', '', 5, '', 'Bachelor of Business Administration (BBA) with Specialization in Business Analytics', 'bachelor-of-business-administration-bba-with-specialization-in-business-analytics', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 36, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(37, 1, '', '', 5, '', 'Bachelor of Business Administration (BBA) with Specialization in Project Management', 'bachelor-of-business-administration-bba-with-specialization-in-project-management', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 37, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(38, 1, '', '', 5, '', 'Bachelor of Commerce (B.Com Hons.) – CFA', 'bachelor-of-commerce-bcom-hons-cfa', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 38, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(39, 1, '', '', 5, '', 'Bachelor of Commerce (B. Com Hons.)', 'bachelor-of-commerce-b-com-hons', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 39, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(40, 1, '', '', 3, '', 'Bachelor of Pharmacy', 'bachelor-of-pharmacy', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 40, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(41, 1, '', '', 8, '', 'B.VOC (OTT)', 'bvoc-ott', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 41, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(42, 1, '', '', 4, '', 'Bachelor of Science (B.Sc.)Agriculture', 'bachelor-of-science-bscagriculture', '', NULL, '', '', '4 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 42, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(43, 1, '', '', 9, '', 'BBA LLB', 'bba-llb', '', NULL, '', '', '5 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 43, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(44, 1, '', '', 9, '', 'BA LLB', 'ba-llb', '', NULL, '', '', '5 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 44, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(45, 1, '', '', 9, '', 'LLB', 'llb', '', NULL, '', '', '5 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 45, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(46, 1, '', '', 10, '', 'BJMC', 'bjmc', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 46, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(47, 2, '', '', 2, '', 'Master of Technology in Computer Science & Engineering', 'master-of-technology-in-computer-science-engineering', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 47, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(48, 2, '', '', 2, '', 'Master of Computer Applications (MCA)', 'master-of-computer-applications-mca', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 48, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(49, 2, '', '', 1, '', 'Master of Technology in Electrical Engineering', 'master-of-technology-in--electrical-engineering', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 49, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(50, 2, '', '', 1, '', 'Master of Technology in Civil Engineering', 'master-of-technology-in-civil-engineering', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 50, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(51, 2, '', '', 1, '', 'Master of Technology in Mechanical Engineering', 'master-of-technology-in-mechanical-engineering', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 51, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(52, 2, '', '', 7, '', 'Master of Physiotherapy (MPT) in NEURO', 'master-of-physiotherapy-mpt-in-neuro', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 52, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(53, 2, '', '', 7, '', 'Master of Physiotherapy (MPT) in ORTHO', 'master-of-physiotherapy-mpt-in-ortho', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 53, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(54, 2, '', '', 7, '', 'Master of Physiotherapy (MPT) in SPORTS', 'master-of-physiotherapy-mpt-in-sports', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 54, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(55, 2, '', '', 7, '', 'MSc in Medical Laboratory Technology (MLT)', 'msc-in-medical-laboratory-technology-mlt', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 55, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(56, 2, '', '', 5, '', 'Master of Business Administration (MBA)', 'master-of-business-administration-mba', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 56, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(57, 2, '', '', 5, '', 'MBA with Specialization in Digital Marketing', 'mba-with-specialization-in-digital-marketing', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 57, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(58, 2, '', '', 5, '', 'MBA with Specialization in Family Business & Entrepreneurship', 'mba-with-specialization-in-family-business-entrepreneurship', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 58, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(59, 2, '', '', 5, '', 'MBA with Specialization in Human Resource Management', 'mba-with-specialization-in-human-resource-management', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 59, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(60, 2, '', '', 5, '', 'MBA with Specialization in Fin Tech', 'mba-with-specialization-in-fin-tech', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 60, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(61, 2, '', '', 5, '', 'MBA with Specialization in Business Analytics', 'mba-with-specialization-in-business-analytics', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 61, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(62, 2, '', '', 5, '', 'MBA with Specialization in Project Management', 'mba-with-specialization-in-project-management', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 62, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(63, 2, '', '', 8, '', 'Master of Public Health (MPH)', 'master-of-public-health-mph', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 63, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(64, 2, '', '', 8, '', 'Master of Hospital Administration (MHA)', 'master-of-hospital-administration-mha', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 64, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(65, 2, '', '', 4, '', 'Master of Science ( Agriculture)', 'master-of-science--agriculture', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 65, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(66, 2, '', '', 4, '', 'MBA with specialization in Agri Business', 'mba-with-specialization-in-agri-business', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 66, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(67, 2, '', '', 10, '', 'MJMC', 'mjmc', '', NULL, '', '', '2 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 67, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(68, 2, '', '', 12, '4', 'Master of Science (M.Sc.) in Material Sciences', 'master-of-science-msc-in-material-sciences', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 68, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(69, 2, '', '', 12, '4', 'Master of Science (M.Sc.) in Nanoscience', 'master-of-science-msc-in-nanoscience', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 69, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(70, 2, '', '', 12, '4', 'Master of Science (M.Sc.) in Industrial Polymer Science', 'master-of-science-msc-in-industrial-polymer-science', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 70, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(71, 2, '', '', 12, '4', 'Master of Science (M.Sc.) in Computational Physics', 'master-of-science-msc-in-computational-physics', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 71, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(72, 2, '', '', 12, '4', 'Master of Science (M.Sc.) in Renewable Energy', 'master-of-science-msc-in-renewable-energy', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 72, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(73, 2, '', '', 12, '5', 'Master of Science (M.Sc.) in Analytical Chemistry', 'master-of-science-msc-in-analytical-chemistry', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 73, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(74, 2, '', '', 12, '5', 'Master of Science (M.Sc.) in Forensic Chemistry', 'master-of-science-msc-in-forensic-chemistry', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 74, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(75, 2, '', '', 12, '5', 'Master of Science (M.Sc.) in Pharmaceutical Chemistry', 'master-of-science-msc-in-pharmaceutical-chemistry', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 75, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(76, 2, '', '', 12, '6', 'Master of Science (M.Sc.) in Dietetics and Nutrition', 'master-of-science-msc-in-dietetics-and-nutrition', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 76, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(77, 2, '', '', 12, '7', 'Master of Science (M.Sc.) in Statistics', 'master-of-science-msc-in-statistics', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 77, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(78, 2, '', '', 12, '7', 'Master of Science (M.Sc.) in Data Science and Analysis', 'master-of-science-msc-in-data-science-and-analysis', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 78, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(79, 2, '', '', 12, '7', 'Master of Science (M.Sc.) in Mathematics for AI and ML', 'master-of-science-msc-in-mathematics-for-ai-and-ml', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 79, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(80, 2, '', '', 12, '8', 'Master of Arts (M.A.) in Soft Skills', 'master-of-arts-ma-in-soft-skills', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 80, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(81, 2, '', '', 12, '8', 'Master of Arts (M.A.) in Psychology', 'master-of-arts-ma-in-psychology', '', NULL, '', '', '2 years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 81, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(82, 3, '', '', 2, '', 'Ph.D. in Computer Science & Engineering', 'phd-in-computer-science-engineering', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 82, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(83, 3, '', '', 2, '', 'Ph.D. in Computer Science', 'phd-in-computer-science', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 83, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(84, 3, '', '', 1, '', 'Ph.D. in Civil Engineering', 'phd-in-civil-engineering', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 84, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(85, 3, '', '', 1, '', 'Ph.D. in Mechanical Engineering', 'phd-in-mechanical-engineering', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 85, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(86, 3, '', '', 1, '', 'Ph.D. in Electrical Engineering', 'phd-in-electrical-engineering', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 86, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(87, 3, '', '', 4, '', 'Ph.D. in Agriculture', 'phd-in-agriculture', '', NULL, '', '', '3 Years', '', '', '', 'Full Time', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 87, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `current_opening`
--

CREATE TABLE `current_opening` (
  `id` int(11) UNSIGNED NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `job_description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `last_date` timestamp NULL DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `college_id` int(11) DEFAULT 0,
  `name_short` varchar(255) DEFAULT NULL,
  `department_name` varchar(255) NOT NULL,
  `maker_heading` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `about_department` text DEFAULT NULL,
  `laboratories` longtext DEFAULT NULL,
  `program_image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `department_image` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `course_image` varchar(655) DEFAULT NULL,
  `prospectus` varchar(255) DEFAULT NULL,
  `icons` varchar(255) DEFAULT NULL,
  `admission` text DEFAULT NULL,
  `our_mentors` text DEFAULT NULL,
  `infrastructure` longtext DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `mobile_contact` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `college_id`, `name_short`, `department_name`, `maker_heading`, `slug`, `about_department`, `laboratories`, `program_image`, `status`, `display_order`, `created_date`, `created_by`, `department_image`, `image`, `course_image`, `prospectus`, `icons`, `admission`, `our_mentors`, `infrastructure`, `banner_title`, `mobile_contact`) VALUES
(1, 1, 'Department of Civil Engineering', 'Department of Civil Engineering', '', 'department-of-civil-engineering', '', '', '', 1, 1, '2024-03-30 05:47:07', 1, '', '', '', '', '', '', '', '', '', ''),
(2, 1, 'Department of Mechanical Engineering', 'Department of  Mechanical Engineering', '', 'department-of-mechanical-engineering', '', '', '', 1, 2, '2024-03-30 05:47:36', 1, '', '', '', '', '', '', '', '', '', ''),
(3, 1, 'Department of Electrical And Electronics Engineering', 'Department of Electrical And Electronics Engineering', '', 'department-of-electrical-and-electronics-engineering', '', '', '', 1, 3, '2024-03-30 05:47:53', 1, '', '', '', '', '', '', '', '', '', ''),
(4, 12, 'DEPARTMENT OF PHYSICS', 'DEPARTMENT OF PHYSICS', '', 'department-of-physics', '', '', '', 1, 3, '2024-03-30 05:47:53', 1, '', '', '', '', '', '', '', '', '', ''),
(5, 12, 'DEPARTMENT OF CHEMISTRY', 'DEPARTMENT OF CHEMISTRY', '', 'department-of-chemistry', '', '', '', 1, 3, '2024-03-30 05:47:53', 1, '', '', '', '', '', '', '', '', '', ''),
(6, 12, 'DEPARTMENT OF BIOLOGY', 'DEPARTMENT OF BIOLOGY', '', 'department-of-biology', '', '', '', 1, 3, '2024-03-30 05:47:53', 1, '', '', '', '', '', '', '', '', '', ''),
(7, 12, 'DEPARTMENT OF MATHEMATICS', 'DEPARTMENT OF MATHEMATICS', '', 'department-of-mathematics', '', '', '', 1, 3, '2024-03-30 05:47:53', 1, '', '', '', '', '', '', '', '', '', ''),
(8, 12, 'DEPARTMENT OF HUMANITIES', 'DEPARTMENT OF HUMANITIES', '', 'department-of-humanities', '', '', '', 1, 3, '2024-03-30 05:47:53', 1, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_section`
--

CREATE TABLE `download_section` (
  `id` int(25) NOT NULL,
  `page_type` int(2) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url_slug` varchar(255) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `school_id` int(11) DEFAULT 0,
  `department_id` int(11) DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `display_order` int(25) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(5) NOT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(5) NOT NULL DEFAULT 0,
  `created_ip` varchar(100) DEFAULT NULL,
  `updated_ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `download_section`
--

INSERT INTO `download_section` (`id`, `page_type`, `title`, `url_slug`, `image`, `school_id`, `department_id`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`, `created_ip`, `updated_ip`) VALUES
(1, 2, 'Sports Achievement 2023-24', 'sports-achievement-2023-24', 'uploads/pdf/IQAC Committee (1).pdf', 1, 3, 1, 1, '2024-04-12 07:13:53', 1, '2024-04-12 08:06:22', 0, '192.168.100.80', NULL),
(2, 2, 'ISO Certificate', 'iso-certificate', 'uploads/pdf/Sports Achievement 2023-24.pdf', 1, 3, 1, 2, '2024-04-12 07:14:26', 1, '2024-04-12 08:06:26', 0, '192.168.100.80', NULL),
(5, 1, 'Adipiscing elit.', 'adipiscing-elit', 'uploads/pdf/student-say1.png', 1, 3, 1, 3, '2024-04-12 07:25:16', 1, '2024-04-12 08:06:55', 0, '192.168.100.80', NULL),
(6, 1, 'Report on REVOTHSAVA Men\'s Football 2023', 'report-on-revothsava-mens-football-2023', 'uploads/pdf/Report on REVOTHSAVA Men\'s Football 2023.pdf', 1, 2, 1, 4, '2024-04-12 08:04:08', 1, '2024-04-12 08:06:32', 0, '192.168.100.80', NULL),
(7, 1, 'Hot News', 'sdgsdg', 'uploads/pdf/student-say1 (2).png', 1, 2, 1, 5, '2024-04-12 08:41:57', 1, '2024-04-12 08:42:18', 0, '192.168.100.80', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `download_type`
--

CREATE TABLE `download_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `download_type`
--

INSERT INTO `download_type` (`id`, `title`, `slug`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Download First', 'download-first', 1, 1, '2024-04-12 00:00:00', 1, '0000-00-00 00:00:00', 0),
(2, 'Download Second', 'download-second', 1, 2, '2024-04-12 00:00:00', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_type` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `favcolor` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_images` varchar(255) DEFAULT NULL,
  `pdf` varchar(456) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `show_home` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `map_on_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_on_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `map_on_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_on_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `upload_pdf` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT 0,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_type`, `title`, `favcolor`, `slug`, `image`, `banner_images`, `pdf`, `video`, `event_date`, `short_description`, `description`, `display_order`, `show_home`, `status`, `created_date`, `created_by`, `map_on_school`, `show_on_school`, `map_on_department`, `show_on_department`, `updated_date`, `updated_by`, `upload_pdf`, `school_id`, `department_id`) VALUES
(2, 1, 'Centre For Smart Solar Energy organizes workshop on Solar PV Technology', '#000000', 'centre-for-smart-solar-energy-organizes-workshop-on-solar-pv-technology', 'uploads/events/banner_images/news-sm1.jpg', NULL, NULL, NULL, '2024-04-20', '', '', 1, 0, 1, '2024-04-08', 1, '', '', '', '', '2024-04-15', 1, NULL, 0, 0),
(3, 1, 'COER University Armed with world-class infrastructure and extensive global partnerships', '#000000', 'coer-university-armed-with-world-class-infrastructure-and-extensive-global-partnerships', '', '', '', NULL, '2024-04-22', '', '', 2, 1, 1, '2024-04-08', 1, '', '', '', '', NULL, NULL, NULL, 0, 0),
(4, 1, 'Centre For Smart Solar Energy organizes workshop on Solar PV Technology', '#000000', 'centre-for-smart-solar-energy-organizes-workshop-on-solar-pv-technology', 'uploads/events/research-mobile.jpg', '', '', NULL, '2024-04-27', '', '', 3, 1, 1, '2024-04-08', 1, '', '', '', '', NULL, NULL, NULL, 0, 0),
(5, 2, 'test', '#000000', 'test', 'uploads/events/Mobile-600X605.png', 'uploads/events/banner_images/customer-logo1.jpg', '', NULL, '2024-04-08', '', '', 4, 1, 0, '2024-04-10', 1, '', '', '', '', NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`id`, `title`, `slug`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Event', 'events', 1, 1, '2023-02-24 12:05:31', 1, '2023-02-28 00:00:00', 1),
(2, 'News', 'news', 1, 2, '2023-02-24 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(3, 'Press Release', 'press-release', 0, 3, '2023-02-24 00:00:00', 1, '2023-02-28 00:00:00', 1),
(4, 'Notices & Announcements', 'notices-and-announcements', 1, 4, '2023-02-24 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(5, 'Award and Achievement', 'award-and-achievement', 0, 5, '2023-02-24 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(6, 'Academic Calendar', 'academic-calendar', 0, 5, '2023-02-24 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(7, 'Activity and Workshop', 'activity-and-workshop', 0, 5, '2023-02-24 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(8, 'Media Coverage', 'media-coverage', 1, 5, '2023-02-24 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(13, 'Webinar', 'webinar', 0, 6, '2023-10-30 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(14, 'News and Activity', 'news-and-activity', 1, 7, '2023-11-07 00:00:00', 1, '2023-12-26 00:00:00', 1),
(15, 'Print Ads', 'print-ads', 0, 8, '2023-12-21 00:00:00', 1, '2023-12-21 00:00:00', 1),
(16, 'Archive', 'archive', 0, 0, '2024-01-10 12:01:16', NULL, '2024-01-10 12:01:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fact_and_figure_type`
--

CREATE TABLE `fact_and_figure_type` (
  `fact_and_figure_id` int(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fact_and_figure_type`
--

INSERT INTO `fact_and_figure_type` (`fact_and_figure_id`, `name`, `status`, `created_date`) VALUES
(1, 'About University', 1, '2024-04-06 11:00:34'),
(2, 'Placement Records', 1, '2024-04-06 11:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(25) NOT NULL,
  `type` int(25) DEFAULT 0,
  `question` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `answer` text NOT NULL,
  `school_id` int(11) DEFAULT 0,
  `department_id` int(11) DEFAULT 0,
  `status` int(1) DEFAULT 0,
  `display_order` int(25) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(25) DEFAULT 0,
  `updated_by` int(25) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_information`
--

CREATE TABLE `form_information` (
  `form_id` int(12) NOT NULL COMMENT 'SUB MENU',
  `module_id` int(25) NOT NULL COMMENT 'MENU',
  `form_name` varchar(255) NOT NULL,
  `display_order_form` int(10) NOT NULL,
  `form_url` varchar(255) NOT NULL,
  `child` int(15) NOT NULL,
  `form_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `form_information`
--

INSERT INTO `form_information` (`form_id`, `module_id`, `form_name`, `display_order_form`, `form_url`, `child`, `form_status`) VALUES
(1, 1, 'Dashboard', 1, 'dashboard', 1, 0),
(2, 18, 'Governance', 4, 'governance', 1, 1),
(3, 2, 'User Management ', 5, 'users', 1, 1),
(4, 2, 'Role Management', 6, 'user_role', 1, 1),
(5, 3, 'Menu ', 7, 'menu', 1, 0),
(6, 3, 'SubMenu', 8, 'sub_menu', 1, 0),
(7, 3, 'Uploads ', 9, 'upload', 1, 1),
(8, 3, 'URL SEO', 10, 'url_seo', 1, 1),
(9, 3, 'URL Redirections', 11, 'url_redirection', 1, 0),
(10, 3, 'Settings', 12, 'setting', 1, 0),
(11, 4, 'Happenings Type', 10, 'happening_type', 1, 1),
(12, 4, 'Manage Happenings ', 11, 'happenings', 1, 1),
(13, 5, 'Manage CMS', 12, 'cms', 1, 1),
(14, 6, 'Leadership Type', 13, 'board_governance_type', 1, 1),
(15, 6, 'Manage Leadership', 13, 'board_governance', 1, 1),
(16, 7, 'Program Type', 15, 'program_type', 1, 1),
(17, 8, 'Testimonials Type', 17, 'testimonial_type', 1, 1),
(18, 8, 'Testimonial', 18, 'testimonial', 1, 1),
(19, 9, 'Manage Alumni', 0, 'alumni', 1, 1),
(20, 9, 'Connect Programme', 20, 'connect_programme', 1, 1),
(21, 60, 'Current Opening', 21, 'current_opening', 1, 1),
(22, 11, 'Manage Faculty', 22, 'school', 1, 1),
(23, 12, 'Prefix', 23, 'salute', 1, 1),
(24, 12, 'Designation', 24, 'designation', 1, 1),
(25, 12, 'Manage Staff', 25, 'mentor', 1, 1),
(26, 13, 'Logo Type', 26, 'logo_type', 1, 1),
(27, 13, 'Manage Logo', 27, 'logos', 1, 1),
(28, 11, 'Placement & Recuritrers', 28, 'placement_recuritrers', 1, 0),
(29, 7, 'Manage Course', 29, 'course', 1, 1),
(30, 11, 'Manage Department', 23, 'department', 1, 1),
(31, 14, 'Manage FAQ', 24, 'faq', 1, 1),
(32, 15, 'Manage Download', 32, 'download_section', 1, 1),
(33, 16, 'Home Banner', 2, 'home_banner', 1, 1),
(34, 17, 'Add Media Type', 34, 'media_type', 1, 1),
(35, 17, 'Add/View/Album', 35, 'album', 1, 1),
(36, 16, 'Home', 2, 'about_home', 1, 1),
(37, 18, 'Governance Type ', 3, 'governance_type ', 1, 1),
(38, 3, 'Setting', 9, 'setting', 1, 1),
(39, 19, 'Blog Type ', 3, 'blog_type ', 1, 1),
(40, 19, 'Blog ', 3, 'blogs', 1, 1),
(41, 3, 'Fact & Figure', 4, 'slider', 1, 1),
(42, 11, 'School Wise Upload', 37, 'upload_school', 1, 1),
(43, 20, 'Contact Enquiry', 0, 'enquire', 1, 1),
(44, 21, 'Microsite Cms', 0, 'ms_cms', 1, 1),
(45, 21, 'Microsite Type', 0, 'microsite', 1, 1),
(46, 21, 'Specialisations', 0, 'specialisations', 1, 1),
(47, 21, 'Microsite Testimonial', 0, 'ms_testimonial', 1, 1),
(48, 21, 'Banners', 0, 'ms_home_banner', 1, 1),
(49, 21, 'Manage Mentor', 0, 'ms_mentor', 1, 1),
(50, 21, 'Happening Type', 0, 'ms_happening_type', 1, 1),
(51, 21, 'Happenings', 0, 'ms_happenings', 1, 1),
(52, 21, 'Ms Program Type', 0, 'ms_program_type', 1, 1),
(53, 21, 'Courses & Traning Domain', 0, 'ms_course_traningdomain', 1, 1),
(54, 60, 'Page', 0, 'career', 1, 1),
(55, 60, 'Job Application', 0, 'job_applications', 1, 1),
(56, 21, 'Publication', 0, 'ms_publication', 1, 1),
(57, 21, 'Project', 0, 'ms_project', 1, 1),
(58, 21, 'Microsite Leader type', 0, 'ms_leader_type', 1, 1),
(59, 15, 'Download Type', 0, 'download_type', 1, 1),
(60, 63, 'Manage Awards', 0, 'awards_and_ranking', 1, 1),
(61, 64, 'Media Type', 20, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_permission`
--

CREATE TABLE `form_permission` (
  `form_permission_id` int(11) NOT NULL,
  `form_information_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `form_view` tinyint(4) NOT NULL,
  `form_add` tinyint(4) NOT NULL,
  `form_edit` tinyint(4) NOT NULL,
  `form_delete` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `form_permission`
--

INSERT INTO `form_permission` (`form_permission_id`, `form_information_id`, `role_id`, `form_view`, `form_add`, `form_edit`, `form_delete`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 1, 1),
(3, 3, 1, 1, 1, 1, 1),
(4, 4, 1, 1, 1, 1, 1),
(5, 5, 1, 1, 1, 1, 1),
(6, 6, 1, 1, 1, 1, 1),
(7, 7, 1, 1, 1, 1, 1),
(8, 8, 1, 1, 1, 1, 1),
(9, 9, 1, 1, 1, 1, 1),
(10, 10, 1, 1, 1, 1, 1),
(11, 11, 1, 1, 1, 1, 1),
(12, 12, 1, 1, 1, 1, 1),
(13, 13, 1, 1, 1, 1, 1),
(14, 14, 1, 1, 1, 1, 1),
(15, 15, 1, 1, 1, 1, 1),
(16, 16, 1, 1, 1, 1, 0),
(17, 17, 1, 1, 1, 1, 1),
(18, 18, 1, 1, 1, 1, 1),
(19, 19, 1, 1, 1, 1, 1),
(20, 20, 1, 1, 1, 1, 1),
(21, 21, 1, 1, 1, 1, 1),
(22, 22, 1, 1, 1, 1, 1),
(23, 23, 1, 1, 1, 1, 1),
(24, 24, 1, 1, 1, 1, 1),
(25, 25, 1, 1, 1, 1, 1),
(26, 26, 1, 1, 1, 1, 1),
(27, 27, 1, 1, 1, 1, 1),
(28, 28, 1, 1, 1, 1, 1),
(29, 29, 1, 1, 1, 1, 1),
(30, 30, 1, 1, 1, 1, 1),
(31, 31, 1, 1, 1, 1, 1),
(32, 32, 1, 1, 1, 1, 1),
(33, 33, 1, 1, 1, 1, 1),
(34, 34, 1, 1, 1, 1, 1),
(35, 35, 1, 1, 1, 1, 1),
(36, 36, 1, 1, 1, 1, 1),
(37, 37, 1, 1, 1, 1, 1),
(38, 38, 1, 1, 1, 1, 1),
(39, 39, 1, 1, 1, 1, 1),
(40, 40, 1, 1, 1, 1, 1),
(41, 41, 1, 1, 1, 1, 1),
(42, 42, 1, 1, 1, 1, 1),
(43, 43, 1, 1, 1, 1, 1),
(44, 44, 1, 1, 1, 1, 1),
(45, 45, 1, 1, 1, 1, 1),
(46, 46, 1, 1, 1, 1, 1),
(47, 47, 1, 1, 1, 1, 1),
(48, 48, 1, 1, 1, 1, 1),
(49, 49, 1, 1, 1, 1, 1),
(50, 50, 1, 1, 1, 1, 1),
(51, 51, 1, 1, 1, 1, 1),
(52, 52, 1, 1, 1, 1, 1),
(53, 53, 1, 1, 1, 1, 1),
(54, 54, 1, 1, 1, 1, 1),
(55, 55, 1, 1, 1, 1, 1),
(56, 56, 1, 1, 1, 1, 1),
(57, 57, 1, 1, 1, 1, 1),
(58, 58, 1, 1, 1, 1, 1),
(59, 59, 1, 1, 1, 1, 1),
(60, 60, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `governance`
--

CREATE TABLE `governance` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `governance_type`
--

CREATE TABLE `governance_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `happenings_mapping`
--

CREATE TABLE `happenings_mapping` (
  `happening_map_id` int(11) NOT NULL,
  `happening_id` int(30) DEFAULT 0,
  `school_id` int(25) DEFAULT 0,
  `department_id` int(25) DEFAULT 0,
  `display_order` int(25) DEFAULT 0,
  `show_on_home_page` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `happenings_type_id` int(25) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `happenings_mapping`
--

INSERT INTO `happenings_mapping` (`happening_map_id`, `happening_id`, `school_id`, `department_id`, `display_order`, `show_on_home_page`, `status`, `created_date`, `happenings_type_id`) VALUES
(1, 4, 11, 0, 0, 1, 1, '2024-04-09 11:46:19', 0),
(2, 3, 6, 0, 0, 1, 1, '2024-04-10 08:42:41', 0),
(3, 2, 8, 0, 0, 1, 1, '2024-04-10 10:28:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_banner`
--

CREATE TABLE `home_banner` (
  `id` int(11) NOT NULL,
  `ms_id` int(11) DEFAULT 0,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner_link` varchar(255) NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `banner_images` varchar(255) NOT NULL,
  `mobile_banner` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `home_banner` text DEFAULT NULL,
  `school_id` int(11) DEFAULT 0,
  `caption_desc` text DEFAULT NULL,
  `department_id` int(11) DEFAULT 0,
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL DEFAULT 1,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_banner`
--

INSERT INTO `home_banner` (`id`, `ms_id`, `title`, `banner_link`, `video_link`, `slug`, `banner_images`, `mobile_banner`, `logo`, `home_banner`, `school_id`, `caption_desc`, `department_id`, `display_order`, `status`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 0, 'Shaping tomorrow\'s leaders through academic rigor', 'test', 'test', 'test', 'uploads/home/banner_images/home-banner1.jpg', 'uploads/home/banner_images/home-banner1.jpg', '', NULL, 0, '', 0, 1, 1, '2024-03-13', 1, '2024-04-04', 1),
(3, 0, 'Shaping tomorrow\'s leaders through academic rigor2', 'test', '', 'test', 'uploads/home/banner_images/home-banner2.jpg', 'uploads/home/banner_images/home-banner2.jpg', 'uploads/home/banner_images/product-img1.jpg', NULL, 0, '<p>test</p>', 0, 3, 1, '2024-03-29', 1, '2024-04-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `current_location` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `fulldetails` longtext DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_time`
--

CREATE TABLE `login_time` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL,
  `session_code` varchar(256) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_time`
--

INSERT INTO `login_time` (`id`, `login_id`, `ip_address`, `login_time`, `logout_time`, `session_code`, `status`) VALUES
(1, 1, '192.168.100.128', '2024-03-04 04:01:23', '0000-00-00 00:00:00', 'e2jo4u1s791l6x192632vt34nfp522', 1),
(2, 1, '192.168.100.128', '2024-03-04 04:23:44', '0000-00-00 00:00:00', '111d8w5h1110f212662bj2iq319eyz', 1),
(3, 1, '192.168.100.128', '2024-03-04 04:29:21', '0000-00-00 00:00:00', 'b21t20v04271f11sp511g8x72mj1l1', 1),
(4, 1, '192.168.100.128', '2024-03-04 10:36:10', '0000-00-00 00:00:00', '121jo0415113tu12w18s41922a2glq', 1),
(5, 1, '192.168.100.128', '2024-03-05 03:57:26', '0000-00-00 00:00:00', '17nwu21p24g06lokdrf1b356428qz1', 1),
(6, 1, '192.168.100.128', '2024-03-06 03:39:48', '0000-00-00 00:00:00', 'e14f25vs91qjxao3b80dt421rp7312', 1),
(7, 1, '192.168.100.128', '2024-03-12 05:21:06', '0000-00-00 00:00:00', '0z12711u2o9rmy2016gfsi44b321n2', 1),
(8, 1, '192.168.100.128', '2024-03-12 05:52:02', '0000-00-00 00:00:00', '3j112fsm01618211g1427b2nt10436', 1),
(9, 1, '192.168.100.128', '2024-03-12 11:30:16', '0000-00-00 00:00:00', 'd35l1j72ienou713f16k22111200v5', 1),
(10, 1, '192.168.100.128', '2024-03-13 03:54:38', '0000-00-00 00:00:00', '12102jt19qpk97lh0x22a17sumcbd4', 1),
(11, 1, '192.168.100.128', '2024-03-13 04:50:06', '0000-00-00 00:00:00', '0t15u35b219142g2f86d12x91ywrom', 1),
(12, 1, '192.168.100.128', '2024-03-13 05:02:42', '2024-03-13 05:37:01', 'va8216w1c22242x112os613gl0n12r', 0),
(13, 1, '192.168.100.128', '2024-03-13 05:37:07', '0000-00-00 00:00:00', '2121zw1ht741q1f5obn15d92m12y22', 1),
(14, 1, '192.168.100.128', '2024-03-13 06:05:45', '0000-00-00 00:00:00', 'n176gl2fkd12b3ah29101r41is52w4', 1),
(15, 1, '192.168.100.128', '2024-03-14 03:47:37', '0000-00-00 00:00:00', '6u1dyxz517lsf0p1201qn296b16121', 1),
(16, 1, '192.168.100.128', '2024-03-14 06:05:44', '0000-00-00 00:00:00', '2vw92pyejl3344k2qx51118zd1ag10', 1),
(17, 1, '192.168.100.128', '2024-03-14 06:11:12', '0000-00-00 00:00:00', '3kawqf2025cg18urh21i4m53n182z3', 1),
(18, 1, '192.168.100.128', '2024-03-14 06:24:31', '2024-03-14 06:38:33', '3a9m3ru14002j8w1tk1g2y915io635', 0),
(19, 1, '192.168.100.128', '2024-03-14 06:38:54', '0000-00-00 00:00:00', '10192vwhe25522q1nj9031126y318t', 1),
(20, 1, '192.168.100.128', '2024-03-14 08:42:35', '2024-03-14 08:47:19', 'b81xsn4m01pc2z6j290221125t7g23', 0),
(21, 1, '192.168.100.128', '2024-03-14 09:10:48', '0000-00-00 00:00:00', '1k36qsf15141di36072u1j51873mwz', 1),
(22, 1, '192.168.100.128', '2024-03-14 09:35:50', '0000-00-00 00:00:00', '415ho66ju3qsc102383d451124901i', 1),
(23, 1, '192.168.100.128', '2024-03-14 10:15:17', '0000-00-00 00:00:00', '9j913n386g1l52110c4w232s171761', 1),
(24, 1, '192.168.100.128', '2024-03-14 10:50:23', '0000-00-00 00:00:00', '611u110e0264n9117121r2x13k25i7', 1),
(25, 1, '192.168.100.128', '2024-03-19 04:31:24', '0000-00-00 00:00:00', '100w2vt13242z812j251o27b15qp2c', 1),
(26, 1, '192.168.100.127', '2024-03-26 06:35:05', '0000-00-00 00:00:00', '00161112o10l752q2dx11t4mrg91e6', 1),
(27, 1, '192.168.100.127', '2024-03-27 03:56:40', '0000-00-00 00:00:00', 'u7251k01h2fji64236xn284212162t', 1),
(28, 1, '192.168.100.127', '2024-03-27 06:01:24', '0000-00-00 00:00:00', '2b14m3111n4t1d51v2sl1c2h029516', 1),
(29, 1, '192.168.100.127', '2024-03-29 04:18:14', '0000-00-00 00:00:00', '2j26314e5s21106h8fpb05rmw321a7', 1),
(30, 1, '192.168.100.79', '2024-03-29 04:40:29', '0000-00-00 00:00:00', '8261o29df5xnpa191cb17146822tky', 1),
(31, 1, '192.168.100.79', '2024-03-30 03:43:56', '0000-00-00 00:00:00', '7ck19221p114rqx1b81g6zlfd53uw1', 1),
(32, 1, '192.168.100.79', '2024-04-01 04:13:05', '0000-00-00 00:00:00', '6111jg47i2u2ne45b3q2c111lo5v1k', 1),
(33, 1, '192.168.100.79', '2024-04-01 04:47:18', '0000-00-00 00:00:00', 'm21x22n1pe7j9642hd1001t1353221', 1),
(34, 1, '192.168.100.79', '2024-04-01 11:19:17', '0000-00-00 00:00:00', '7110222g2e1cq1uhz2o0vl131fs6x3', 1),
(35, 1, '192.168.100.79', '2024-04-02 04:13:12', '0000-00-00 00:00:00', '12276n198279u2111yiv120w1221bg', 1),
(36, 1, '192.168.100.79', '2024-04-02 07:00:57', '0000-00-00 00:00:00', 'n2831w1tq12mi7114s103y0lzvgj62', 1),
(37, 1, '192.168.100.79', '2024-04-02 10:06:26', '0000-00-00 00:00:00', '31112jr45m0ql2d14y53i4w18f2gs0', 1),
(38, 1, '192.168.100.79', '2024-04-03 03:49:55', '0000-00-00 00:00:00', '52y83ec106b11gwkrj0xp32121114u', 1),
(39, 1, '192.168.100.79', '2024-04-03 10:07:42', '0000-00-00 00:00:00', 'fpdc229we0nv41117i05l4h1j22211', 1),
(40, 1, '192.168.100.79', '2024-04-04 04:43:04', '0000-00-00 00:00:00', '219a1erfg2whc0t25151784d532101', 1),
(41, 1, '192.168.100.79', '2024-04-04 12:22:03', '2024-04-04 12:27:02', '4f12sv57a12mkc16q91u2tz256pwgl', 0),
(42, 1, '192.168.100.79', '2024-04-04 12:27:05', '0000-00-00 00:00:00', '1rnft01b18m5i1115l91170wkg5p24', 1),
(43, 1, '192.168.100.79', '2024-04-05 03:53:59', '0000-00-00 00:00:00', '1411p225u2n1061vzr18h17a99ow2f', 1),
(44, 1, '192.168.100.79', '2024-04-05 03:56:48', '2024-04-05 04:43:47', 'm31uh247151a13ixw2n025pc1d2tj1', 0),
(45, 1, '192.168.100.79', '2024-04-05 11:35:08', '0000-00-00 00:00:00', 'u146wx1hg120on1122ky08237b315l', 1),
(46, 1, '192.168.100.79', '2024-04-06 04:30:01', '0000-00-00 00:00:00', '51juxs582723fne4t91rw1v1420110', 1),
(47, 1, '192.168.100.79', '2024-04-06 10:15:37', '2024-04-06 12:44:45', '2i61z5c5n05egvkqaxrmw223h1o241', 0),
(48, 1, '192.168.100.79', '2024-04-08 03:40:32', '0000-00-00 00:00:00', '24z18w3u62omlc51dn4124pv1201x1', 1),
(49, 1, '192.168.100.79', '2024-04-08 03:46:14', '0000-00-00 00:00:00', 'xim83115qghyuzd2t261591l22213v', 1),
(50, 1, '192.168.100.79', '2024-04-08 04:15:57', '0000-00-00 00:00:00', '2rsf1lz92m1g8aqv2kwt16d1024118', 1),
(51, 1, '192.168.100.79', '2024-04-08 11:36:48', '0000-00-00 00:00:00', '3411bt21o20r529p1xey18a1m6d0v1', 1),
(52, 1, '192.168.100.79', '2024-04-09 03:39:15', '0000-00-00 00:00:00', 'w8plc16d251157222ar241bjk310n0', 1),
(53, 1, '192.168.100.79', '2024-04-09 03:57:10', '2024-04-09 07:22:08', '14zimv10h21xjk11ct412rl124113p', 0),
(54, 1, '192.168.100.79', '2024-04-09 06:44:25', '0000-00-00 00:00:00', '11t07x848j121v2d126623ohu4925l', 1),
(55, 1, '192.168.100.252', '2024-04-09 07:28:17', '0000-00-00 00:00:00', 'j81n4pt239m2koa1621s23261r6d7v', 1),
(56, 1, '192.168.100.252', '2024-04-09 07:28:19', '2024-04-09 12:13:38', 'j21gl5o4742n956ym103zx281itp1v', 0),
(57, 1, '192.168.100.252', '2024-04-09 12:16:08', '0000-00-00 00:00:00', '2315o112xz1e431g8166d152hfkb9j', 1),
(58, 1, '192.168.100.252', '2024-04-10 03:51:06', '0000-00-00 00:00:00', 'r323173t0qk9712h6122591124jfm1', 1),
(59, 1, '192.168.100.252', '2024-04-10 03:51:11', '2024-04-10 12:33:30', '3v2l24b1d6pu1324y19n92i1025rex', 0),
(60, 1, '192.168.100.252', '2024-04-10 08:21:50', '0000-00-00 00:00:00', '60mt2pw725e89y8222v41rq1a1b71c', 1),
(61, 1, '192.168.100.252', '2024-04-11 04:39:04', '2024-04-11 07:11:59', 'zolqxp227ud1422v256cyaf051s0km', 0),
(62, 1, '192.168.100.252', '2024-04-11 10:46:53', '2024-04-11 12:30:42', 'ha8223v2g1262u4tm8z927f31113qd', 0),
(63, 1, '192.168.100.252', '2024-04-12 03:47:53', '2024-04-12 12:55:01', '384c22i1e0u111k931j31o7212h92m', 0),
(64, 1, '192.168.100.252', '2024-04-12 09:52:28', '0000-00-00 00:00:00', 'u48xj11m63321pb2is0alt9ezw12c5', 1),
(65, 1, '192.168.100.252', '2024-04-15 04:29:46', '0000-00-00 00:00:00', 'nd6o845rk212112s91z5a0t6if4p23', 1),
(66, 1, '192.168.100.252', '2024-04-15 04:35:14', '2024-04-15 11:11:04', '322n090a5zs182621cx2tw223178q1', 0),
(67, 1, '192.168.100.252', '2024-04-15 13:40:36', '0000-00-00 00:00:00', 'rf2n31kz25uc02e2b66xiypd35v71j', 1),
(68, 1, '192.168.100.252', '2024-04-16 03:55:41', '2024-04-16 06:41:24', 'a241xc215e01h24i4b50208ws91192', 0),
(69, 1, '192.168.100.252', '2024-04-16 04:55:32', '0000-00-00 00:00:00', '149604z2y1021o4a62111123211625', 1),
(70, 1, '192.168.100.252', '2024-04-16 06:50:41', '0000-00-00 00:00:00', '441cn129ie74322v02b6ao1wx2h15r', 1),
(71, 1, '192.168.100.252', '2024-04-17 04:50:49', '0000-00-00 00:00:00', '2p32h1q26in25425glv73zs1119y0f', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) UNSIGNED NOT NULL,
  `college_id` int(11) DEFAULT 0,
  `school_id` int(11) DEFAULT 0,
  `department_id` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `college_id`, `school_id`, `department_id`, `type`, `title`, `slug`, `image`, `description`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 0, 0, 0, 1, 'KubSAU', '1', 'uploads/logos/int-logo1.png', '', 1, 1, '2024-04-06 00:00:00', 1, '2024-04-06 00:00:00', 1),
(2, 0, 0, 0, 1, 'SUU', 'suu', 'uploads/logos/int-logo2.png', '', 1, 2, '2024-04-06 00:00:00', 1, NULL, NULL),
(3, 0, 0, 0, 1, 'Kentuckey', 'kentuckey', 'uploads/logos/int-logo3.png', '', 1, 3, '2024-04-06 00:00:00', 1, NULL, NULL),
(4, 0, 0, 0, 1, 'IAU', 'iau', 'uploads/logos/int-logo4.png', '', 1, 4, '2024-04-06 00:00:00', 1, NULL, NULL),
(5, 0, 0, 0, 2, 'COER University Roorkee Campus Tour', 'roorkee-campus-tour', 'uploads/logos/international -collaborations.jpg', '', 1, 5, '2024-04-06 00:00:00', 1, '2024-04-06 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logo_mapping`
--

CREATE TABLE `logo_mapping` (
  `logo_map_id` int(11) NOT NULL,
  `logo_id` int(30) DEFAULT 0,
  `school_id` int(25) DEFAULT 0,
  `department_id` int(25) DEFAULT 0,
  `display_order` int(25) DEFAULT 0,
  `show_on_home_page` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `logo_type_id` int(25) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo_type`
--

CREATE TABLE `logo_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `page` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `logo_type`
--

INSERT INTO `logo_type` (`id`, `title`, `slug`, `page`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'International Collaborations', 'international-collaborations', 'Home', 1, 1, '2024-04-06 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(2, 'Roorkee Campus Tour', 'roorkee-campus-tour', 'Home', 1, 2, '2024-04-06 00:00:00', 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_type`
--

CREATE TABLE `media_type` (
  `id` int(15) NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(256) NOT NULL,
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `media_type`
--

INSERT INTO `media_type` (`id`, `title`, `slug`, `display_order`, `status`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Gallery', '', 1, 1, '2024-04-12', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `member_type`
--

CREATE TABLE `member_type` (
  `id` int(15) NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(256) NOT NULL,
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `profile_image` varchar(455) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `other_description` longtext DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `extension` bigint(20) DEFAULT NULL,
  `qualification` longtext DEFAULT NULL,
  `experience` longtext DEFAULT NULL,
  `website` longtext DEFAULT NULL,
  `publication` longtext DEFAULT NULL,
  `patents` longtext DEFAULT NULL,
  `book_published` longtext DEFAULT NULL,
  `research_interests` longtext DEFAULT NULL,
  `prof_membership` longtext DEFAULT NULL,
  `awards_achievements` longtext DEFAULT NULL,
  `training_experience` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `faculty_teach` int(11) DEFAULT 1 COMMENT 'Teaching=1, Non Teaching=0;'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id`, `school_id`, `department_id`, `designation`, `title`, `name`, `slug`, `image`, `profile_image`, `short_description`, `description`, `other_description`, `banner_title`, `email`, `phone`, `extension`, `qualification`, `experience`, `website`, `publication`, `patents`, `book_published`, `research_interests`, `prof_membership`, `awards_achievements`, `training_experience`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`, `faculty_teach`) VALUES
(1, 1, 3, 'Assistant Professor', 'Dr.', 'Mukul Dixit', 'mukul-dixit', 'DrMukulDixit.webp', NULL, NULL, '', '', NULL, '', '', 0, '', '<p><span>Teaching experience </span><strong>5 yr</strong></p>', '', '<p><span>Department of Electrical And Electronics Engineering</span></p>', '', '', '', '', '', NULL, 1, 1, '2024-04-10 00:00:00', 1, '2024-04-10 00:00:00', 1, 1),
(2, 1, 2, 'Assistant Professor', 'Mrs.', 'Anuradha', 'anuradha', 'MrsAnuradha.webp', NULL, NULL, '', '', NULL, '', '', 0, '<p><span>M.Tech., Ph.D. in Electrical Engineering (NIT Surat)</span></p>', '<p><span>Teaching experience </span><strong>5 yr</strong></p>', '', '<p><span>Department of Electrical And Electronics Engineering</span></p>', '', '', '', '', '', NULL, 1, 2, '2024-04-10 00:00:00', 1, NULL, NULL, 1),
(3, 1, 1, 'Assistant Professor', 'Mr.', 'Sandeep Singh', 'sandeep-singh', 'MrsKavitajaiswal.webp', NULL, NULL, '', '', NULL, '', '', 0, '<p><span>M.Tech., Ph.D. in Electrical Engineering (NIT Surat)</span></p>', '<p><span>Teaching experience </span><strong>5 yr</strong></p>', '', '<p><span>Department of Electrical And Electronics Engineering</span></p>', '', '', '', '', '', NULL, 1, 3, '2024-04-10 00:00:00', 1, '2024-04-10 00:00:00', 1, 1),
(4, 1, 2, 'Assistant Professor', 'Mr.', 'Nitin Chand', 'nitin-chand', 'MrNitinChand.webp', NULL, NULL, '', '', NULL, '', '', 0, '<p><span>M.Tech., Ph.D. in Electrical Engineering (NIT Surat)</span></p>', '<p><span>Teaching experience </span><strong>5 yr</strong></p>', '', '<p><span>Department of Electrical And Electronics Engineering</span></p>', '', '', '', '', '', NULL, 1, 4, '2024-04-10 00:00:00', 1, NULL, NULL, 1),
(5, 1, 3, 'Assistant Professor', 'Mrs.', 'Kavita jaiswal', 'kavita-jaiswal', 'MrsKavitajaiswal.webp', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n<p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>', '', NULL, '', '', 0, '<p><span>M.Tech., Ph.D. in Electrical Engineering (NIT Surat)</span></p>', '<p><span>Teaching experience </span><strong>5 yr</strong></p>', '', '<p><span>Department of Electrical And Electronics Engineering</span></p>', '', '', '', '', '', NULL, 1, 5, '2024-04-10 00:00:00', 1, '2024-04-11 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mentor_5octbkp`
--

CREATE TABLE `mentor_5octbkp` (
  `id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `other_description` longtext DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `extension` bigint(20) DEFAULT NULL,
  `qualification` longtext DEFAULT NULL,
  `experience` longtext DEFAULT NULL,
  `website` longtext DEFAULT NULL,
  `publication` longtext DEFAULT NULL,
  `patents` longtext DEFAULT NULL,
  `book_published` longtext DEFAULT NULL,
  `research_interests` longtext DEFAULT NULL,
  `prof_membership` longtext DEFAULT NULL,
  `awards_achievements` longtext DEFAULT NULL,
  `training_experience` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(15) NOT NULL,
  `updated_date` varchar(255) NOT NULL,
  `updated_by` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu_name`, `display_order`, `status`, `icon`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Dashboard', 1, 1, 'flaticon-line-graph', '2023-03-09', 1, '', 0),
(2, 'Users', 14, 0, 'm-menu__link-icon la la-users', '2023-03-01', 1, '2023-03-01', 1),
(3, 'Master', 2, 1, 'm-menu__link-icon la la-user-plus', '2023-03-01', 1, '', 0),
(4, 'Happenings', 3, 1, 'm-menu__link-icon flaticon-calendar', '2023-03-01', 1, '', 0),
(5, 'CMS', 5, 1, 'm-menu__link-icon fa fa-clipboard-list', '2023-03-01', 1, '', 0),
(6, 'Leadership', 4, 1, 'm-menu__link-icon fa fa-graduation-cap', '2023-03-01', 1, '', 0),
(7, 'Program & Courses', 5, 1, 'm-menu__link-icon fa fa-book-open', '2023-03-02', 1, '2023-03-13', 1),
(8, 'Testimonials', 6, 1, 'm-menu__link-icon fab fa-algolia', '2023-03-02', 1, '', 0),
(9, 'Alumni', 9, 0, 'm-menu__link-icon la la-users', '2023-03-02', 1, '', 0),
(11, 'Schools  and Departments', 7, 1, 'la la-book', '2023-03-04', 1, '2024-04-10', 1),
(12, 'People & Staff', 8, 1, 'fas fa-school', '2023-03-04', 1, '', 0),
(13, 'Logo\'s', 9, 1, 'm-menu__link-icon flaticon-signs-2', '2023-03-09', 1, '', 0),
(14, 'FAQ', 10, 1, 'fa fa-question-circle', '2023-03-09', 1, '', 0),
(15, 'Download', 11, 1, 'fa fa-check-square', '2023-03-09', 1, '', 0),
(16, 'Home', 1, 1, 'm-menu__link-icon la la-bank', '2023-03-09', 1, '', 0),
(17, 'Gallery', 12, 1, 'fa fa-window-maximize', '2023-03-09', 1, '2024-04-11', 1),
(18, 'Governance', 10, 1, 'm-menu__link-icon flaticon-line-graph', '2023-03-01', 1, '', 0),
(19, 'Blog', 10, 1, 'm-menu__link-icon flaticon-line-graph', '2023-03-01', 1, '', 0),
(20, 'Enquiry', 15, 1, '', '2023-08-28', 1, '2023-08-28', 1),
(21, 'Manage Microsite', 16, 1, 'm-menu__link-icon fas fa-school', '2023-09-14', 1, '', 0),
(60, 'Career', 60, 1, 'flaticon-line-graph', '2023-03-03', 1, '', 0),
(62, 'Awards', 9, 1, 'm-menu__link-icon flaticon-signs-2', '2023-03-09', 1, '', 0),
(63, 'Awards & Ranking', 61, 1, '', '2024-04-04', 1, '', 0),
(64, 'Media Coverage', 62, 1, 'm-menu__link-icon m-menu__link-icon flaticon-calendar', '2024-04-12', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `microsite`
--

CREATE TABLE `microsite` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `vedio_url` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_cms_page`
--

CREATE TABLE `ms_cms_page` (
  `page_id` int(11) NOT NULL,
  `parent_id` int(15) NOT NULL,
  `page_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `faculty_member` text DEFAULT NULL,
  `students` text DEFAULT NULL,
  `heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `page_slug` varchar(256) NOT NULL,
  `section1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon_image` varchar(255) DEFAULT NULL,
  `display_order` int(10) NOT NULL,
  `page_status` tinyint(4) NOT NULL,
  `show_home` int(11) DEFAULT 0,
  `show_in_department` int(11) DEFAULT 0,
  `show_in_school` int(11) DEFAULT 0,
  `created_date` varchar(50) NOT NULL,
  `created_by` int(15) NOT NULL,
  `updated_date` varchar(50) DEFAULT NULL,
  `updated_by` int(15) NOT NULL DEFAULT 1,
  `short_description` text DEFAULT NULL,
  `detail_description` text DEFAULT NULL,
  `cms_header` longtext DEFAULT NULL,
  `school_id` int(25) DEFAULT 0,
  `department_id` int(25) DEFAULT 0,
  `page_type` int(11) NOT NULL DEFAULT 0 COMMENT '0= not direct, 1= direct',
  `related_page_id` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `showon_submenu` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_commitees`
--

CREATE TABLE `ms_commitees` (
  `id` int(11) UNSIGNED NOT NULL,
  `ms_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_contacts`
--

CREATE TABLE `ms_contacts` (
  `id` int(11) NOT NULL,
  `ms_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `web_page` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `prev_url` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `current_datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_course_traningdomain`
--

CREATE TABLE `ms_course_traningdomain` (
  `id` int(11) UNSIGNED NOT NULL,
  `ms_id` int(11) DEFAULT 0,
  `programtype_id` int(11) DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_desc` longtext DEFAULT NULL,
  `overview` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_happenings`
--

CREATE TABLE `ms_happenings` (
  `id` int(11) NOT NULL,
  `ms_id` int(11) DEFAULT 0,
  `event_type` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `favcolor` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_images` varchar(255) DEFAULT NULL,
  `pdf` varchar(456) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `show_home` int(11) DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `upload_pdf` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT 0,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_happening_type`
--

CREATE TABLE `ms_happening_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_home_banner`
--

CREATE TABLE `ms_home_banner` (
  `id` int(11) NOT NULL,
  `ms_id` int(11) DEFAULT 0,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(256) NOT NULL,
  `banner_images` varchar(255) NOT NULL,
  `mobile_banner` varchar(255) DEFAULT NULL,
  `vedio_url` varchar(255) DEFAULT NULL,
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_leader_type`
--

CREATE TABLE `ms_leader_type` (
  `id` int(11) NOT NULL,
  `ms_id` int(11) DEFAULT 0,
  `leader_type` int(11) DEFAULT NULL,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(256) NOT NULL,
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_mentor`
--

CREATE TABLE `ms_mentor` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT 'faculty=1 and team=2 and 3=leadership',
  `leader_type` int(11) DEFAULT 0,
  `ms_id` int(11) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `email` varchar(355) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `qualification` longtext DEFAULT NULL,
  `experience` longtext DEFAULT NULL,
  `website` longtext DEFAULT NULL,
  `publication` longtext DEFAULT NULL,
  `patents` longtext DEFAULT NULL,
  `book_published` longtext DEFAULT NULL,
  `research_interests` longtext DEFAULT NULL,
  `prof_membership` longtext DEFAULT NULL,
  `awards_achievements` longtext DEFAULT NULL,
  `training_experience` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_program_type`
--

CREATE TABLE `ms_program_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `apply_now` varchar(255) DEFAULT NULL,
  `program_specification` varchar(255) NOT NULL,
  `application_form` varchar(255) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `course_desc` longtext DEFAULT NULL,
  `overview` longtext DEFAULT NULL,
  `scope` longtext DEFAULT NULL,
  `accomplishment` longtext DEFAULT NULL,
  `intake` text DEFAULT NULL,
  `course_offered` longtext DEFAULT NULL,
  `highlights` longtext DEFAULT NULL,
  `eligibility` longtext DEFAULT NULL,
  `clientel` longtext DEFAULT NULL,
  `client_code` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `short_desc` text DEFAULT NULL,
  `testimonials` text DEFAULT NULL,
  `key_contact` longtext DEFAULT NULL,
  `traning_domain` longtext DEFAULT NULL,
  `key_contact_name` varchar(255) DEFAULT NULL,
  `key_contact_position` varchar(255) DEFAULT NULL,
  `key_contact_phone` varchar(255) DEFAULT NULL,
  `key_contact_email` varchar(255) DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_project`
--

CREATE TABLE `ms_project` (
  `id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) DEFAULT 0,
  `ms_id` int(11) DEFAULT 0,
  `year` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_publication`
--

CREATE TABLE `ms_publication` (
  `id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) DEFAULT 0,
  `ms_id` int(11) DEFAULT 0,
  `year` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_subscribe_enquire`
--

CREATE TABLE `ms_subscribe_enquire` (
  `id` int(11) NOT NULL,
  `ms_id` int(11) DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `prev_url` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `current_datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ms_testimonial`
--

CREATE TABLE `ms_testimonial` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT 0 COMMENT '1=student, 2=Recruiters, 3=Other',
  `ms_id` int(11) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE `placement` (
  `id` int(15) NOT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `sec1_title` varchar(255) DEFAULT NULL,
  `sec1_desc` varchar(255) DEFAULT NULL,
  `sec1_image` varchar(255) DEFAULT NULL,
  `sec1_link` varchar(255) DEFAULT NULL,
  `sec2_title` text DEFAULT NULL,
  `sec2_desc` text DEFAULT NULL,
  `sec2_image` varchar(255) DEFAULT NULL,
  `sec2_link` varchar(255) DEFAULT NULL,
  `sec3_title` varchar(255) DEFAULT NULL,
  `sec3_desc` text DEFAULT NULL,
  `sec3_image` varchar(255) DEFAULT NULL,
  `sec3_link` varchar(255) DEFAULT NULL,
  `sec4_title` varchar(255) DEFAULT NULL,
  `sec4_desc` text DEFAULT NULL,
  `sec4_details` text DEFAULT NULL,
  `status` int(15) NOT NULL,
  `display_order` int(15) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `updated_date` date NOT NULL,
  `updated_by` int(10) NOT NULL,
  `sec5_title` text DEFAULT NULL,
  `sec5_desc` text DEFAULT NULL,
  `sec5_image` varchar(255) DEFAULT NULL,
  `sec6_title` text DEFAULT NULL,
  `sec6_desc` text DEFAULT NULL,
  `sec6_link` varchar(255) DEFAULT NULL,
  `sec6_image` varchar(255) DEFAULT NULL,
  `sec7_title` text DEFAULT NULL,
  `sec7_desc` text DEFAULT NULL,
  `sec7_link` varchar(255) DEFAULT NULL,
  `banner_video` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`id`, `page_name`, `sec1_title`, `sec1_desc`, `sec1_image`, `sec1_link`, `sec2_title`, `sec2_desc`, `sec2_image`, `sec2_link`, `sec3_title`, `sec3_desc`, `sec3_image`, `sec3_link`, `sec4_title`, `sec4_desc`, `sec4_details`, `status`, `display_order`, `page_title`, `meta_keywords`, `meta_description`, `updated_date`, `updated_by`, `sec5_title`, `sec5_desc`, `sec5_image`, `sec6_title`, `sec6_desc`, `sec6_link`, `sec6_image`, `sec7_title`, `sec7_desc`, `sec7_link`, `banner_video`) VALUES
(2, '', 'Unveiling the Future Shaping a Visionary Tomorrow', 'COER University is one of the best educational entities in North India, recognized for excellence.', '', '', '', '<section class=\"admission_banner d-none d-lg-block aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"800\">\r\n<div class=\"container\">\r\n<div class=\"path_success_bg\">\r\n<div class=\"path_successLeft\">\r\n<h4>Admissions <span>2024</span></h4>\r\n<h2>Find your path <span> to Success</span></h2>\r\n</div>\r\n<div class=\"path_successRight\">\r\n<p>Lorem ipsum dolor sit amet, consecteadipiscing elit.</p>\r\n<a href=\"https://register.coeruniversity.ac.in/\" class=\"btn_apply btn\"> Apply Now </a>\r\n<p>Or Call <a href=\"tel:+91 8070500600\"><img src=\"SITE_URLassets/frontend/images/icons/awesome-phone.svg\" alt=\"Phone\">+91 8070500600</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '', '', '', '<section class=\"placements_wrap aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"900\">\r\n<ul class=\"placm_grid\">\r\n<li class=\"d-lg-flex d-none\">\r\n<figure><img src=\"SITE_URLassets/frontend/images/placment-ayush-Jha.png\" alt=\"Placements\" class=\"img-fluid\"></figure>\r\n<div class=\"compny_offer\">\r\n<p>Placed at</p>\r\n<figure><img src=\"SITE_URLassets/frontend/images/amazon.png\" alt=\"amazon\"></figure>\r\n<div class=\"name_company\">\r\n<h5>30 <span>LPA</span></h5>\r\n<h6>Ayush Jha</h6>\r\n<p>Software Engineer</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li class=\"d-flex\">\r\n<figure><img src=\"SITE_URLassets/frontend/images/manisha-jha.png\" alt=\"Placements\" class=\"img-fluid\"> <!-- <img src=\"images/manisha-jha.jpg\" alt=\"Placements\" class=\"img-fluid d-block d-lg-none\"> --></figure>\r\n<div class=\"compny_offer\">\r\n<p>Placed at</p>\r\n<figure><img src=\"SITE_URLassets/frontend/images/fran_contact.png\" alt=\"logo\"></figure>\r\n<div class=\"name_company\">\r\n<h5>44 <span>LPA</span></h5>\r\n<h6>Manisha Jha</h6>\r\n<p>Simulation Engineer</p>\r\n</div>\r\n</div>\r\n</li>\r\n<li>\r\n<div class=\"placment_content\">\r\n<h5>Placements</h5>\r\n<blockquote>Unleash Your Potential with the Finest Opportunities</blockquote>\r\n<p>Both for final jobs and summer internships, is a core element of the university’s activities.</p>\r\n<a href=\"#\" class=\"link_arrow\"> <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"29\" height=\"25\" viewBox=\"0 0 29 25\">\r\n                        <g id=\"Group_7359\" data-name=\"Group 7359\" transform=\"translate(16586.5 21070.5)\">\r\n                            <rect id=\"Rectangle_1304\" data-name=\"Rectangle 1304\" width=\"28\" height=\"24\" transform=\"translate(-16586 -21070)\" fill=\"none\" stroke=\"\" stroke-width=\"1\"></rect>\r\n                            <path id=\"Icon_feather-arrow-right\" data-name=\"Icon feather-arrow-right\" d=\"M-3,8.85H8.919M5.07,5l3.85,3.85L5.07,12.7\" transform=\"translate(-16574.5 -21066.5)\" fill=\"none\" stroke=\"\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1\"></path>\r\n                        </g>\r\n                    </svg> </a>\r\n<ul>\r\n<li><a href=\"#\">Training</a></li>\r\n<li><a href=\"#\">Corporate Resource Centre</a></li>\r\n<li><a href=\"#\">Industry Collaborations</a></li>\r\n<li><a href=\"#\">Placement policy</a></li>\r\n</ul>\r\n</div>\r\n</li>\r\n</ul>\r\n</section>', '', '', '', '<section class=\"alumni_wrap d-none d-lg-block aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"800\">\r\n<div class=\"container\">\r\n<div class=\"inner\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-7\">\r\n<ul>\r\n<li>\r\n<figure><img src=\"SITE_URLassets/frontend/images/arpit-agrawal.jpg\" alt=\"alumni\" class=\"img-fluid w-100\">\r\n<figcaption><img src=\"SITE_URLassets/frontend/images/alumni-logo1.png\" alt=\"alumni\">\r\n<p><strong>Arpit Agrawal</strong> <span>Business Analyst</span></p>\r\n</figcaption>\r\n</figure>\r\n</li>\r\n<li>\r\n<figure><img src=\"SITE_URLassets/frontend/images/jaspreet-kaur.jpg\" alt=\"alumni\" class=\"img-fluid w-100\">\r\n<figcaption><img src=\"SITE_URLassets/frontend/images/alumni-logo2.png\" alt=\"alumni\">\r\n<p><strong>Jaspreet Kaur</strong> <span>Business Analyst</span></p>\r\n</figcaption>\r\n</figure>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-lg-5\">\r\n<div class=\"alumni_contnet\">\r\n<h5>Alumni</h5>\r\n<p>COER University is always proud of its Alumni. They had brought laurels to the college as a student and are still bringing pride by their excellent personal and professional profiles.</p>\r\n<a class=\"link_arrow\"><img src=\"SITE_URLassets/frontend/images/icons/white-arrow-right.png\" alt=\"icon\"></a>\r\n<blockquote>COER University is having <span>a rich strength of</span></blockquote>\r\n<div class=\"count_number\">4K+</div>\r\n<h6>alumni</h6>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '', 1, 0, '', '', '', '2024-04-16', 1, '', '<section class=\"research_inovativ research_desktop d-lg-block d-none aos-init aos-animate\" data-aos=\"fade-up\" data-aos-duration=\"1000\">\r\n<div class=\"container\">\r\n<div class=\"row d-flex align-items-lg-center\">\r\n<div class=\"col-lg-7\">\r\n<h5>Research</h5>\r\n<blockquote>Innovative Research for <span>Tomorrow\'s Breakthroughs</span></blockquote>\r\n</div>\r\n<div class=\"col-lg-5\">\r\n<ul class=\"nav nav-tabs d-none d-lg-flex\" id=\"research-tab-c role=\" tablist\"=\"\" role=\"tablist\">\r\n<li class=\"nav-item\" role=\"presentation\"><button class=\"nav-link\" id=\"research-groups-tab\" data-bs-toggle=\"tab\" data-bs-target=\"#research-groups-tab-pane\" type=\"button\" role=\"tab\" aria-controls=\"research-groups-tab-pane\" aria-selected=\"false\" tabindex=\"-1\">Research Groups</button></li>\r\n<li class=\"nav-item\" role=\"presentation\"><button class=\"nav-link\" id=\"research-publications-tab\" data-bs-toggle=\"tab\" data-bs-target=\"#research-publications-tab-pane\" type=\"button\" role=\"tab\" aria-controls=\"research-publications-tab-pane\" aria-selected=\"false\" tabindex=\"-1\">Research Publications</button></li>\r\n<li class=\"nav-item\" role=\"presentation\"><button class=\"nav-link active\" id=\"research-projects-tab\" data-bs-toggle=\"tab\" data-bs-target=\"#research-projects-tab-pane\" type=\"button\" role=\"tab\" aria-controls=\"research-projects-tab-pane\" aria-selected=\"true\">Research Projects</button></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"tab-content accordion\" id=\"research-tab-content\">\r\n<div class=\"tab-pane fade accordion-item\" id=\"research-groups-tab-pane\" role=\"tabpanel\" aria-labelledby=\"research-groups-tab\" tabindex=\"0\">\r\n<h2 class=\"accordion-header d-lg-none\" id=\"headingOne\"><button class=\"accordion-button\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">Research Groups</button></h2>\r\n<div id=\"collapseOne\" class=\"accordion-collapse collapse  d-lg-block\" aria-labelledby=\"headingOne\" data-bs-parent=\"#research-tab-content\">\r\n<div class=\"accordion-body p-0\">\r\n<h2>1</h2>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane fade accordion-item\" id=\"research-publications-tab-pane\" role=\"tabpanel\" aria-labelledby=\"research-publications-tab\" tabindex=\"0\">\r\n<h2 class=\"accordion-header d-lg-none\" id=\"headingTwo\"><button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\"> Research Publications </button></h2>\r\n<div id=\"collapseTwo\" class=\"accordion-collapse collapse d-lg-block\" aria-labelledby=\"headingTwo\" data-bs-parent=\"#research-tab-content\">\r\n<div class=\"accordion-body p-0\">\r\n<h2>2</h2>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane fade show active accordion-item\" id=\"research-projects-tab-pane\" role=\"tabpanel\" aria-labelledby=\"research-projects-tab\" tabindex=\"0\">\r\n<h2 class=\"accordion-header d-lg-none\" id=\"headingThree\"><button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\"> Research Projects </button></h2>\r\n<div id=\"collapseThree\" class=\"accordion-collapse collapse show d-lg-block\" aria-labelledby=\"headingThree\" data-bs-parent=\"#research-tab-content\">\r\n<div class=\"accordion-body p-0\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-4\">\r\n<div class=\"research_content\">\r\n<blockquote>We emphasise research that excels through its depth, yet is relevant for its breadth</blockquote>\r\n<div class=\"counter\">93%</div>\r\n<p>of our research was internationally <span>recognised quality.</span></p>\r\n<a href=\"#\"><img src=\"SITE_URLassets/frontend/images/icons/white-arow-right.png\" alt=\"icon\"></a></div>\r\n</div>\r\n<div class=\"col-lg-8\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-4\">\r\n<figure><img src=\"SITE_URLassets/frontend/images/research1.jpg\" alt=\"Research Projects\" class=\"img-fluid w-100\"></figure>\r\n<a href=\"#\">With more than $1.37 billion in <img src=\"SITE_URLassets/frontend/images/icons/chevron-right-yellow.png\" alt=\"icon\"></a></div>\r\n<div class=\"col-lg-4\">\r\n<figure><img src=\"SITE_URLassets/frontend/images/research2.jpg\" alt=\"Research Projects\" class=\"img-fluid w-100\"></figure>\r\n<a href=\"#\">Biomedical Signal Processing <img src=\"SITE_URLassets/frontend/images/icons/chevron-right-yellow.png\" alt=\"icon\"></a></div>\r\n<div class=\"col-lg-4\">\r\n<figure><img src=\"SITE_URLassets/frontend/images/research3.jpg\" alt=\"Research Projects\" class=\"img-fluid w-100\"></figure>\r\n<a href=\"#\">With more than $1.37 billion in <img src=\"SITE_URLassets/frontend/images/icons/chevron-right-yellow.png\" alt=\"icon\"></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '', '', '<div class=\"row\">\r\n<div class=\"col-lg-6 d-lg-block d-none\">\r\n<div class=\"imgnews_detail\">\r\n<figure><img src=\"http://wserver:8022/coer/assets/frontend/images/newslg-1.jpg\" alt=\"news\" class=\"img-fluid w-100\"></figure>\r\n<div class=\"content\">\r\n<h6>COLLECTIONS</h6>\r\n<blockquote>COER University TED? is an independent event</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div class=\"imgnews_caption\">\r\n<figure><img src=\"http://wserver:8022/coer/assets/frontend/images/news-reaserch.jpg\" alt=\"news\" class=\"img-fluid w-100\">\r\n<figcaption>\r\n<h6>RESEARCH</h6>\r\n<blockquote>COER University received Silver Award for the theme \"Creating Faculty Resources: Initiatives and Approaches\"</blockquote>\r\n<a href=\"#\"><img src=\"http://wserver:8022/coer/assets/frontend/images/icons/white-arrow-right.png\" alt=\"icon\"></a></figcaption>\r\n</figure>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', '', 'uploads/placement/University Shorter Version - 2 min.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `placement_recuritrers`
--

CREATE TABLE `placement_recuritrers` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_type`
--

CREATE TABLE `program_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `short_desc` text DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `program_type`
--

INSERT INTO `program_type` (`id`, `title`, `slug`, `status`, `short_desc`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Graduate', 'graduate', 1, '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</p>', 1, '2024-04-04 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(2, 'Post Graduate', 'post-graduate', 1, '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</p>', 2, '2024-04-04 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(3, 'Ph.D', 'phd', 1, '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</p>', 4, '2024-04-04 00:00:00', 1, '2024-04-04 00:00:00', 1),
(4, 'Diploma', 'diploma', 1, '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr</p>', 3, '2024-04-04 00:00:00', 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating_images`
--

CREATE TABLE `rating_images` (
  `id` int(11) NOT NULL,
  `rating_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `redirections`
--

CREATE TABLE `redirections` (
  `id` int(11) NOT NULL,
  `old_url` mediumtext NOT NULL,
  `new_url` mediumtext NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT '301',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` int(11) NOT NULL,
  `research_type` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `small_image` varchar(255) DEFAULT NULL,
  `large_image` varchar(255) DEFAULT NULL,
  `research_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `research_location` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research_type`
--

CREATE TABLE `research_type` (
  `research_type_id` int(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salute`
--

CREATE TABLE `salute` (
  `id` int(11) UNSIGNED NOT NULL,
  `salute` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `salute`
--

INSERT INTO `salute` (`id`, `salute`, `slug`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Mr.', 'mr', 1, 1, '2023-03-04 00:00:00', 1, '2023-03-04 00:00:00', 1),
(2, 'Dr.', 'dr', 1, 2, '2023-03-10 00:00:00', 1, NULL, NULL),
(3, 'Miss', 'miss', 1, 3, '2023-03-10 00:00:00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo_url`
--

CREATE TABLE `seo_url` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT 1,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT 1,
  `page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_index_follow` int(1) DEFAULT 0,
  `og_image` varchar(255) DEFAULT NULL,
  `status_sheet` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `duplicate` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_url`
--

INSERT INTO `seo_url` (`id`, `url`, `status`, `created_date`, `created_by`, `updated_date`, `updated_by`, `page_title`, `meta_keywords`, `meta_description`, `other_schema`, `canonical`, `no_index_follow`, `og_image`, `status_sheet`, `duplicate`) VALUES
(3, 'http://sd79/coer/about-us', 1, '2024-04-09 06:27:17', 1, NULL, 1, '', NULL, '', NULL, NULL, 0, NULL, NULL, 1),
(4, 'http://wserver:8022/coer/about-us', 1, '2024-04-09 07:27:31', 1, NULL, 1, 'About COER University', NULL, 'About COER University', NULL, NULL, 0, NULL, NULL, 1),
(5, 'http://wserver:8022/coer/happenings', 1, '2024-04-09 11:16:39', 1, NULL, 1, 'HAPPENINGS', NULL, 'HAPPENINGS', NULL, NULL, 0, NULL, NULL, 1),
(6, 'http://wserver:8022/coer/happenings/events', 1, '2024-04-09 11:16:50', 1, NULL, 1, 'Events', NULL, 'Events', NULL, NULL, 0, NULL, NULL, 1),
(7, 'http://wserver:8022/coer/research-innovation', 1, '2024-04-12 12:01:42', 1, NULL, 1, 'RESEARCH & INNOVATION', NULL, 'RESEARCH & INNOVATION', NULL, NULL, 0, NULL, NULL, 1),
(8, 'http://wserver:8022/coer/important-links/erp-login', 1, '2024-04-15 04:10:28', 1, NULL, 1, '', NULL, '', NULL, NULL, 0, NULL, NULL, 1),
(9, 'http://wserver:8022/coer/admissions/admission-process', 1, '2024-04-15 04:27:35', 1, NULL, 1, 'Admission Process', NULL, 'Admission Process', NULL, NULL, 0, NULL, NULL, 1),
(10, 'http://wserver:8022/coer/disclosures/university-acts-statutes', 1, '2024-04-15 04:35:32', 1, NULL, 1, 'University Acts & Statutes', NULL, 'University Acts & Statutes', NULL, NULL, 0, NULL, NULL, 1),
(11, 'http://wserver:8022/coer/why-us', 1, '2024-04-15 04:58:51', 1, NULL, 1, 'WHY US?', NULL, 'WHY US?', NULL, NULL, 0, NULL, NULL, 1),
(12, 'http://wserver:8022/coer/sitemap', 1, '2024-04-15 05:00:48', 1, NULL, 1, '', NULL, '', NULL, NULL, 0, NULL, NULL, 1),
(13, 'http://wserver:8022/coer/disclaimer', 1, '2024-04-15 05:03:10', 1, NULL, 1, '', NULL, '', NULL, NULL, 0, NULL, NULL, 1),
(14, 'http://wserver:8022/coer/important-links/hr-polices', 1, '2024-04-15 05:06:09', 1, NULL, 1, '', NULL, '', NULL, NULL, 0, NULL, NULL, 1),
(15, 'http://wserver:8022/coer/important-links/nptel-courses', 1, '2024-04-15 05:06:29', 1, NULL, 1, '', NULL, '', NULL, NULL, 0, NULL, NULL, 1),
(16, 'http://wserver:8022/coer/nptel-courses', 1, '2024-04-15 05:12:16', 1, NULL, 1, '', NULL, '', NULL, NULL, 0, NULL, NULL, 1),
(17, 'http://wserver:8022/coer/academics', 1, '2024-04-15 05:51:38', 1, NULL, 1, 'ACADEMICS', NULL, 'ACADEMICS', NULL, NULL, 0, NULL, NULL, 1),
(18, 'http://wserver:8022/coer/colleges', 1, '2024-04-15 05:53:55', 1, NULL, 1, '', NULL, '', NULL, NULL, 0, NULL, NULL, 1),
(19, 'http://wserver:8022/coer/facilities/campus-facilities', 1, '2024-04-15 09:27:39', 1, NULL, 1, 'Campus Facilities', NULL, 'Campus Facilities', NULL, NULL, 0, NULL, NULL, 1),
(20, 'http://wserver:8022/coer/iqac/iqac-calendar', 1, '2024-04-15 09:58:36', 1, NULL, 1, 'IQAC Calendar', NULL, 'IQAC Calendar', NULL, NULL, 0, NULL, NULL, 1),
(21, 'http://wserver:8022/coer/facilities/academic-facilities', 1, '2024-04-15 10:12:28', 1, NULL, 1, 'Academic Facilities', NULL, 'Academic Facilities', NULL, NULL, 0, NULL, NULL, 1),
(22, 'http://wserver:8022/coer/research-innovation/code-of-ethics', 1, '2024-04-15 10:12:46', 1, NULL, 1, 'Code of Ethics', NULL, 'Code of Ethics', NULL, NULL, 0, NULL, NULL, 1),
(23, 'http://wserver:8022/coer/alumni', 1, '2024-04-15 10:16:15', 1, NULL, 1, 'Alumni', NULL, 'Alumni', NULL, NULL, 0, NULL, NULL, 1),
(24, 'http://wserver:8022/coer/iqac/audits', 1, '2024-04-15 10:32:04', 1, NULL, 1, 'Audits', NULL, 'Audits', NULL, NULL, 0, NULL, NULL, 1),
(25, 'http://wserver:8022/coer/research', 1, '2024-04-16 05:01:15', 1, NULL, 1, 'Research', NULL, 'Research', NULL, NULL, 0, NULL, NULL, 1),
(26, 'http://wserver:8022/coer/placements', 1, '2024-04-16 05:05:01', 1, NULL, 1, 'PLACEMENTS', NULL, 'PLACEMENTS', NULL, NULL, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(25) NOT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site_logo` varchar(355) DEFAULT NULL,
  `prospectus` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `copyright` varchar(355) DEFAULT NULL,
  `apply_now` varchar(255) DEFAULT NULL,
  `office_phone` varchar(255) DEFAULT NULL,
  `custum_css` longtext DEFAULT NULL,
  `custum_js` longtext DEFAULT NULL,
  `apply_year` varchar(255) DEFAULT NULL,
  `admissions_office` varchar(255) DEFAULT NULL,
  `footer_address` text DEFAULT NULL,
  `office_timings` varchar(255) DEFAULT NULL,
  `need_help` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `created_by` int(15) NOT NULL DEFAULT 0,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(15) NOT NULL DEFAULT 0,
  `created_ip` varchar(100) DEFAULT NULL,
  `updated_ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `site_title`, `email`, `site_logo`, `prospectus`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `copyright`, `apply_now`, `office_phone`, `custum_css`, `custum_js`, `apply_year`, `admissions_office`, `footer_address`, `office_timings`, `need_help`, `phone`, `created_by`, `updated_date`, `updated_by`, `created_ip`, `updated_ip`) VALUES
(1, 'COER University', 'admission@coeruniversity.ac.in', NULL, NULL, '', '', '', '', '', NULL, '', '+916398689224', '', '', '', '<p><span>7th km on Roorkee – Haridwar Road, Vardhmanpuram, Roorkee – 247667, Distt. Haridwar (Uttarakhand)</span></p>', '<p><span>7th km on Roorkee – Haridwar Road, Vardhmanpuram, Roorkee – 247667, Distt. Haridwar (Uttarakhand)</span></p>', '', '<p><a href=\"tel:+919760005327\">+919760005327</a></p>', '+91 80705 00600', 0, '2024-04-14 23:04:11', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(15) NOT NULL,
  `title1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `title3` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'placement record=1',
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title1`, `title2`, `title3`, `type`, `display_order`, `status`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Years of Legacy', '25+', '', '2', 1, 1, '2024-04-06', 1, '', 0),
(2, 'Student Placed', '35+', '', '2', 3, 1, '2024-04-06', 1, '2024-04-06', 1),
(3, 'Placement Achieved', '40+', '', '2', 2, 1, '2024-04-06', 1, '2024-04-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `specialisations`
--

CREATE TABLE `specialisations` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `more_description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', '2024-04-04 18:30:00', '2024-04-04 18:30:00'),
(2, 'test1@gmail.com', '2024-04-05 18:30:00', '2024-04-05 18:30:00'),
(3, 'testssss@gmail.com', '2024-04-11 18:30:00', '2024-04-11 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT 0,
  `content_type` enum('text','video') NOT NULL DEFAULT 'text',
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video_url` varchar(555) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `show_on_home` int(11) NOT NULL DEFAULT 0,
  `display_order` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `type`, `content_type`, `title`, `slug`, `image`, `video_url`, `short_description`, `description`, `designation`, `location`, `company`, `status`, `show_on_home`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(2, 1, 'text', 'Manoj Kumar (2016-2018)', 'manoj-kumar', 'uploads/testimonial/t1.jpg', '', '<p><span>The best customer testimonials can be incredibly wide-ranging in format, length, and content. </span><span>The best customer testimonials can be incredibly.</span></p>', '<p><span>The best customer testimonials can be incredibly wide-ranging in format, length, and content</span><span>The best customer testimonials.</span></p>', 'Manager', 'New Delhi', 'Global Audio Text Solution', 1, 0, 2, '2024-04-05 00:00:00', 1, '2024-04-06 00:00:00', 1),
(3, 1, 'text', 'Rachna Kumari (2015-2017)', 'rachna-kumari', 'uploads/testimonial/t2.jpg', '', '<p><span>Once you\'ve found those customers and collected their reviews, it\'s time to turn that enthusiasm into effective</span></p>', '<p><span>Once you\'ve found those customers and collected their reviews, it\'s time to turn that enthusiasm into effective</span></p>', 'HR Executive', 'New Delhi', 'Infosight Global Marketing', 1, 0, 3, '2024-04-06 00:00:00', 1, '2024-04-06 00:00:00', 1),
(4, 1, 'text', 'Aanchal Saini (2022-2016)', 'aanchal-saini-2022-2016', 'uploads/testimonial/t3.jpg', '', '<p><span>The college is the place where I learnt how to excel in my life, thanks to my teachers who showed me the right path to grow.</span></p>', '<p><span>The college is the place where I learnt how to excel in my life, thanks to my teachers who showed me the right path to grow.</span></p>', 'IT Specialist', 'New Delhi', 'GATS', 1, 0, 4, '2024-04-06 00:00:00', 1, '2024-04-06 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_mapping`
--

CREATE TABLE `testimonial_mapping` (
  `testimonial_map_id` int(11) NOT NULL,
  `testimonial_id` int(30) DEFAULT 0,
  `school_id` int(25) DEFAULT 0,
  `department_id` int(25) DEFAULT 0,
  `display_order` int(25) DEFAULT 0,
  `show_on_home_page` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `testimonial_type_id` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial_mapping`
--

INSERT INTO `testimonial_mapping` (`testimonial_map_id`, `testimonial_id`, `school_id`, `department_id`, `display_order`, `show_on_home_page`, `status`, `created_date`, `testimonial_type_id`) VALUES
(2, 3, 1, 0, 0, 0, 1, '2024-04-16 06:18:14', '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_type`
--

CREATE TABLE `testimonial_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `testimonial_type`
--

INSERT INTO `testimonial_type` (`id`, `title`, `slug`, `status`, `display_order`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Student', 'student', 1, 1, '2024-04-05 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(2, 'Management', 'management', 1, 2, '2024-04-05 00:00:00', 1, '0000-00-00 00:00:00', NULL),
(3, 'Department', 'department', 1, 3, '2024-04-05 00:00:00', 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trustees`
--

CREATE TABLE `trustees` (
  `trustees_id` int(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `display_order` int(25) NOT NULL DEFAULT 0,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(5) NOT NULL DEFAULT 0,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(5) NOT NULL DEFAULT 0,
  `created_ip` varchar(100) DEFAULT NULL,
  `updated_ip` varchar(100) DEFAULT NULL,
  `member_type` int(25) DEFAULT NULL,
  `member_detail` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `small_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`id`, `images`, `created_date`, `created_by`) VALUES
(1, 'uploads/images/global-partnership-team-bnr1.webp', '2024-03-13 05:31:47', 1),
(2, 'uploads/images/insight-lg1.jpg', '2024-03-14 05:30:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload_multiple_media`
--

CREATE TABLE `upload_multiple_media` (
  `id` int(15) NOT NULL,
  `type_id` int(11) DEFAULT 0,
  `album_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `upload_doc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `display_order` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(10) NOT NULL,
  `updated_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upload_multiple_media`
--

INSERT INTO `upload_multiple_media` (`id`, `type_id`, `album_id`, `name`, `upload_doc`, `youtube`, `display_order`, `status`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 1, 6, 'International Film Festival of India', '', 'https://www.youtube.com/watch?v=m52ljs78S24&list=PL0eyrZgxdwhwwQQZA79OzYwl5ewA7HQih', 1, 1, '2024-04-12', 1, '', 0),
(2, 1, 6, 'International Film Festival of India', '', 'https://www.youtube.com/watch?v=m52ljs78S24&list=PL0eyrZgxdwhwwQQZA79OzYwl5ewA7HQih', 1, 1, '2024-04-12', 1, '', 0),
(3, 1, 6, 'Mumbai Film Festival', 'uploads/album/1712898096_8101997bbbce2bdaa0a1.webp', 'https://www.youtube.com/watch?v=dAMV9MDfE88', 2, 1, '2024-04-12', 1, '', 0),
(4, 1, 6, 'Kolkata International Film Festival ', 'uploads/album/1712898121_08e3771948d65ca3ed7d.webp', 'https://www.youtube.com/watch?v=vvQW3JaQ6o4', 3, 1, '2024-04-12', 1, '', 0),
(5, 1, 6, 'International Film Festival of Kerala (IFFK):', 'uploads/album/1712898153_6d4aec012ff75700e634.webp', '', 4, 1, '2024-04-12', 1, '', 0),
(6, 1, 1, 'Delhi International Film Festival', 'uploads/album/1712904116_83a538e52bb0f60ee80d.webp', '', 5, 1, '2024-04-12', 1, '', 0),
(7, 1, 1, 'Delhi International Film', 'uploads/album/1712904129_e3ab2c7e39d88e11b012.webp', '', 6, 1, '2024-04-12', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `upload_school`
--

CREATE TABLE `upload_school` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT 0,
  `images` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `login_type` int(11) NOT NULL DEFAULT 1,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_date` varchar(255) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `address`, `login_type`, `emailid`, `password`, `profile_image`, `country`, `state`, `city`, `contact_no`, `status`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'Admin', 'Admin', 'Noida', 1, 'admin@coer.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'India', 'UP', 'Noida', '7565457656', 1, '2020-06-16', 1, '2020-06-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`, `role_status`, `created_date`, `created_by`, `updated_date`, `updated_by`) VALUES
(1, 'superadmin', 1, '2023-01-17 00:00:00', 1, '2023-01-17 05:50:23', 1),
(2, 'Admin', 1, '2023-01-17 11:20:31', 1, '2023-01-17 05:52:06', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `display_order` (`display_order`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards_and_ranking`
--
ALTER TABLE `awards_and_ranking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `display_order` (`display_order`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_mapping`
--
ALTER TABLE `blog_mapping`
  ADD PRIMARY KEY (`blog_map_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `blog_type`
--
ALTER TABLE `blog_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board_governance`
--
ALTER TABLE `board_governance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board_governance_type`
--
ALTER TABLE `board_governance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_page`
--
ALTER TABLE `career_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `page_name` (`page_name`),
  ADD KEY `page_slug` (`page_slug`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `cnss_agreement`
--
ALTER TABLE `cnss_agreement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `connect_programme`
--
ALTER TABLE `connect_programme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `college_id` (`school_id`),
  ADD KEY `course_name` (`course_name`),
  ADD KEY `display_order` (`display_order`);

--
-- Indexes for table `current_opening`
--
ALTER TABLE `current_opening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_section`
--
ALTER TABLE `download_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `download_type`
--
ALTER TABLE `download_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_type` (`event_type`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `display_order` (`display_order`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `fact_and_figure_type`
--
ALTER TABLE `fact_and_figure_type`
  ADD PRIMARY KEY (`fact_and_figure_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_information`
--
ALTER TABLE `form_information`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `form_permission`
--
ALTER TABLE `form_permission`
  ADD PRIMARY KEY (`form_permission_id`);

--
-- Indexes for table `governance`
--
ALTER TABLE `governance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `governance_type`
--
ALTER TABLE `governance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `happenings_mapping`
--
ALTER TABLE `happenings_mapping`
  ADD PRIMARY KEY (`happening_map_id`),
  ADD KEY `happening_id` (`happening_id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `home_banner`
--
ALTER TABLE `home_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_time`
--
ALTER TABLE `login_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_mapping`
--
ALTER TABLE `logo_mapping`
  ADD PRIMARY KEY (`logo_map_id`);

--
-- Indexes for table `logo_type`
--
ALTER TABLE `logo_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_type`
--
ALTER TABLE `media_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_type`
--
ALTER TABLE `member_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentor_5octbkp`
--
ALTER TABLE `mentor_5octbkp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microsite`
--
ALTER TABLE `microsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_cms_page`
--
ALTER TABLE `ms_cms_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `page_name` (`page_name`),
  ADD KEY `page_slug` (`page_slug`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `ms_commitees`
--
ALTER TABLE `ms_commitees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_contacts`
--
ALTER TABLE `ms_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ms_course_traningdomain`
--
ALTER TABLE `ms_course_traningdomain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_happenings`
--
ALTER TABLE `ms_happenings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_type` (`event_type`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `display_order` (`display_order`);

--
-- Indexes for table `ms_happening_type`
--
ALTER TABLE `ms_happening_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_home_banner`
--
ALTER TABLE `ms_home_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_leader_type`
--
ALTER TABLE `ms_leader_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_mentor`
--
ALTER TABLE `ms_mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_program_type`
--
ALTER TABLE `ms_program_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_project`
--
ALTER TABLE `ms_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_publication`
--
ALTER TABLE `ms_publication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_subscribe_enquire`
--
ALTER TABLE `ms_subscribe_enquire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ms_testimonial`
--
ALTER TABLE `ms_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement`
--
ALTER TABLE `placement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_recuritrers`
--
ALTER TABLE `placement_recuritrers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_type`
--
ALTER TABLE `program_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_images`
--
ALTER TABLE `rating_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redirections`
--
ALTER TABLE `redirections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_url` (`old_url`(768));

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_type`
--
ALTER TABLE `research_type`
  ADD PRIMARY KEY (`research_type_id`);

--
-- Indexes for table `salute`
--
ALTER TABLE `salute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_url`
--
ALTER TABLE `seo_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialisations`
--
ALTER TABLE `specialisations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_mapping`
--
ALTER TABLE `testimonial_mapping`
  ADD PRIMARY KEY (`testimonial_map_id`);

--
-- Indexes for table `testimonial_type`
--
ALTER TABLE `testimonial_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trustees`
--
ALTER TABLE `trustees`
  ADD PRIMARY KEY (`trustees_id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_multiple_media`
--
ALTER TABLE `upload_multiple_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_school`
--
ALTER TABLE `upload_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards_and_ranking`
--
ALTER TABLE `awards_and_ranking`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `blog_mapping`
--
ALTER TABLE `blog_mapping`
  MODIFY `blog_map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_type`
--
ALTER TABLE `blog_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `board_governance`
--
ALTER TABLE `board_governance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `board_governance_type`
--
ALTER TABLE `board_governance_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career_page`
--
ALTER TABLE `career_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1093;

--
-- AUTO_INCREMENT for table `cnss_agreement`
--
ALTER TABLE `cnss_agreement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `connect_programme`
--
ALTER TABLE `connect_programme`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `current_opening`
--
ALTER TABLE `current_opening`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download_section`
--
ALTER TABLE `download_section`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `download_type`
--
ALTER TABLE `download_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fact_and_figure_type`
--
ALTER TABLE `fact_and_figure_type`
  MODIFY `fact_and_figure_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_information`
--
ALTER TABLE `form_information`
  MODIFY `form_id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'SUB MENU', AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `form_permission`
--
ALTER TABLE `form_permission`
  MODIFY `form_permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `governance`
--
ALTER TABLE `governance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `governance_type`
--
ALTER TABLE `governance_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `happenings_mapping`
--
ALTER TABLE `happenings_mapping`
  MODIFY `happening_map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_banner`
--
ALTER TABLE `home_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_time`
--
ALTER TABLE `login_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logo_mapping`
--
ALTER TABLE `logo_mapping`
  MODIFY `logo_map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logo_type`
--
ALTER TABLE `logo_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media_type`
--
ALTER TABLE `media_type`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member_type`
--
ALTER TABLE `member_type`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mentor_5octbkp`
--
ALTER TABLE `mentor_5octbkp`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `microsite`
--
ALTER TABLE `microsite`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_cms_page`
--
ALTER TABLE `ms_cms_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_commitees`
--
ALTER TABLE `ms_commitees`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_contacts`
--
ALTER TABLE `ms_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_course_traningdomain`
--
ALTER TABLE `ms_course_traningdomain`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_happenings`
--
ALTER TABLE `ms_happenings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_happening_type`
--
ALTER TABLE `ms_happening_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_home_banner`
--
ALTER TABLE `ms_home_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_leader_type`
--
ALTER TABLE `ms_leader_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_mentor`
--
ALTER TABLE `ms_mentor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_program_type`
--
ALTER TABLE `ms_program_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_project`
--
ALTER TABLE `ms_project`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_publication`
--
ALTER TABLE `ms_publication`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ms_subscribe_enquire`
--
ALTER TABLE `ms_subscribe_enquire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ms_testimonial`
--
ALTER TABLE `ms_testimonial`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement`
--
ALTER TABLE `placement`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `placement_recuritrers`
--
ALTER TABLE `placement_recuritrers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program_type`
--
ALTER TABLE `program_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rating_images`
--
ALTER TABLE `rating_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirections`
--
ALTER TABLE `redirections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research_type`
--
ALTER TABLE `research_type`
  MODIFY `research_type_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salute`
--
ALTER TABLE `salute`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seo_url`
--
ALTER TABLE `seo_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specialisations`
--
ALTER TABLE `specialisations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial_mapping`
--
ALTER TABLE `testimonial_mapping`
  MODIFY `testimonial_map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonial_type`
--
ALTER TABLE `testimonial_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trustees`
--
ALTER TABLE `trustees`
  MODIFY `trustees_id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_multiple_media`
--
ALTER TABLE `upload_multiple_media`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `upload_school`
--
ALTER TABLE `upload_school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
