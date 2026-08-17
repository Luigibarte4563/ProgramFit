import '../models/question.dart';
import '../models/department.dart';
import '../models/program.dart';

class QuestionnaireData {
  QuestionnaireData._();

  static const List<Department> departments = [
    Department(code: 'SITE', name: 'Information Technology', schoolName: 'School of Information Technology', flagshipProgramCode: 'SITE1'),
    Department(code: 'SOE', name: 'Engineering', schoolName: 'School of Engineering', flagshipProgramCode: 'SOE1'),
    Department(code: 'STE', name: 'Teacher Education', schoolName: 'School of Teacher Education', flagshipProgramCode: 'STE1'),
    Department(code: 'SBA', name: 'Business & Accountancy', schoolName: 'School of Business and Accountancy', flagshipProgramCode: 'SBA1'),
    Department(code: 'SIHM', name: 'Hospitality Management', schoolName: 'School of International Hospitality Management', flagshipProgramCode: 'SIHM1'),
    Department(code: 'SOH', name: 'Humanities', schoolName: 'School of Humanities', flagshipProgramCode: 'SOH1'),
    Department(code: 'SOHS', name: 'Health & Sciences', schoolName: 'School of Health and Sciences', flagshipProgramCode: 'SOHS1'),
    Department(code: 'SOC', name: 'Criminology', schoolName: 'School of Criminology', flagshipProgramCode: 'SOC1'),
  ];

  static const Map<String, Program> programs = {
    'SITE1': Program(code: 'SITE1', name: 'BS Computer Science (Major in Data Science)', departmentCode: 'SITE', isFlagship: true),
    'SITE2': Program(code: 'SITE2', name: 'BS Information Technology (Major in Web Development)', departmentCode: 'SITE'),
    'SITE3': Program(code: 'SITE3', name: 'BS Information Technology (Major in Multimedia Arts)', departmentCode: 'SITE'),
    'SITE4': Program(code: 'SITE4', name: 'BS Information Technology (Major in Infrastructure w/ Cybersecurity)', departmentCode: 'SITE'),
    'SOE1': Program(code: 'SOE1', name: 'BS Civil Engineering', departmentCode: 'SOE', isFlagship: true),
    'SOE2': Program(code: 'SOE2', name: 'BS Computer Engineering', departmentCode: 'SOE'),
    'SOE3': Program(code: 'SOE3', name: 'BS Electrical Engineering', departmentCode: 'SOE'),
    'SOE4': Program(code: 'SOE4', name: 'BS Electronics Engineering', departmentCode: 'SOE'),
    'STE1': Program(code: 'STE1', name: 'Bachelor of Early Childhood Education', departmentCode: 'STE', isFlagship: true),
    'STE2': Program(code: 'STE2', name: 'Bachelor of Elementary Education', departmentCode: 'STE'),
    'STE3': Program(code: 'STE3', name: 'BSEd Major in English', departmentCode: 'STE'),
    'STE4': Program(code: 'STE4', name: 'BSEd Major in Filipino', departmentCode: 'STE'),
    'STE5': Program(code: 'STE5', name: 'BSEd Major in Mathematics', departmentCode: 'STE'),
    'STE6': Program(code: 'STE6', name: 'BSEd Major in Science', departmentCode: 'STE'),
    'STE7': Program(code: 'STE7', name: 'Bachelor of Special Needs Education (Generalist)', departmentCode: 'STE'),
    'SBA1': Program(code: 'SBA1', name: 'BS Accountancy', departmentCode: 'SBA', isFlagship: true),
    'SBA2': Program(code: 'SBA2', name: 'BS Business Administration (Major in Financial Management)', departmentCode: 'SBA'),
    'SBA3': Program(code: 'SBA3', name: 'BS Business Administration (Major in Marketing Management)', departmentCode: 'SBA'),
    'SIHM1': Program(code: 'SIHM1', name: 'BS Hospitality Management', departmentCode: 'SIHM', isFlagship: true),
    'SIHM2': Program(code: 'SIHM2', name: 'BS Tourism Management', departmentCode: 'SIHM'),
    'SOH1': Program(code: 'SOH1', name: 'BA Communication', departmentCode: 'SOH', isFlagship: true),
    'SOH2': Program(code: 'SOH2', name: 'BS Psychology', departmentCode: 'SOH'),
    'SOHS1': Program(code: 'SOHS1', name: 'BS Nursing', departmentCode: 'SOHS', isFlagship: true),
    'SOC1': Program(code: 'SOC1', name: 'BS Criminology', departmentCode: 'SOC', isFlagship: true),
  };

  static const List<Question> phase1Questions = [
    Question(number: 1, text: 'Which activity sounds most fun to you?', options: [
      QuestionOption(letter: 'A', text: 'Making something interactive work on a screen, step by step', code: 'SITE'),
      QuestionOption(letter: 'B', text: 'Building, fixing, or assembling something mechanical/structural', code: 'SOE'),
      QuestionOption(letter: 'C', text: 'Tutoring or explaining a lesson to a friend', code: 'STE'),
      QuestionOption(letter: 'D', text: 'Managing a budget or planning a small business', code: 'SBA'),
      QuestionOption(letter: 'E', text: 'Planning an event, trip, or hosting guests', code: 'SIHM'),
      QuestionOption(letter: 'F', text: 'Writing a story, making content, or analyzing behavior', code: 'SOH'),
      QuestionOption(letter: 'G', text: 'Helping someone who is sick or injured', code: 'SOHS'),
      QuestionOption(letter: 'H', text: 'Investigating a mystery or solving a case', code: 'SOC'),
    ]),
    Question(number: 2, text: 'Which subject did you enjoy most in school?', options: [
      QuestionOption(letter: 'A', text: 'Computer / ICT', code: 'SITE'),
      QuestionOption(letter: 'B', text: 'Math and Physics', code: 'SOE'),
      QuestionOption(letter: 'C', text: 'Any subject you liked explaining to classmates', code: 'STE'),
      QuestionOption(letter: 'D', text: 'Economics / Business Math', code: 'SBA'),
      QuestionOption(letter: 'E', text: 'Values Education / activities involving people and culture', code: 'SIHM'),
      QuestionOption(letter: 'F', text: 'English, Filipino, or the Arts', code: 'SOH'),
      QuestionOption(letter: 'G', text: 'Science / Biology', code: 'SOHS'),
      QuestionOption(letter: 'H', text: 'Civic / Values focused on law, rules, and order', code: 'SOC'),
    ]),
    Question(number: 3, text: 'What kind of work environment appeals to you?', options: [
      QuestionOption(letter: 'A', text: 'Office or remote, working with software and systems', code: 'SITE'),
      QuestionOption(letter: 'B', text: 'Field sites, labs, construction sites, or technical plants', code: 'SOE'),
      QuestionOption(letter: 'C', text: 'A classroom', code: 'STE'),
      QuestionOption(letter: 'D', text: 'A corporate office, bank, or finance firm', code: 'SBA'),
      QuestionOption(letter: 'E', text: 'Hotels, resorts, or airlines', code: 'SIHM'),
      QuestionOption(letter: 'F', text: 'A media company, studio, agency, or clinic setting', code: 'SOH'),
      QuestionOption(letter: 'G', text: 'A hospital or clinic', code: 'SOHS'),
      QuestionOption(letter: 'H', text: 'A police station, court, or law enforcement agency', code: 'SOC'),
    ]),
    Question(number: 4, text: 'What is your natural strength?', options: [
      QuestionOption(letter: 'A', text: 'Logical thinking and problem-solving with technology', code: 'SITE'),
      QuestionOption(letter: 'B', text: 'Spatial and mechanical reasoning', code: 'SOE'),
      QuestionOption(letter: 'C', text: 'Patience and communicating with people', code: 'STE'),
      QuestionOption(letter: 'D', text: 'Numerical analysis and persuasion', code: 'SBA'),
      QuestionOption(letter: 'E', text: 'Hospitality and interpersonal warmth', code: 'SIHM'),
      QuestionOption(letter: 'F', text: 'Creativity, expression, or understanding people\'s behavior', code: 'SOH'),
      QuestionOption(letter: 'G', text: 'Empathy and staying composed under pressure', code: 'SOHS'),
      QuestionOption(letter: 'H', text: 'Observation skills and a strong sense of justice', code: 'SOC'),
    ]),
    Question(number: 5, text: 'What impact do you want to have in your future career?', options: [
      QuestionOption(letter: 'A', text: 'Build digital solutions and innovate with technology', code: 'SITE'),
      QuestionOption(letter: 'B', text: 'Build infrastructure or machines that improve lives', code: 'SOE'),
      QuestionOption(letter: 'C', text: 'Shape and guide the next generation', code: 'STE'),
      QuestionOption(letter: 'D', text: 'Help businesses grow and manage finances well', code: 'SBA'),
      QuestionOption(letter: 'E', text: 'Create memorable experiences for travelers and guests', code: 'SIHM'),
      QuestionOption(letter: 'F', text: 'Inform, entertain, or help people understand themselves', code: 'SOH'),
      QuestionOption(letter: 'G', text: 'Save lives and take care of the sick', code: 'SOHS'),
      QuestionOption(letter: 'H', text: 'Keep communities safe and uphold justice', code: 'SOC'),
    ]),
    Question(number: 6, text: 'How do you prefer to solve problems?', options: [
      QuestionOption(letter: 'A', text: 'Breaking a problem into small, logical steps until it works', code: 'SITE'),
      QuestionOption(letter: 'B', text: 'Applying scientific and engineering principles', code: 'SOE'),
      QuestionOption(letter: 'C', text: 'Explaining concepts step by step to others', code: 'STE'),
      QuestionOption(letter: 'D', text: 'Analyzing numbers, trends, and markets', code: 'SBA'),
      QuestionOption(letter: 'E', text: 'Adjusting quickly to guest or customer needs', code: 'SIHM'),
      QuestionOption(letter: 'F', text: 'Through storytelling, design, or understanding emotions', code: 'SOH'),
      QuestionOption(letter: 'G', text: 'Following medical protocols calmly and carefully', code: 'SOHS'),
      QuestionOption(letter: 'H', text: 'Gathering evidence and facts methodically', code: 'SOC'),
    ]),
    Question(number: 7, text: 'Which tasks energize you the most?', options: [
      QuestionOption(letter: 'A', text: 'Building software, websites, or systems', code: 'SITE'),
      QuestionOption(letter: 'B', text: 'Designing or building physical structures, machines, or circuits', code: 'SOE'),
      QuestionOption(letter: 'C', text: 'Teaching, mentoring, or guiding others', code: 'STE'),
      QuestionOption(letter: 'D', text: 'Handling accounts, sales, or marketing campaigns', code: 'SBA'),
      QuestionOption(letter: 'E', text: 'Organizing events or welcoming and assisting guests', code: 'SIHM'),
      QuestionOption(letter: 'F', text: 'Creating content, counseling, or communicating ideas', code: 'SOH'),
      QuestionOption(letter: 'G', text: 'Assisting patients or performing medical/health procedures', code: 'SOHS'),
      QuestionOption(letter: 'H', text: 'Patrolling, investigating, or enforcing rules', code: 'SOC'),
    ]),
  ];

  static const Map<String, List<Question>> phase2Questions = {
    'SITE': [
      Question(number: 1, text: 'Which project excites you most?', options: [
        QuestionOption(letter: 'A', text: 'Analyzing large datasets to find trends and predictions', code: 'SITE1'),
        QuestionOption(letter: 'B', text: 'Designing and building an interactive website', code: 'SITE2'),
        QuestionOption(letter: 'C', text: 'Creating animations, graphics, or game assets', code: 'SITE3'),
        QuestionOption(letter: 'D', text: 'Securing a company\'s network from hackers', code: 'SITE4'),
      ]),
      Question(number: 2, text: 'Which tool or skill would you like to master?', options: [
        QuestionOption(letter: 'A', text: 'Python, R, and Machine Learning', code: 'SITE1'),
        QuestionOption(letter: 'B', text: 'HTML, CSS, JavaScript, and web frameworks', code: 'SITE2'),
        QuestionOption(letter: 'C', text: 'Adobe Creative Suite and 3D modeling tools', code: 'SITE3'),
        QuestionOption(letter: 'D', text: 'Network security and ethical hacking tools', code: 'SITE4'),
      ]),
      Question(number: 3, text: 'What kind of problem do you enjoy solving?', options: [
        QuestionOption(letter: 'A', text: 'Finding hidden patterns and predictions in numbers', code: 'SITE1'),
        QuestionOption(letter: 'B', text: 'Making a website look good and run smoothly', code: 'SITE2'),
        QuestionOption(letter: 'C', text: 'Making visuals and stories come to life', code: 'SITE3'),
        QuestionOption(letter: 'D', text: 'Finding and fixing security vulnerabilities', code: 'SITE4'),
      ]),
      Question(number: 4, text: 'Which career sounds most appealing?', options: [
        QuestionOption(letter: 'A', text: 'Data Scientist / Data Analyst', code: 'SITE1'),
        QuestionOption(letter: 'B', text: 'Web Developer (Front-end or Back-end)', code: 'SITE2'),
        QuestionOption(letter: 'C', text: 'Graphic / Animation / Game Designer', code: 'SITE3'),
        QuestionOption(letter: 'D', text: 'Cybersecurity Specialist / Network Administrator', code: 'SITE4'),
      ]),
      Question(number: 5, text: 'Which related activity did you enjoy?', options: [
        QuestionOption(letter: 'A', text: 'Statistics and math-based puzzles', code: 'SITE1'),
        QuestionOption(letter: 'B', text: 'Building simple web pages', code: 'SITE2'),
        QuestionOption(letter: 'C', text: 'Drawing, editing videos or photos', code: 'SITE3'),
        QuestionOption(letter: 'D', text: 'Learning how systems can be hacked or protected', code: 'SITE4'),
      ]),
      Question(number: 6, text: 'Pick a preferred work style.', options: [
        QuestionOption(letter: 'A', text: 'Deep, focused analysis with data', code: 'SITE1'),
        QuestionOption(letter: 'B', text: 'Iterative building and testing of web features', code: 'SITE2'),
        QuestionOption(letter: 'C', text: 'Creative, visual, artistic work', code: 'SITE3'),
        QuestionOption(letter: 'D', text: 'Vigilant, detail-oriented monitoring', code: 'SITE4'),
      ]),
      Question(number: 7, text: 'Which app would you rather build?', options: [
        QuestionOption(letter: 'A', text: 'An app that predicts trends from data', code: 'SITE1'),
        QuestionOption(letter: 'B', text: 'An e-commerce or booking website', code: 'SITE2'),
        QuestionOption(letter: 'C', text: 'An animated short film or game', code: 'SITE3'),
        QuestionOption(letter: 'D', text: 'A secure login or network-monitoring system', code: 'SITE4'),
      ]),
      Question(number: 8, text: 'What motivates you most in SITE?', options: [
        QuestionOption(letter: 'A', text: 'Uncovering insights hidden in data', code: 'SITE1'),
        QuestionOption(letter: 'B', text: 'Bringing designs to life on the web', code: 'SITE2'),
        QuestionOption(letter: 'C', text: 'Expressing creativity digitally', code: 'SITE3'),
        QuestionOption(letter: 'D', text: 'Protecting people and systems from threats', code: 'SITE4'),
      ]),
    ],
    'SOE': [
      Question(number: 1, text: 'Which structure or system interests you most?', options: [
        QuestionOption(letter: 'A', text: 'Buildings, bridges, and roads', code: 'SOE1'),
        QuestionOption(letter: 'B', text: 'Computer hardware and embedded systems', code: 'SOE2'),
        QuestionOption(letter: 'C', text: 'Power plants and electrical grids', code: 'SOE3'),
        QuestionOption(letter: 'D', text: 'Circuits, gadgets, and communication devices', code: 'SOE4'),
      ]),
      Question(number: 2, text: 'Which subject did you enjoy?', options: [
        QuestionOption(letter: 'A', text: 'Physics with a focus on construction/materials', code: 'SOE1'),
        QuestionOption(letter: 'B', text: 'Programming combined with hardware', code: 'SOE2'),
        QuestionOption(letter: 'C', text: 'Physics with a focus on electricity and magnetism', code: 'SOE3'),
        QuestionOption(letter: 'D', text: 'Physics with a focus on electronics and circuits', code: 'SOE4'),
      ]),
      Question(number: 3, text: 'What kind of project excites you?', options: [
        QuestionOption(letter: 'A', text: 'Designing a building or bridge', code: 'SOE1'),
        QuestionOption(letter: 'B', text: 'Building a computer or robot circuit board', code: 'SOE2'),
        QuestionOption(letter: 'C', text: 'Designing a power distribution system', code: 'SOE3'),
        QuestionOption(letter: 'D', text: 'Designing a communication device or gadget', code: 'SOE4'),
      ]),
      Question(number: 4, text: 'Which career do you prefer?', options: [
        QuestionOption(letter: 'A', text: 'Civil / Structural Engineer', code: 'SOE1'),
        QuestionOption(letter: 'B', text: 'Computer / Hardware Engineer', code: 'SOE2'),
        QuestionOption(letter: 'C', text: 'Electrical / Power Engineer', code: 'SOE3'),
        QuestionOption(letter: 'D', text: 'Electronics / Communications Engineer', code: 'SOE4'),
      ]),
      Question(number: 5, text: 'Which tool would you like to use?', options: [
        QuestionOption(letter: 'A', text: 'AutoCAD and structural design software', code: 'SOE1'),
        QuestionOption(letter: 'B', text: 'Microcontrollers, circuit boards, and code', code: 'SOE2'),
        QuestionOption(letter: 'C', text: 'Power system simulators', code: 'SOE3'),
        QuestionOption(letter: 'D', text: 'Signal processing and electronic test tools', code: 'SOE4'),
      ]),
      Question(number: 6, text: 'Pick a preferred work environment.', options: [
        QuestionOption(letter: 'A', text: 'Construction site', code: 'SOE1'),
        QuestionOption(letter: 'B', text: 'Tech / hardware laboratory', code: 'SOE2'),
        QuestionOption(letter: 'C', text: 'Power plant or utility company', code: 'SOE3'),
        QuestionOption(letter: 'D', text: 'Electronics or telecom company', code: 'SOE4'),
      ]),
      Question(number: 7, text: 'Which everyday phenomenon interests you more?', options: [
        QuestionOption(letter: 'A', text: 'How buildings withstand earthquakes', code: 'SOE1'),
        QuestionOption(letter: 'B', text: 'How computers and robots work', code: 'SOE2'),
        QuestionOption(letter: 'C', text: 'How electricity gets to your home', code: 'SOE3'),
        QuestionOption(letter: 'D', text: 'How phones and gadgets communicate', code: 'SOE4'),
      ]),
      Question(number: 8, text: 'What motivates you most in engineering?', options: [
        QuestionOption(letter: 'A', text: 'Building lasting infrastructure', code: 'SOE1'),
        QuestionOption(letter: 'B', text: 'Merging hardware and software', code: 'SOE2'),
        QuestionOption(letter: 'C', text: 'Powering communities', code: 'SOE3'),
        QuestionOption(letter: 'D', text: 'Innovating communication technology', code: 'SOE4'),
      ]),
    ],
    'STE': [
      Question(number: 1, text: 'Which learners do you want to teach?', options: [
        QuestionOption(letter: 'A', text: 'Toddlers and preschoolers', code: 'STE1'),
        QuestionOption(letter: 'B', text: 'Grade-school children, all subjects', code: 'STE2'),
        QuestionOption(letter: 'C', text: 'Teens — English / literature', code: 'STE3'),
        QuestionOption(letter: 'D', text: 'Teens — Filipino / panitikan', code: 'STE4'),
        QuestionOption(letter: 'E', text: 'Teens — Mathematics', code: 'STE5'),
        QuestionOption(letter: 'F', text: 'Teens — Science', code: 'STE6'),
        QuestionOption(letter: 'G', text: 'Learners with special needs', code: 'STE7'),
      ]),
      Question(number: 2, text: 'Which subject would you love to teach?', options: [
        QuestionOption(letter: 'A', text: 'Basic motor and social skills for young children', code: 'STE1'),
        QuestionOption(letter: 'B', text: 'General subjects (reading, basic math, etc.)', code: 'STE2'),
        QuestionOption(letter: 'C', text: 'English grammar and literature', code: 'STE3'),
        QuestionOption(letter: 'D', text: 'Filipino grammar and literature', code: 'STE4'),
        QuestionOption(letter: 'E', text: 'Algebra, geometry, and calculus', code: 'STE5'),
        QuestionOption(letter: 'F', text: 'Biology, chemistry, and physics', code: 'STE6'),
        QuestionOption(letter: 'G', text: 'Individualized/adaptive learning strategies', code: 'STE7'),
      ]),
      Question(number: 3, text: 'Which teaching setting appeals to you?', options: [
        QuestionOption(letter: 'A', text: 'Daycare or preschool classroom', code: 'STE1'),
        QuestionOption(letter: 'B', text: 'Elementary classroom', code: 'STE2'),
        QuestionOption(letter: 'C', text: 'High school English class', code: 'STE3'),
        QuestionOption(letter: 'D', text: 'High school Filipino class', code: 'STE4'),
        QuestionOption(letter: 'E', text: 'High school Math class', code: 'STE5'),
        QuestionOption(letter: 'F', text: 'High school Science laboratory', code: 'STE6'),
        QuestionOption(letter: 'G', text: 'Inclusive / special-education classroom', code: 'STE7'),
      ]),
      Question(number: 4, text: 'Which skill do you want to build?', options: [
        QuestionOption(letter: 'A', text: 'Nurturing and child development', code: 'STE1'),
        QuestionOption(letter: 'B', text: 'Teaching foundational multi-subject skills', code: 'STE2'),
        QuestionOption(letter: 'C', text: 'Communication and literary analysis', code: 'STE3'),
        QuestionOption(letter: 'D', text: 'Wika at panitikan', code: 'STE4'),
        QuestionOption(letter: 'E', text: 'Logical and mathematical reasoning', code: 'STE5'),
        QuestionOption(letter: 'F', text: 'Scientific inquiry and experimentation', code: 'STE6'),
        QuestionOption(letter: 'G', text: 'Adaptive teaching techniques for diverse learners', code: 'STE7'),
      ]),
      Question(number: 5, text: 'Which activity sounds fun to you?', options: [
        QuestionOption(letter: 'A', text: 'Playing with and guiding young children', code: 'STE1'),
        QuestionOption(letter: 'B', text: 'Teaching a mix of subjects to children', code: 'STE2'),
        QuestionOption(letter: 'C', text: 'Discussing novels and essays', code: 'STE3'),
        QuestionOption(letter: 'D', text: 'Discussing Filipino literature', code: 'STE4'),
        QuestionOption(letter: 'E', text: 'Solving math problems together', code: 'STE5'),
        QuestionOption(letter: 'F', text: 'Conducting science experiments', code: 'STE6'),
        QuestionOption(letter: 'G', text: 'Creating individualized learning plans', code: 'STE7'),
      ]),
      Question(number: 6, text: 'What impact do you want as a teacher?', options: [
        QuestionOption(letter: 'A', text: 'Build strong early foundations', code: 'STE1'),
        QuestionOption(letter: 'B', text: 'Give children their first love of learning', code: 'STE2'),
        QuestionOption(letter: 'C', text: 'Improve students\' English communication', code: 'STE3'),
        QuestionOption(letter: 'D', text: 'Preserve Filipino language and culture', code: 'STE4'),
        QuestionOption(letter: 'E', text: 'Build students\' problem-solving skills', code: 'STE5'),
        QuestionOption(letter: 'F', text: 'Spark curiosity about the natural world', code: 'STE6'),
        QuestionOption(letter: 'G', text: 'Empower learners with special needs', code: 'STE7'),
      ]),
      Question(number: 7, text: 'Which classroom scenario appeals to you most?', options: [
        QuestionOption(letter: 'A', text: 'Comforting a crying toddler', code: 'STE1'),
        QuestionOption(letter: 'B', text: 'Teaching reading to 8-year-olds', code: 'STE2'),
        QuestionOption(letter: 'C', text: 'Leading a debate on a novel', code: 'STE3'),
        QuestionOption(letter: 'D', text: 'Leading a discussion on a Filipino text', code: 'STE4'),
        QuestionOption(letter: 'E', text: 'Explaining a tricky math proof', code: 'STE5'),
        QuestionOption(letter: 'F', text: 'Guiding a laboratory experiment', code: 'STE6'),
        QuestionOption(letter: 'G', text: 'Adapting a lesson for a student with learning difficulties', code: 'STE7'),
      ]),
      Question(number: 8, text: 'What motivates you most in teaching?', options: [
        QuestionOption(letter: 'A', text: 'Shaping early childhood development', code: 'STE1'),
        QuestionOption(letter: 'B', text: 'Being a child\'s first teacher', code: 'STE2'),
        QuestionOption(letter: 'C', text: 'Inspiring love for English language/literature', code: 'STE3'),
        QuestionOption(letter: 'D', text: 'Preserving and teaching Filipino heritage', code: 'STE4'),
        QuestionOption(letter: 'E', text: 'Making math click for students', code: 'STE5'),
        QuestionOption(letter: 'F', text: 'Igniting scientific curiosity', code: 'STE6'),
        QuestionOption(letter: 'G', text: 'Making education inclusive for everyone', code: 'STE7'),
      ]),
    ],
    'SBA': [
      Question(number: 1, text: 'Which task appeals to you most?', options: [
        QuestionOption(letter: 'A', text: 'Auditing financial records for accuracy', code: 'SBA1'),
        QuestionOption(letter: 'B', text: 'Analyzing investments and managing funds', code: 'SBA2'),
        QuestionOption(letter: 'C', text: 'Creating campaigns to sell a product', code: 'SBA3'),
      ]),
      Question(number: 2, text: 'Which subject did you enjoy?', options: [
        QuestionOption(letter: 'A', text: 'Bookkeeping and accounting principles', code: 'SBA1'),
        QuestionOption(letter: 'B', text: 'Math focused on finance and economics', code: 'SBA2'),
        QuestionOption(letter: 'C', text: 'Advertising and consumer behavior', code: 'SBA3'),
      ]),
      Question(number: 3, text: 'Which career sounds appealing?', options: [
        QuestionOption(letter: 'A', text: 'Certified Public Accountant / Auditor', code: 'SBA1'),
        QuestionOption(letter: 'B', text: 'Financial Analyst / Investment Manager', code: 'SBA2'),
        QuestionOption(letter: 'C', text: 'Marketing Manager / Brand Strategist', code: 'SBA3'),
      ]),
      Question(number: 4, text: 'Which daily task would you prefer?', options: [
        QuestionOption(letter: 'A', text: 'Preparing financial statements', code: 'SBA1'),
        QuestionOption(letter: 'B', text: 'Managing budgets and investment portfolios', code: 'SBA2'),
        QuestionOption(letter: 'C', text: 'Designing promotions and branding', code: 'SBA3'),
      ]),
      Question(number: 5, text: 'Which skill matters most to you?', options: [
        QuestionOption(letter: 'A', text: 'Precision and attention to detail with numbers', code: 'SBA1'),
        QuestionOption(letter: 'B', text: 'Strategic financial decision-making', code: 'SBA2'),
        QuestionOption(letter: 'C', text: 'Creativity and persuasion', code: 'SBA3'),
      ]),
      Question(number: 6, text: 'Pick a project you\'d enjoy.', options: [
        QuestionOption(letter: 'A', text: 'Reconciling a company\'s books', code: 'SBA1'),
        QuestionOption(letter: 'B', text: 'Building an investment plan', code: 'SBA2'),
        QuestionOption(letter: 'C', text: 'Launching a product campaign', code: 'SBA3'),
      ]),
      Question(number: 7, text: 'What work style suits you?', options: [
        QuestionOption(letter: 'A', text: 'Rule-based, compliance-focused work', code: 'SBA1'),
        QuestionOption(letter: 'B', text: 'Analytical, risk-based decision making', code: 'SBA2'),
        QuestionOption(letter: 'C', text: 'Creative, people-facing strategy work', code: 'SBA3'),
      ]),
      Question(number: 8, text: 'What motivates you most in business?', options: [
        QuestionOption(letter: 'A', text: 'Ensuring financial accuracy and integrity', code: 'SBA1'),
        QuestionOption(letter: 'B', text: 'Growing wealth and managing resources', code: 'SBA2'),
        QuestionOption(letter: 'C', text: 'Connecting brands with customers', code: 'SBA3'),
      ]),
    ],
    'SIHM': [
      Question(number: 1, text: 'Which setting appeals to you?', options: [
        QuestionOption(letter: 'A', text: 'Hotels, restaurants, and resorts', code: 'SIHM1'),
        QuestionOption(letter: 'B', text: 'Travel agencies, airlines, and tour companies', code: 'SIHM2'),
      ]),
      Question(number: 2, text: 'Which task excites you?', options: [
        QuestionOption(letter: 'A', text: 'Managing hotel or restaurant operations', code: 'SIHM1'),
        QuestionOption(letter: 'B', text: 'Planning travel itineraries and tours', code: 'SIHM2'),
      ]),
      Question(number: 3, text: 'Which career do you prefer?', options: [
        QuestionOption(letter: 'A', text: 'Hotel / Restaurant Manager', code: 'SIHM1'),
        QuestionOption(letter: 'B', text: 'Tour Guide / Travel Consultant', code: 'SIHM2'),
      ]),
      Question(number: 4, text: 'Which skill matters most?', options: [
        QuestionOption(letter: 'A', text: 'Guest service and operations management', code: 'SIHM1'),
        QuestionOption(letter: 'B', text: 'Destination knowledge and itinerary planning', code: 'SIHM2'),
      ]),
      Question(number: 5, text: 'Which activity sounds fun?', options: [
        QuestionOption(letter: 'A', text: 'Organizing a fine-dining experience', code: 'SIHM1'),
        QuestionOption(letter: 'B', text: 'Planning a group\'s dream vacation', code: 'SIHM2'),
      ]),
      Question(number: 6, text: 'What impact do you want?', options: [
        QuestionOption(letter: 'A', text: 'Create memorable stays for guests', code: 'SIHM1'),
        QuestionOption(letter: 'B', text: 'Help people explore the world', code: 'SIHM2'),
      ]),
      Question(number: 7, text: 'Pick a preferred work environment.', options: [
        QuestionOption(letter: 'A', text: 'Hotel, resort, or restaurant', code: 'SIHM1'),
        QuestionOption(letter: 'B', text: 'Airport, travel agency, or tour bus', code: 'SIHM2'),
      ]),
      Question(number: 8, text: 'What motivates you most?', options: [
        QuestionOption(letter: 'A', text: 'Excellence in hospitality service', code: 'SIHM1'),
        QuestionOption(letter: 'B', text: 'Showcasing destinations and culture', code: 'SIHM2'),
      ]),
    ],
    'SOH': [
      Question(number: 1, text: 'Which activity appeals to you?', options: [
        QuestionOption(letter: 'A', text: 'Writing, broadcasting, or producing media', code: 'SOH1'),
        QuestionOption(letter: 'B', text: 'Understanding why people think, feel, and act the way they do', code: 'SOH2'),
      ]),
      Question(number: 2, text: 'Which subject did you enjoy?', options: [
        QuestionOption(letter: 'A', text: 'Journalism and media studies', code: 'SOH1'),
        QuestionOption(letter: 'B', text: 'Human behavior and social science', code: 'SOH2'),
      ]),
      Question(number: 3, text: 'Which career do you prefer?', options: [
        QuestionOption(letter: 'A', text: 'Journalist / Broadcaster / PR Specialist', code: 'SOH1'),
        QuestionOption(letter: 'B', text: 'Counselor / HR Specialist / Psychologist', code: 'SOH2'),
      ]),
      Question(number: 4, text: 'Which skill matters most?', options: [
        QuestionOption(letter: 'A', text: 'Storytelling and media production', code: 'SOH1'),
        QuestionOption(letter: 'B', text: 'Listening and understanding emotions/behavior', code: 'SOH2'),
      ]),
      Question(number: 5, text: 'Which activity sounds fun?', options: [
        QuestionOption(letter: 'A', text: 'Producing a video or podcast', code: 'SOH1'),
        QuestionOption(letter: 'B', text: 'Studying why people behave a certain way', code: 'SOH2'),
      ]),
      Question(number: 6, text: 'What impact do you want?', options: [
        QuestionOption(letter: 'A', text: 'Inform and entertain the public', code: 'SOH1'),
        QuestionOption(letter: 'B', text: 'Help people understand themselves and improve wellbeing', code: 'SOH2'),
      ]),
      Question(number: 7, text: 'Pick a preferred work environment.', options: [
        QuestionOption(letter: 'A', text: 'Media company, studio, or agency', code: 'SOH1'),
        QuestionOption(letter: 'B', text: 'Clinic, HR office, or research lab', code: 'SOH2'),
      ]),
      Question(number: 8, text: 'What motivates you most?', options: [
        QuestionOption(letter: 'A', text: 'Sharing stories that matter', code: 'SOH1'),
        QuestionOption(letter: 'B', text: 'Helping people through psychological insight', code: 'SOH2'),
      ]),
    ],
  };

  static const List<ConfirmationQuestion> confirmationQuestions = [
    ConfirmationQuestion(number: 1, text: 'Are you comfortable caring for sick or injured people?', programCode: 'SOHS1'),
    ConfirmationQuestion(number: 2, text: 'Do you enjoy science subjects like Biology and Anatomy?', programCode: 'SOHS1'),
    ConfirmationQuestion(number: 3, text: 'Can you stay calm and think clearly in stressful or emergency situations?', programCode: 'SOHS1'),
    ConfirmationQuestion(number: 4, text: 'Are you willing to work in hospitals/clinics, including shifting schedules?', programCode: 'SOHS1'),
    ConfirmationQuestion(number: 5, text: 'Do you find satisfaction in helping or comforting others?', programCode: 'SOHS1'),
    ConfirmationQuestion(number: 6, text: 'Are you interested in learning medical procedures (injections, wound care, vital signs, etc.)?', programCode: 'SOHS1'),
    ConfirmationQuestion(number: 7, text: 'Can you handle physically demanding, hands-on work?', programCode: 'SOHS1'),
    ConfirmationQuestion(number: 8, text: 'Do you see yourself as a future nurse or healthcare provider?', programCode: 'SOHS1'),
  ];

  static const List<String> singleProgramDepts = ['SOHS', 'SOC'];

  static bool isSingleProgramDepartment(String deptCode) {
    return singleProgramDepts.contains(deptCode);
  }

  static List<Program> getDepartmentPrograms(String deptCode) {
    return programs.values.where((p) => p.departmentCode == deptCode).toList();
  }
}
