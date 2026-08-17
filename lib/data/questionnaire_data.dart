import '../models/question.dart';
import '../models/department.dart';
import '../models/program.dart';

class QuestionnaireData {
  QuestionnaireData._();

  static const List<Department> departments = [
    Department(code: 'IT', name: 'Information Technology', schoolName: 'School of Information Technology', flagshipProgramCode: 'IT1'),
    Department(code: 'ENG', name: 'Engineering', schoolName: 'School of Engineering', flagshipProgramCode: 'ENG1'),
    Department(code: 'ED', name: 'Teacher Education', schoolName: 'School of Teacher Education', flagshipProgramCode: 'ED1'),
    Department(code: 'BUS', name: 'Business & Accountancy', schoolName: 'School of Business and Accountancy', flagshipProgramCode: 'BUS1'),
    Department(code: 'HM', name: 'Hospitality Management', schoolName: 'School of International Hospitality Management', flagshipProgramCode: 'HM1'),
    Department(code: 'HUM', name: 'Humanities', schoolName: 'School of Humanities', flagshipProgramCode: 'HUM1'),
    Department(code: 'HS', name: 'Health & Sciences', schoolName: 'School of Health and Sciences', flagshipProgramCode: 'HS1'),
    Department(code: 'CRIM', name: 'Criminology', schoolName: 'School of Criminology', flagshipProgramCode: 'CRIM1'),
  ];

  static const Map<String, Program> programs = {
    'IT1': Program(code: 'IT1', name: 'BS Computer Science (Major in Data Science)', departmentCode: 'IT', isFlagship: true),
    'IT2': Program(code: 'IT2', name: 'BS Information Technology (Major in Web Development)', departmentCode: 'IT'),
    'IT3': Program(code: 'IT3', name: 'BS Information Technology (Major in Multimedia Arts)', departmentCode: 'IT'),
    'IT4': Program(code: 'IT4', name: 'BS Information Technology (Major in Infrastructure w/ Cybersecurity)', departmentCode: 'IT'),
    'ENG1': Program(code: 'ENG1', name: 'BS Civil Engineering', departmentCode: 'ENG', isFlagship: true),
    'ENG2': Program(code: 'ENG2', name: 'BS Computer Engineering', departmentCode: 'ENG'),
    'ENG3': Program(code: 'ENG3', name: 'BS Electrical Engineering', departmentCode: 'ENG'),
    'ENG4': Program(code: 'ENG4', name: 'BS Electronics Engineering', departmentCode: 'ENG'),
    'ED1': Program(code: 'ED1', name: 'Bachelor of Early Childhood Education', departmentCode: 'ED', isFlagship: true),
    'ED2': Program(code: 'ED2', name: 'Bachelor of Elementary Education', departmentCode: 'ED'),
    'ED3': Program(code: 'ED3', name: 'BSEd Major in English', departmentCode: 'ED'),
    'ED4': Program(code: 'ED4', name: 'BSEd Major in Filipino', departmentCode: 'ED'),
    'ED5': Program(code: 'ED5', name: 'BSEd Major in Mathematics', departmentCode: 'ED'),
    'ED6': Program(code: 'ED6', name: 'BSEd Major in Science', departmentCode: 'ED'),
    'ED7': Program(code: 'ED7', name: 'Bachelor of Special Needs Education (Generalist)', departmentCode: 'ED'),
    'BUS1': Program(code: 'BUS1', name: 'BS Accountancy', departmentCode: 'BUS', isFlagship: true),
    'BUS2': Program(code: 'BUS2', name: 'BS Business Administration (Major in Financial Management)', departmentCode: 'BUS'),
    'BUS3': Program(code: 'BUS3', name: 'BS Business Administration (Major in Marketing Management)', departmentCode: 'BUS'),
    'HM1': Program(code: 'HM1', name: 'BS Hospitality Management', departmentCode: 'HM', isFlagship: true),
    'HM2': Program(code: 'HM2', name: 'BS Tourism Management', departmentCode: 'HM'),
    'HUM1': Program(code: 'HUM1', name: 'BA Communication', departmentCode: 'HUM', isFlagship: true),
    'HUM2': Program(code: 'HUM2', name: 'BS Psychology', departmentCode: 'HUM'),
    'HS1': Program(code: 'HS1', name: 'BS Nursing', departmentCode: 'HS', isFlagship: true),
    'CRIM1': Program(code: 'CRIM1', name: 'BS Criminology', departmentCode: 'CRIM', isFlagship: true),
  };

  static const List<Question> phase1Questions = [
    Question(number: 1, text: 'Which activity sounds most fun to you?', options: [
      QuestionOption(letter: 'A', text: 'Making something interactive work on a screen, step by step', code: 'IT'),
      QuestionOption(letter: 'B', text: 'Building, fixing, or assembling something mechanical/structural', code: 'ENG'),
      QuestionOption(letter: 'C', text: 'Tutoring or explaining a lesson to a friend', code: 'ED'),
      QuestionOption(letter: 'D', text: 'Managing a budget or planning a small business', code: 'BUS'),
      QuestionOption(letter: 'E', text: 'Planning an event, trip, or hosting guests', code: 'HM'),
      QuestionOption(letter: 'F', text: 'Writing a story, making content, or analyzing behavior', code: 'HUM'),
      QuestionOption(letter: 'G', text: 'Helping someone who is sick or injured', code: 'HS'),
      QuestionOption(letter: 'H', text: 'Investigating a mystery or solving a case', code: 'CRIM'),
    ]),
    Question(number: 2, text: 'Which subject did you enjoy most in school?', options: [
      QuestionOption(letter: 'A', text: 'Computer / ICT', code: 'IT'),
      QuestionOption(letter: 'B', text: 'Math and Physics', code: 'ENG'),
      QuestionOption(letter: 'C', text: 'Any subject you liked explaining to classmates', code: 'ED'),
      QuestionOption(letter: 'D', text: 'Economics / Business Math', code: 'BUS'),
      QuestionOption(letter: 'E', text: 'Values Education / activities involving people and culture', code: 'HM'),
      QuestionOption(letter: 'F', text: 'English, Filipino, or the Arts', code: 'HUM'),
      QuestionOption(letter: 'G', text: 'Science / Biology', code: 'HS'),
      QuestionOption(letter: 'H', text: 'Civic / Values focused on law, rules, and order', code: 'CRIM'),
    ]),
    Question(number: 3, text: 'What kind of work environment appeals to you?', options: [
      QuestionOption(letter: 'A', text: 'Office or remote, working with software and systems', code: 'IT'),
      QuestionOption(letter: 'B', text: 'Field sites, labs, construction sites, or technical plants', code: 'ENG'),
      QuestionOption(letter: 'C', text: 'A classroom', code: 'ED'),
      QuestionOption(letter: 'D', text: 'A corporate office, bank, or finance firm', code: 'BUS'),
      QuestionOption(letter: 'E', text: 'Hotels, resorts, or airlines', code: 'HM'),
      QuestionOption(letter: 'F', text: 'A media company, studio, agency, or clinic setting', code: 'HUM'),
      QuestionOption(letter: 'G', text: 'A hospital or clinic', code: 'HS'),
      QuestionOption(letter: 'H', text: 'A police station, court, or law enforcement agency', code: 'CRIM'),
    ]),
    Question(number: 4, text: 'What is your natural strength?', options: [
      QuestionOption(letter: 'A', text: 'Logical thinking and problem-solving with technology', code: 'IT'),
      QuestionOption(letter: 'B', text: 'Spatial and mechanical reasoning', code: 'ENG'),
      QuestionOption(letter: 'C', text: 'Patience and communicating with people', code: 'ED'),
      QuestionOption(letter: 'D', text: 'Numerical analysis and persuasion', code: 'BUS'),
      QuestionOption(letter: 'E', text: 'Hospitality and interpersonal warmth', code: 'HM'),
      QuestionOption(letter: 'F', text: 'Creativity, expression, or understanding people\'s behavior', code: 'HUM'),
      QuestionOption(letter: 'G', text: 'Empathy and staying composed under pressure', code: 'HS'),
      QuestionOption(letter: 'H', text: 'Observation skills and a strong sense of justice', code: 'CRIM'),
    ]),
    Question(number: 5, text: 'What impact do you want to have in your future career?', options: [
      QuestionOption(letter: 'A', text: 'Build digital solutions and innovate with technology', code: 'IT'),
      QuestionOption(letter: 'B', text: 'Build infrastructure or machines that improve lives', code: 'ENG'),
      QuestionOption(letter: 'C', text: 'Shape and guide the next generation', code: 'ED'),
      QuestionOption(letter: 'D', text: 'Help businesses grow and manage finances well', code: 'BUS'),
      QuestionOption(letter: 'E', text: 'Create memorable experiences for travelers and guests', code: 'HM'),
      QuestionOption(letter: 'F', text: 'Inform, entertain, or help people understand themselves', code: 'HUM'),
      QuestionOption(letter: 'G', text: 'Save lives and take care of the sick', code: 'HS'),
      QuestionOption(letter: 'H', text: 'Keep communities safe and uphold justice', code: 'CRIM'),
    ]),
    Question(number: 6, text: 'How do you prefer to solve problems?', options: [
      QuestionOption(letter: 'A', text: 'Breaking a problem into small, logical steps until it works', code: 'IT'),
      QuestionOption(letter: 'B', text: 'Applying scientific and engineering principles', code: 'ENG'),
      QuestionOption(letter: 'C', text: 'Explaining concepts step by step to others', code: 'ED'),
      QuestionOption(letter: 'D', text: 'Analyzing numbers, trends, and markets', code: 'BUS'),
      QuestionOption(letter: 'E', text: 'Adjusting quickly to guest or customer needs', code: 'HM'),
      QuestionOption(letter: 'F', text: 'Through storytelling, design, or understanding emotions', code: 'HUM'),
      QuestionOption(letter: 'G', text: 'Following medical protocols calmly and carefully', code: 'HS'),
      QuestionOption(letter: 'H', text: 'Gathering evidence and facts methodically', code: 'CRIM'),
    ]),
    Question(number: 7, text: 'Which tasks energize you the most?', options: [
      QuestionOption(letter: 'A', text: 'Building software, websites, or systems', code: 'IT'),
      QuestionOption(letter: 'B', text: 'Designing or building physical structures, machines, or circuits', code: 'ENG'),
      QuestionOption(letter: 'C', text: 'Teaching, mentoring, or guiding others', code: 'ED'),
      QuestionOption(letter: 'D', text: 'Handling accounts, sales, or marketing campaigns', code: 'BUS'),
      QuestionOption(letter: 'E', text: 'Organizing events or welcoming and assisting guests', code: 'HM'),
      QuestionOption(letter: 'F', text: 'Creating content, counseling, or communicating ideas', code: 'HUM'),
      QuestionOption(letter: 'G', text: 'Assisting patients or performing medical/health procedures', code: 'HS'),
      QuestionOption(letter: 'H', text: 'Patrolling, investigating, or enforcing rules', code: 'CRIM'),
    ]),
  ];

  static const Map<String, List<Question>> phase2Questions = {
    'IT': [
      Question(number: 1, text: 'Which project excites you most?', options: [
        QuestionOption(letter: 'A', text: 'Analyzing large datasets to find trends and predictions', code: 'IT1'),
        QuestionOption(letter: 'B', text: 'Designing and building an interactive website', code: 'IT2'),
        QuestionOption(letter: 'C', text: 'Creating animations, graphics, or game assets', code: 'IT3'),
        QuestionOption(letter: 'D', text: 'Securing a company\'s network from hackers', code: 'IT4'),
      ]),
      Question(number: 2, text: 'Which tool or skill would you like to master?', options: [
        QuestionOption(letter: 'A', text: 'Python, R, and Machine Learning', code: 'IT1'),
        QuestionOption(letter: 'B', text: 'HTML, CSS, JavaScript, and web frameworks', code: 'IT2'),
        QuestionOption(letter: 'C', text: 'Adobe Creative Suite and 3D modeling tools', code: 'IT3'),
        QuestionOption(letter: 'D', text: 'Network security and ethical hacking tools', code: 'IT4'),
      ]),
      Question(number: 3, text: 'What kind of problem do you enjoy solving?', options: [
        QuestionOption(letter: 'A', text: 'Finding hidden patterns and predictions in numbers', code: 'IT1'),
        QuestionOption(letter: 'B', text: 'Making a website look good and run smoothly', code: 'IT2'),
        QuestionOption(letter: 'C', text: 'Making visuals and stories come to life', code: 'IT3'),
        QuestionOption(letter: 'D', text: 'Finding and fixing security vulnerabilities', code: 'IT4'),
      ]),
      Question(number: 4, text: 'Which career sounds most appealing?', options: [
        QuestionOption(letter: 'A', text: 'Data Scientist / Data Analyst', code: 'IT1'),
        QuestionOption(letter: 'B', text: 'Web Developer (Front-end or Back-end)', code: 'IT2'),
        QuestionOption(letter: 'C', text: 'Graphic / Animation / Game Designer', code: 'IT3'),
        QuestionOption(letter: 'D', text: 'Cybersecurity Specialist / Network Administrator', code: 'IT4'),
      ]),
      Question(number: 5, text: 'Which related activity did you enjoy?', options: [
        QuestionOption(letter: 'A', text: 'Statistics and math-based puzzles', code: 'IT1'),
        QuestionOption(letter: 'B', text: 'Building simple web pages', code: 'IT2'),
        QuestionOption(letter: 'C', text: 'Drawing, editing videos or photos', code: 'IT3'),
        QuestionOption(letter: 'D', text: 'Learning how systems can be hacked or protected', code: 'IT4'),
      ]),
      Question(number: 6, text: 'Pick a preferred work style.', options: [
        QuestionOption(letter: 'A', text: 'Deep, focused analysis with data', code: 'IT1'),
        QuestionOption(letter: 'B', text: 'Iterative building and testing of web features', code: 'IT2'),
        QuestionOption(letter: 'C', text: 'Creative, visual, artistic work', code: 'IT3'),
        QuestionOption(letter: 'D', text: 'Vigilant, detail-oriented monitoring', code: 'IT4'),
      ]),
      Question(number: 7, text: 'Which app would you rather build?', options: [
        QuestionOption(letter: 'A', text: 'An app that predicts trends from data', code: 'IT1'),
        QuestionOption(letter: 'B', text: 'An e-commerce or booking website', code: 'IT2'),
        QuestionOption(letter: 'C', text: 'An animated short film or game', code: 'IT3'),
        QuestionOption(letter: 'D', text: 'A secure login or network-monitoring system', code: 'IT4'),
      ]),
      Question(number: 8, text: 'What motivates you most in IT?', options: [
        QuestionOption(letter: 'A', text: 'Uncovering insights hidden in data', code: 'IT1'),
        QuestionOption(letter: 'B', text: 'Bringing designs to life on the web', code: 'IT2'),
        QuestionOption(letter: 'C', text: 'Expressing creativity digitally', code: 'IT3'),
        QuestionOption(letter: 'D', text: 'Protecting people and systems from threats', code: 'IT4'),
      ]),
    ],
    'ENG': [
      Question(number: 1, text: 'Which structure or system interests you most?', options: [
        QuestionOption(letter: 'A', text: 'Buildings, bridges, and roads', code: 'ENG1'),
        QuestionOption(letter: 'B', text: 'Computer hardware and embedded systems', code: 'ENG2'),
        QuestionOption(letter: 'C', text: 'Power plants and electrical grids', code: 'ENG3'),
        QuestionOption(letter: 'D', text: 'Circuits, gadgets, and communication devices', code: 'ENG4'),
      ]),
      Question(number: 2, text: 'Which subject did you enjoy?', options: [
        QuestionOption(letter: 'A', text: 'Physics with a focus on construction/materials', code: 'ENG1'),
        QuestionOption(letter: 'B', text: 'Programming combined with hardware', code: 'ENG2'),
        QuestionOption(letter: 'C', text: 'Physics with a focus on electricity and magnetism', code: 'ENG3'),
        QuestionOption(letter: 'D', text: 'Physics with a focus on electronics and circuits', code: 'ENG4'),
      ]),
      Question(number: 3, text: 'What kind of project excites you?', options: [
        QuestionOption(letter: 'A', text: 'Designing a building or bridge', code: 'ENG1'),
        QuestionOption(letter: 'B', text: 'Building a computer or robot circuit board', code: 'ENG2'),
        QuestionOption(letter: 'C', text: 'Designing a power distribution system', code: 'ENG3'),
        QuestionOption(letter: 'D', text: 'Designing a communication device or gadget', code: 'ENG4'),
      ]),
      Question(number: 4, text: 'Which career do you prefer?', options: [
        QuestionOption(letter: 'A', text: 'Civil / Structural Engineer', code: 'ENG1'),
        QuestionOption(letter: 'B', text: 'Computer / Hardware Engineer', code: 'ENG2'),
        QuestionOption(letter: 'C', text: 'Electrical / Power Engineer', code: 'ENG3'),
        QuestionOption(letter: 'D', text: 'Electronics / Communications Engineer', code: 'ENG4'),
      ]),
      Question(number: 5, text: 'Which tool would you like to use?', options: [
        QuestionOption(letter: 'A', text: 'AutoCAD and structural design software', code: 'ENG1'),
        QuestionOption(letter: 'B', text: 'Microcontrollers, circuit boards, and code', code: 'ENG2'),
        QuestionOption(letter: 'C', text: 'Power system simulators', code: 'ENG3'),
        QuestionOption(letter: 'D', text: 'Signal processing and electronic test tools', code: 'ENG4'),
      ]),
      Question(number: 6, text: 'Pick a preferred work environment.', options: [
        QuestionOption(letter: 'A', text: 'Construction site', code: 'ENG1'),
        QuestionOption(letter: 'B', text: 'Tech / hardware laboratory', code: 'ENG2'),
        QuestionOption(letter: 'C', text: 'Power plant or utility company', code: 'ENG3'),
        QuestionOption(letter: 'D', text: 'Electronics or telecom company', code: 'ENG4'),
      ]),
      Question(number: 7, text: 'Which everyday phenomenon interests you more?', options: [
        QuestionOption(letter: 'A', text: 'How buildings withstand earthquakes', code: 'ENG1'),
        QuestionOption(letter: 'B', text: 'How computers and robots work', code: 'ENG2'),
        QuestionOption(letter: 'C', text: 'How electricity gets to your home', code: 'ENG3'),
        QuestionOption(letter: 'D', text: 'How phones and gadgets communicate', code: 'ENG4'),
      ]),
      Question(number: 8, text: 'What motivates you most in engineering?', options: [
        QuestionOption(letter: 'A', text: 'Building lasting infrastructure', code: 'ENG1'),
        QuestionOption(letter: 'B', text: 'Merging hardware and software', code: 'ENG2'),
        QuestionOption(letter: 'C', text: 'Powering communities', code: 'ENG3'),
        QuestionOption(letter: 'D', text: 'Innovating communication technology', code: 'ENG4'),
      ]),
    ],
    'ED': [
      Question(number: 1, text: 'Which learners do you want to teach?', options: [
        QuestionOption(letter: 'A', text: 'Toddlers and preschoolers', code: 'ED1'),
        QuestionOption(letter: 'B', text: 'Grade-school children, all subjects', code: 'ED2'),
        QuestionOption(letter: 'C', text: 'Teens — English / literature', code: 'ED3'),
        QuestionOption(letter: 'D', text: 'Teens — Filipino / panitikan', code: 'ED4'),
        QuestionOption(letter: 'E', text: 'Teens — Mathematics', code: 'ED5'),
        QuestionOption(letter: 'F', text: 'Teens — Science', code: 'ED6'),
        QuestionOption(letter: 'G', text: 'Learners with special needs', code: 'ED7'),
      ]),
      Question(number: 2, text: 'Which subject would you love to teach?', options: [
        QuestionOption(letter: 'A', text: 'Basic motor and social skills for young children', code: 'ED1'),
        QuestionOption(letter: 'B', text: 'General subjects (reading, basic math, etc.)', code: 'ED2'),
        QuestionOption(letter: 'C', text: 'English grammar and literature', code: 'ED3'),
        QuestionOption(letter: 'D', text: 'Filipino grammar and literature', code: 'ED4'),
        QuestionOption(letter: 'E', text: 'Algebra, geometry, and calculus', code: 'ED5'),
        QuestionOption(letter: 'F', text: 'Biology, chemistry, and physics', code: 'ED6'),
        QuestionOption(letter: 'G', text: 'Individualized/adaptive learning strategies', code: 'ED7'),
      ]),
      Question(number: 3, text: 'Which teaching setting appeals to you?', options: [
        QuestionOption(letter: 'A', text: 'Daycare or preschool classroom', code: 'ED1'),
        QuestionOption(letter: 'B', text: 'Elementary classroom', code: 'ED2'),
        QuestionOption(letter: 'C', text: 'High school English class', code: 'ED3'),
        QuestionOption(letter: 'D', text: 'High school Filipino class', code: 'ED4'),
        QuestionOption(letter: 'E', text: 'High school Math class', code: 'ED5'),
        QuestionOption(letter: 'F', text: 'High school Science laboratory', code: 'ED6'),
        QuestionOption(letter: 'G', text: 'Inclusive / special-education classroom', code: 'ED7'),
      ]),
      Question(number: 4, text: 'Which skill do you want to build?', options: [
        QuestionOption(letter: 'A', text: 'Nurturing and child development', code: 'ED1'),
        QuestionOption(letter: 'B', text: 'Teaching foundational multi-subject skills', code: 'ED2'),
        QuestionOption(letter: 'C', text: 'Communication and literary analysis', code: 'ED3'),
        QuestionOption(letter: 'D', text: 'Wika at panitikan', code: 'ED4'),
        QuestionOption(letter: 'E', text: 'Logical and mathematical reasoning', code: 'ED5'),
        QuestionOption(letter: 'F', text: 'Scientific inquiry and experimentation', code: 'ED6'),
        QuestionOption(letter: 'G', text: 'Adaptive teaching techniques for diverse learners', code: 'ED7'),
      ]),
      Question(number: 5, text: 'Which activity sounds fun to you?', options: [
        QuestionOption(letter: 'A', text: 'Playing with and guiding young children', code: 'ED1'),
        QuestionOption(letter: 'B', text: 'Teaching a mix of subjects to children', code: 'ED2'),
        QuestionOption(letter: 'C', text: 'Discussing novels and essays', code: 'ED3'),
        QuestionOption(letter: 'D', text: 'Discussing Filipino literature', code: 'ED4'),
        QuestionOption(letter: 'E', text: 'Solving math problems together', code: 'ED5'),
        QuestionOption(letter: 'F', text: 'Conducting science experiments', code: 'ED6'),
        QuestionOption(letter: 'G', text: 'Creating individualized learning plans', code: 'ED7'),
      ]),
      Question(number: 6, text: 'What impact do you want as a teacher?', options: [
        QuestionOption(letter: 'A', text: 'Build strong early foundations', code: 'ED1'),
        QuestionOption(letter: 'B', text: 'Give children their first love of learning', code: 'ED2'),
        QuestionOption(letter: 'C', text: 'Improve students\' English communication', code: 'ED3'),
        QuestionOption(letter: 'D', text: 'Preserve Filipino language and culture', code: 'ED4'),
        QuestionOption(letter: 'E', text: 'Build students\' problem-solving skills', code: 'ED5'),
        QuestionOption(letter: 'F', text: 'Spark curiosity about the natural world', code: 'ED6'),
        QuestionOption(letter: 'G', text: 'Empower learners with special needs', code: 'ED7'),
      ]),
      Question(number: 7, text: 'Which classroom scenario appeals to you most?', options: [
        QuestionOption(letter: 'A', text: 'Comforting a crying toddler', code: 'ED1'),
        QuestionOption(letter: 'B', text: 'Teaching reading to 8-year-olds', code: 'ED2'),
        QuestionOption(letter: 'C', text: 'Leading a debate on a novel', code: 'ED3'),
        QuestionOption(letter: 'D', text: 'Leading a discussion on a Filipino text', code: 'ED4'),
        QuestionOption(letter: 'E', text: 'Explaining a tricky math proof', code: 'ED5'),
        QuestionOption(letter: 'F', text: 'Guiding a laboratory experiment', code: 'ED6'),
        QuestionOption(letter: 'G', text: 'Adapting a lesson for a student with learning difficulties', code: 'ED7'),
      ]),
      Question(number: 8, text: 'What motivates you most in teaching?', options: [
        QuestionOption(letter: 'A', text: 'Shaping early childhood development', code: 'ED1'),
        QuestionOption(letter: 'B', text: 'Being a child\'s first teacher', code: 'ED2'),
        QuestionOption(letter: 'C', text: 'Inspiring love for English language/literature', code: 'ED3'),
        QuestionOption(letter: 'D', text: 'Preserving and teaching Filipino heritage', code: 'ED4'),
        QuestionOption(letter: 'E', text: 'Making math click for students', code: 'ED5'),
        QuestionOption(letter: 'F', text: 'Igniting scientific curiosity', code: 'ED6'),
        QuestionOption(letter: 'G', text: 'Making education inclusive for everyone', code: 'ED7'),
      ]),
    ],
    'BUS': [
      Question(number: 1, text: 'Which task appeals to you most?', options: [
        QuestionOption(letter: 'A', text: 'Auditing financial records for accuracy', code: 'BUS1'),
        QuestionOption(letter: 'B', text: 'Analyzing investments and managing funds', code: 'BUS2'),
        QuestionOption(letter: 'C', text: 'Creating campaigns to sell a product', code: 'BUS3'),
      ]),
      Question(number: 2, text: 'Which subject did you enjoy?', options: [
        QuestionOption(letter: 'A', text: 'Bookkeeping and accounting principles', code: 'BUS1'),
        QuestionOption(letter: 'B', text: 'Math focused on finance and economics', code: 'BUS2'),
        QuestionOption(letter: 'C', text: 'Advertising and consumer behavior', code: 'BUS3'),
      ]),
      Question(number: 3, text: 'Which career sounds appealing?', options: [
        QuestionOption(letter: 'A', text: 'Certified Public Accountant / Auditor', code: 'BUS1'),
        QuestionOption(letter: 'B', text: 'Financial Analyst / Investment Manager', code: 'BUS2'),
        QuestionOption(letter: 'C', text: 'Marketing Manager / Brand Strategist', code: 'BUS3'),
      ]),
      Question(number: 4, text: 'Which daily task would you prefer?', options: [
        QuestionOption(letter: 'A', text: 'Preparing financial statements', code: 'BUS1'),
        QuestionOption(letter: 'B', text: 'Managing budgets and investment portfolios', code: 'BUS2'),
        QuestionOption(letter: 'C', text: 'Designing promotions and branding', code: 'BUS3'),
      ]),
      Question(number: 5, text: 'Which skill matters most to you?', options: [
        QuestionOption(letter: 'A', text: 'Precision and attention to detail with numbers', code: 'BUS1'),
        QuestionOption(letter: 'B', text: 'Strategic financial decision-making', code: 'BUS2'),
        QuestionOption(letter: 'C', text: 'Creativity and persuasion', code: 'BUS3'),
      ]),
      Question(number: 6, text: 'Pick a project you\'d enjoy.', options: [
        QuestionOption(letter: 'A', text: 'Reconciling a company\'s books', code: 'BUS1'),
        QuestionOption(letter: 'B', text: 'Building an investment plan', code: 'BUS2'),
        QuestionOption(letter: 'C', text: 'Launching a product campaign', code: 'BUS3'),
      ]),
      Question(number: 7, text: 'What work style suits you?', options: [
        QuestionOption(letter: 'A', text: 'Rule-based, compliance-focused work', code: 'BUS1'),
        QuestionOption(letter: 'B', text: 'Analytical, risk-based decision making', code: 'BUS2'),
        QuestionOption(letter: 'C', text: 'Creative, people-facing strategy work', code: 'BUS3'),
      ]),
      Question(number: 8, text: 'What motivates you most in business?', options: [
        QuestionOption(letter: 'A', text: 'Ensuring financial accuracy and integrity', code: 'BUS1'),
        QuestionOption(letter: 'B', text: 'Growing wealth and managing resources', code: 'BUS2'),
        QuestionOption(letter: 'C', text: 'Connecting brands with customers', code: 'BUS3'),
      ]),
    ],
    'HM': [
      Question(number: 1, text: 'Which setting appeals to you?', options: [
        QuestionOption(letter: 'A', text: 'Hotels, restaurants, and resorts', code: 'HM1'),
        QuestionOption(letter: 'B', text: 'Travel agencies, airlines, and tour companies', code: 'HM2'),
      ]),
      Question(number: 2, text: 'Which task excites you?', options: [
        QuestionOption(letter: 'A', text: 'Managing hotel or restaurant operations', code: 'HM1'),
        QuestionOption(letter: 'B', text: 'Planning travel itineraries and tours', code: 'HM2'),
      ]),
      Question(number: 3, text: 'Which career do you prefer?', options: [
        QuestionOption(letter: 'A', text: 'Hotel / Restaurant Manager', code: 'HM1'),
        QuestionOption(letter: 'B', text: 'Tour Guide / Travel Consultant', code: 'HM2'),
      ]),
      Question(number: 4, text: 'Which skill matters most?', options: [
        QuestionOption(letter: 'A', text: 'Guest service and operations management', code: 'HM1'),
        QuestionOption(letter: 'B', text: 'Destination knowledge and itinerary planning', code: 'HM2'),
      ]),
      Question(number: 5, text: 'Which activity sounds fun?', options: [
        QuestionOption(letter: 'A', text: 'Organizing a fine-dining experience', code: 'HM1'),
        QuestionOption(letter: 'B', text: 'Planning a group\'s dream vacation', code: 'HM2'),
      ]),
      Question(number: 6, text: 'What impact do you want?', options: [
        QuestionOption(letter: 'A', text: 'Create memorable stays for guests', code: 'HM1'),
        QuestionOption(letter: 'B', text: 'Help people explore the world', code: 'HM2'),
      ]),
      Question(number: 7, text: 'Pick a preferred work environment.', options: [
        QuestionOption(letter: 'A', text: 'Hotel, resort, or restaurant', code: 'HM1'),
        QuestionOption(letter: 'B', text: 'Airport, travel agency, or tour bus', code: 'HM2'),
      ]),
      Question(number: 8, text: 'What motivates you most?', options: [
        QuestionOption(letter: 'A', text: 'Excellence in hospitality service', code: 'HM1'),
        QuestionOption(letter: 'B', text: 'Showcasing destinations and culture', code: 'HM2'),
      ]),
    ],
    'HUM': [
      Question(number: 1, text: 'Which activity appeals to you?', options: [
        QuestionOption(letter: 'A', text: 'Writing, broadcasting, or producing media', code: 'HUM1'),
        QuestionOption(letter: 'B', text: 'Understanding why people think, feel, and act the way they do', code: 'HUM2'),
      ]),
      Question(number: 2, text: 'Which subject did you enjoy?', options: [
        QuestionOption(letter: 'A', text: 'Journalism and media studies', code: 'HUM1'),
        QuestionOption(letter: 'B', text: 'Human behavior and social science', code: 'HUM2'),
      ]),
      Question(number: 3, text: 'Which career do you prefer?', options: [
        QuestionOption(letter: 'A', text: 'Journalist / Broadcaster / PR Specialist', code: 'HUM1'),
        QuestionOption(letter: 'B', text: 'Counselor / HR Specialist / Psychologist', code: 'HUM2'),
      ]),
      Question(number: 4, text: 'Which skill matters most?', options: [
        QuestionOption(letter: 'A', text: 'Storytelling and media production', code: 'HUM1'),
        QuestionOption(letter: 'B', text: 'Listening and understanding emotions/behavior', code: 'HUM2'),
      ]),
      Question(number: 5, text: 'Which activity sounds fun?', options: [
        QuestionOption(letter: 'A', text: 'Producing a video or podcast', code: 'HUM1'),
        QuestionOption(letter: 'B', text: 'Studying why people behave a certain way', code: 'HUM2'),
      ]),
      Question(number: 6, text: 'What impact do you want?', options: [
        QuestionOption(letter: 'A', text: 'Inform and entertain the public', code: 'HUM1'),
        QuestionOption(letter: 'B', text: 'Help people understand themselves and improve wellbeing', code: 'HUM2'),
      ]),
      Question(number: 7, text: 'Pick a preferred work environment.', options: [
        QuestionOption(letter: 'A', text: 'Media company, studio, or agency', code: 'HUM1'),
        QuestionOption(letter: 'B', text: 'Clinic, HR office, or research lab', code: 'HUM2'),
      ]),
      Question(number: 8, text: 'What motivates you most?', options: [
        QuestionOption(letter: 'A', text: 'Sharing stories that matter', code: 'HUM1'),
        QuestionOption(letter: 'B', text: 'Helping people through psychological insight', code: 'HUM2'),
      ]),
    ],
  };

  static const List<ConfirmationQuestion> confirmationQuestions = [
    ConfirmationQuestion(number: 1, text: 'Are you comfortable caring for sick or injured people?', programCode: 'HS1'),
    ConfirmationQuestion(number: 2, text: 'Do you enjoy science subjects like Biology and Anatomy?', programCode: 'HS1'),
    ConfirmationQuestion(number: 3, text: 'Can you stay calm and think clearly in stressful or emergency situations?', programCode: 'HS1'),
    ConfirmationQuestion(number: 4, text: 'Are you willing to work in hospitals/clinics, including shifting schedules?', programCode: 'HS1'),
    ConfirmationQuestion(number: 5, text: 'Do you find satisfaction in helping or comforting others?', programCode: 'HS1'),
    ConfirmationQuestion(number: 6, text: 'Are you interested in learning medical procedures (injections, wound care, vital signs, etc.)?', programCode: 'HS1'),
    ConfirmationQuestion(number: 7, text: 'Can you handle physically demanding, hands-on work?', programCode: 'HS1'),
    ConfirmationQuestion(number: 8, text: 'Do you see yourself as a future nurse or healthcare provider?', programCode: 'HS1'),
  ];

  static const List<String> singleProgramDepts = ['HS', 'CRIM'];

  static bool isSingleProgramDepartment(String deptCode) {
    return singleProgramDepts.contains(deptCode);
  }

  static List<Program> getDepartmentPrograms(String deptCode) {
    return programs.values.where((p) => p.departmentCode == deptCode).toList();
  }
}
