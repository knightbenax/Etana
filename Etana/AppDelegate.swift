//
//  AppDelegate.swift
//  Etana
//
//  Created by Bezaleel Ashefor on 2024-11-04.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let englishWords: [String] = [
        // Previous A and B words...
        // (Previous words omitted for brevity but should be included)

        // A words from before...
        "a", "abandon", "ability", "able", "about", "above", "abroad", "absent", "absolute", "absorb",
        "abstract", "absurd", "abundant", "abuse", "academic", "accept", "access", "accident", "acclaim",
        "accommodate", "accompany", "accomplish", "account", "accurate", "accuse", "achieve", "acid",
        "acknowledge", "acquire", "across", "act", "action", "active", "actual", "adapt", "add", "address",
        "adequate", "adjust", "administer", "admire", "admit", "adopt", "adult", "advance", "advantage",
        "adventure", "advertise", "advice", "advise", "aerial", "affect", "affirm", "afford", "afraid",
        "after", "afternoon", "again", "against", "age", "agency", "agenda", "agent", "aggressive",
        "ago", "agree", "ahead", "aid", "aim", "air", "aircraft", "airline", "airport", "alarm",
        "album", "alcohol", "alert", "alien", "alike", "alive", "all", "allow", "ally", "almost",
        "alone", "along", "already", "also", "alter", "alternative", "although", "always", "amateur",
        "amaze", "ambition", "ambitious", "among", "amount", "amuse", "analyze", "ancient", "and",
        "anger", "angle", "angry", "animal", "announce", "annual", "another", "answer", "anticipate",
        "anxiety", "any", "anybody", "anymore", "anyone", "anything", "anyway", "anywhere", "apart",
        "apartment", "apparent", "appeal", "appear", "apple", "apply", "appoint", "appreciate",
        "approach", "appropriate", "approve", "approximate", "architect", "area", "argue", "arise",
        "arm", "army", "around", "arrange", "arrest", "arrive", "art", "article", "artist", "as",
        "ash", "aside", "ask", "asleep", "aspect", "assault", "assert", "assess", "asset", "assign",
        "assist", "assume", "assure", "astonish", "athlete", "atmosphere", "attach", "attack",
        "attempt", "attend", "attention", "attitude", "attract", "attribute", "audience", "author",
        "authority", "automatic", "available", "average", "avoid", "await", "awake", "award",
        "aware", "away", "awful", "awkward",

        // Adding B words
        "baby", "back", "background", "backward", "bacteria", "bad", "badge", "bag", "bake", "balance",
        "balcony", "ball", "balloon", "ballot", "ban", "banana", "band", "bandage", "bang", "bank",
        "banner", "bar", "barbecue", "bare", "barely", "bargain", "bark", "barn", "barrel", "barrier",
        "base", "baseball", "basic", "basically", "basis", "basket", "basketball", "bath", "bathroom",
        "battery", "battle", "bay", "beach", "beam", "bean", "bear", "beard", "beat", "beautiful",
        "beauty", "became", "because", "become", "bed", "bedroom", "bee", "beef", "been", "beer",
        "before", "begin", "beginning", "behalf", "behave", "behavior", "behind", "being", "belief",
        "believe", "bell", "belong", "below", "belt", "bench", "bend", "beneath", "benefit", "beside",
        "best", "bet", "better", "between", "beyond", "bicycle", "bid", "big", "bike", "bill",
        "billion", "bind", "biology", "bird", "birth", "birthday", "bit", "bite", "bitter", "black",
        "blade", "blame", "blank", "blanket", "blast", "bleed", "blend", "bless", "blind", "block",
        "blood", "blow", "blue", "board", "boat", "body", "boil", "bold", "bolt", "bomb",
        "bond", "bone", "bonus", "book", "boom", "boost", "boot", "border", "bore", "born",
        "borrow", "boss", "both", "bother", "bottle", "bottom", "boundary", "bow", "bowl", "box",
        "boy", "bracket", "brain", "branch", "brand", "brave", "bread", "break", "breakfast", "breast",
        "breath", "breathe", "breed", "brick", "bridge", "brief", "bright", "brilliant", "bring",
        "broad", "broadcast", "broke", "broken", "brother", "brown", "brush", "bubble", "budget",
        "build", "building", "bullet", "bunch", "burden", "burn", "burst", "bury", "bus", "bush",
        "business", "busy", "but", "butter", "button", "buy", "buyer", "buzz",
        // Adding C words
        "cabin", "cabinet", "cable", "cage", "cake", "calculate", "calendar", "call", "calm", "camera",
        "camp", "campaign", "campus", "can", "canal", "cancel", "cancer", "candidate", "candle",
        "candy", "canvas", "cap", "capable", "capacity", "capital", "captain", "capture", "car",
        "carbon", "card", "care", "career", "careful", "cargo", "carpet", "carry", "case", "cash",
        "cast", "castle", "casual", "cat", "catch", "category", "cattle", "cause", "caution", "cave",
        "ceiling", "celebrate", "cell", "cement", "center", "central", "century", "ceremony",
        "certain", "certificate", "chain", "chair", "chairman", "challenge", "chamber", "champion",
        "chance", "change", "channel", "chapter", "character", "charge", "charity", "charm", "chart",
        "chase", "cheap", "check", "cheek", "cheer", "cheese", "chemical", "chest", "chicken", "chief",
        "child", "childhood", "children", "chin", "chip", "chocolate", "choice", "choose", "church",
        "circle", "circuit", "circumstance", "citizen", "city", "civil", "claim", "class", "classic",
        "classify", "classroom", "clay", "clean", "clear", "clerk", "clever", "click", "client",
        "climate", "climb", "clinic", "clock", "close", "closed", "closely", "closer", "cloth",
        "clothes", "clothing", "cloud", "club", "clue", "cluster", "coach", "coal", "coast", "coat",
        "code", "coffee", "coin", "cold", "collapse", "colleague", "collect", "collection", "college",
        "colonial", "color", "column", "combination", "combine", "come", "comfort", "comfortable",
        "command", "commander", "comment", "commercial", "commission", "commit", "commitment",
        "committee", "common", "communicate", "communication", "community", "company", "compare",
        "comparison", "compete", "competition", "competitive", "competitor", "complain", "complaint",
        "complete", "completely", "complex", "complicated", "component", "compose", "composition",
        "compound", "comprehensive", "computer", "concentrate", "concentration", "concept", "concern",
        "concerned", "concert", "conclude", "conclusion", "concrete", "condition", "conduct",
        "conference", "confidence", "confident", "confirm", "conflict", "confront", "confused",
        "connect", "connection", "conscious", "consciousness", "consensus", "consent", "consequence",
        "conservative", "consider", "considerable", "consideration", "consist", "consistent",
        "constant", "constantly", "constitute", "constitution", "constitutional", "construct",
        "construction", "consultant", "consume", "consumer", "consumption", "contact", "contain",
        "container", "contemporary", "content", "contest", "context", "continent", "continue",
        "continuous", "contract", "contrast", "contribute", "contribution", "control", "controversial",
        "convention", "conventional", "conversation", "convert", "conviction", "convince", "cook",
        "cookie", "cooking", "cool", "cooperation", "cope", "copy", "core", "corn", "corner",
        "corporate", "corporation", "correct", "correspondent", "cost", "cotton", "could", "council",
        "counselor", "count", "counter", "country", "county", "couple", "courage", "course", "court",
        "cousin", "cover", "coverage", "cow", "crack", "craft", "crash", "crazy", "cream", "create",
        "creation", "creative", "creature", "credit", "crew", "crime", "criminal", "crisis",
        "criteria", "critic", "critical", "criticism", "criticize", "crop", "cross", "crowd", "crucial",
        "cruel", "cruise", "crush", "cry", "crystal", "cultural", "culture", "cup", "curious",
        "current", "currently", "curriculum", "custom", "customer", "cut", "cycle",

        // Adding D words
        "daily", "damage", "dance", "danger", "dangerous", "dare", "dark", "darkness", "data",
        "database", "date", "daughter", "dawn", "day", "dead", "deadline", "deadly", "deal", "dealer",
        "dear", "death", "debate", "debt", "decade", "decay", "december", "decide", "decision",
        "deck", "declare", "decline", "decrease", "dedicate", "deep", "deeply", "deer", "defeat",
        "defend", "defendant", "defense", "defensive", "deficit", "define", "definitely", "definition",
        "degree", "delay", "delegate", "delicate", "delicious", "delight", "deliver", "delivery",
        "demand", "democracy", "democrat", "democratic", "demonstrate", "demonstration", "deny",
        "department", "depend", "dependent", "depending", "depict", "depression", "depth", "deputy",
        "derive", "describe", "description", "desert", "deserve", "design", "designer", "desire",
        "desk", "desperate", "despite", "destroy", "destruction", "detail", "detailed", "detect",
        "determine", "develop", "developer", "developing", "development", "device", "devote",
        "diabetes", "diagnose", "diagnosis", "diamond", "diary", "dictionary", "die", "diet",
        "differ", "difference", "different", "differently", "difficult", "difficulty", "dig",
        "digital", "dignity", "dilemma", "dimension", "dining", "dinner", "direct", "direction",
        "directly", "director", "dirt", "dirty", "disability", "disagree", "disappear", "disaster",
        "discipline", "discourse", "discover", "discovery", "discrimination", "discuss", "discussion",
        "disease", "dish", "dismiss", "disorder", "display", "dispute", "distance", "distant",
        "distinct", "distinction", "distinguish", "distribute", "distribution", "district", "diverse",
        "diversity", "divide", "division", "divorce", "doctor", "document", "documentary", "dog",
        "dollar", "domestic", "dominant", "dominate", "door", "double", "doubt", "down", "downtown",
        "dozen", "draft", "drag", "drama", "dramatic", "dramatically", "draw", "drawing", "dream",
        "dress", "drink", "drive", "driver", "drop", "drug", "dry", "due", "during", "dust",
        "duty", "dying",

        // Adding E words
        "each", "eager", "ear", "early", "earn", "earnings", "earth", "earthquake", "ease", "easily",
        "east", "eastern", "easy", "eat", "eating", "economic", "economics", "economist", "economy",
        "edge", "edition", "editor", "editorial", "educate", "education", "educational", "educator",
        "effect", "effective", "effectively", "efficiency", "efficient", "effort", "egg", "eight",
        "either", "elderly", "elect", "election", "electric", "electricity", "electronic", "element",
        "elementary", "eliminate", "elite", "else", "elsewhere", "email", "embrace", "emerge",
        "emergency", "emission", "emotion", "emotional", "emphasis", "emphasize", "employ", "employee",
        "employer", "employment", "empty", "enable", "encounter", "encourage", "end", "enemy",
        "energy", "enforcement", "engage", "engine", "engineer", "engineering", "english", "enhance",
        "enjoy", "enormous", "enough", "ensure", "enter", "enterprise", "entertainment", "entire",
        "entirely", "entrance", "entry", "environment", "environmental", "episode", "equal", "equally",
        "equation", "equipment", "era", "error", "escape", "especially", "essay", "essential",
        "essentially", "establish", "establishment", "estate", "estimate", "ethics", "ethnic",
        "european", "evaluate", "evaluation", "even", "evening", "event", "eventually", "ever",
        "every", "everybody", "everyday", "everyone", "everything", "everywhere", "evidence",
        "evolution", "evolve", "exact", "exactly", "examination", "examine", "example", "exceed",
        "excellent", "except", "exception", "exchange", "exciting", "executive", "exercise",
        "exhibit", "exhibition", "exist", "existence", "existing", "expand", "expansion", "expect",
        "expectation", "expense", "expensive", "experience", "experiment", "experimental", "expert",
        "explain", "explanation", "explode", "explore", "explosion", "export", "expose", "exposure",
        "express", "expression", "extend", "extension", "extensive", "extent", "external", "extra",
        "extraordinary", "extreme", "extremely", "eye",
        
        "fabric", "face", "facilitate", "facility", "fact", "factor", "factory", "faculty", "fade",
           "fail", "failure", "fair", "fairly", "faith", "fall", "false", "familiar", "family",
           "famous", "fan", "fantasy", "far", "farm", "farmer", "fashion", "fast", "fat", "fatal",
           "fate", "father", "fault", "favor", "favorite", "fear", "feature", "federal", "fee",
           "feed", "feedback", "feel", "feeling", "fellow", "female", "fence", "festival", "fever",
           "few", "fiber", "fiction", "field", "fifteen", "fifth", "fifty", "fight", "fighter",
           "fighting", "figure", "file", "fill", "film", "final", "finally", "finance", "financial",
           "find", "finding", "fine", "finger", "finish", "fire", "firm", "first", "fish", "fishing",
           "fit", "fitness", "five", "fix", "flag", "flame", "flash", "flat", "flavor", "flee",
           "fleet", "flesh", "flexible", "flight", "float", "floor", "flow", "flower", "fluid",
           "fly", "focus", "fog", "fold", "folk", "follow", "following", "food", "fool", "foot",
           "football", "for", "force", "foreign", "forest", "forever", "forget", "form", "formal",
           "formation", "former", "formula", "forth", "fortune", "forward", "found", "foundation",
           "founder", "four", "fourth", "fox", "frame", "framework", "free", "freedom", "freeze",
           "french", "frequency", "frequent", "frequently", "fresh", "friend", "friendly", "friendship",
           "from", "front", "fruit", "frustration", "fuel", "full", "fully", "fun", "function",
           "fund", "fundamental", "funding", "funeral", "funny", "furniture", "furthermore", "future",

           // Adding G words
           "gain", "galaxy", "gallery", "game", "gang", "gap", "garage", "garden", "garlic", "gas",
           "gate", "gather", "gauge", "gear", "gender", "gene", "general", "generally", "generate",
           "generation", "generous", "genetic", "genius", "genre", "gentle", "gentleman", "gently",
           "genuine", "gesture", "get", "ghost", "giant", "gift", "gifted", "girl", "girlfriend",
           "give", "given", "glad", "glance", "glass", "global", "globe", "glory", "glove", "go",
           "goal", "god", "gold", "golden", "golf", "good", "goodbye", "goods", "gorgeous", "gospel",
           "gossip", "govern", "government", "governor", "grab", "grace", "grade", "gradually",
           "graduate", "grain", "grand", "grandfather", "grandmother", "grant", "grape", "grass",
           "grateful", "grave", "gravity", "gray", "great", "greatest", "green", "grocery", "ground",
           "group", "grow", "growing", "growth", "guarantee", "guard", "guess", "guest", "guide",
           "guideline", "guilty", "gun", "guy",

           // Adding H words
           "habit", "habitat", "hair", "half", "hall", "hand", "handful", "handle", "hang", "happen",
           "happy", "hard", "hardly", "hardware", "harm", "harmony", "harsh", "harvest", "hat", "hate",
           "have", "he", "head", "headline", "headquarters", "health", "healthy", "hear", "hearing",
           "heart", "heat", "heaven", "heavily", "heavy", "heel", "height", "helicopter", "hell",
           "hello", "help", "helpful", "hence", "her", "here", "heritage", "hero", "herself", "hey",
           "hi", "hide", "high", "highlight", "highly", "highway", "hill", "him", "himself", "hip",
           "hire", "his", "historian", "historic", "historical", "history", "hit", "hold", "hole",
           "holiday", "holy", "home", "homeless", "honest", "honey", "honor", "hook", "hope",
           "horizon", "hormone", "horn", "horrible", "horror", "horse", "hospital", "host", "hot",
           "hotel", "hour", "house", "household", "housing", "how", "however", "huge", "human",
           "humor", "hundred", "hungry", "hunt", "hunter", "hunting", "hurt", "husband", "hypothesis",

           // Adding I words
           "ice", "idea", "ideal", "identical", "identify", "identity", "ideology", "if", "ignore",
           "ill", "illegal", "illness", "illustrate", "image", "imagination", "imagine", "immediate",
           "immediately", "immigrant", "immigration", "impact", "implement", "implementation", "implication",
           "imply", "importance", "important", "impose", "impossible", "impress", "impression",
           "impressive", "improve", "improvement", "in", "incentive", "incident", "include", "including",
           "income", "incorporate", "increase", "increased", "increasing", "increasingly", "incredible",
           "indeed", "independence", "independent", "index", "indicate", "indication", "individual",
           "industrial", "industry", "infant", "infection", "inflation", "influence", "inform",
           "information", "ingredient", "initial", "initially", "initiative", "injury", "inner",
           "innocent", "inquiry", "inside", "insight", "insist", "inspire", "install", "instance",
           "instant", "instead", "institution", "institutional", "instruction", "instructor", "instrument",
           "insurance", "intellectual", "intelligence", "intelligent", "intend", "intense", "intensity",
           "intention", "interaction", "interest", "interested", "interesting", "internal", "international",
           "internet", "interpret", "interpretation", "intervention", "interview", "into", "introduce",
           "introduction", "invasion", "invest", "investigate", "investigation", "investigator",
           "investment", "investor", "invite", "involve", "involved", "involvement", "iron", "island",
           "issue", "it", "item", "its", "itself",

           // Adding J words
           "jacket", "jail", "jam", "january", "japanese", "jar", "jazz", "jeans", "jet", "jew",
           "jewelry", "job", "join", "joint", "joke", "journal", "journalist", "journey", "joy",
           "judge", "judgment", "juice", "jump", "junior", "jury", "just", "justice", "justify",
        
        "keen", "keep", "keeper", "kernel", "kettle", "key", "keyboard", "kick", "kid", "kill",
            "killer", "killing", "kind", "king", "kingdom", "kiss", "kit", "kitchen", "knee", "knife",
            "knock", "know", "knowledge", "known", "korean",

            // Adding L words
            "label", "labor", "laboratory", "lack", "ladder", "lady", "lake", "lamp", "land",
            "landscape", "language", "lap", "large", "largely", "laser", "last", "late", "later",
            "latin", "latter", "laugh", "launch", "law", "lawn", "lawsuit", "lawyer", "lay", "layer",
            "lead", "leader", "leadership", "leading", "leaf", "league", "lean", "learn", "learning",
            "least", "leather", "leave", "lecture", "left", "leg", "legacy", "legal", "legend",
            "legislation", "legitimate", "lemon", "length", "lens", "less", "lesson", "let", "letter",
            "level", "liberal", "liberty", "library", "license", "lie", "life", "lifestyle", "lifetime",
            "lift", "light", "like", "likely", "limit", "limitation", "limited", "line", "link", "lip",
            "liquid", "list", "listen", "literally", "literary", "literature", "little", "live",
            "living", "load", "loan", "local", "locate", "location", "lock", "log", "logic", "logical",
            "lonely", "long", "look", "loop", "loose", "lose", "loss", "lost", "lot", "lots", "loud",
            "love", "lovely", "lover", "low", "lower", "loyalty", "luck", "lucky", "lunch", "lung",
            "luxury",

            // Adding M words
            "machine", "mad", "magazine", "magic", "magnetic", "mail", "main", "mainly", "maintain",
            "maintenance", "major", "majority", "make", "maker", "makeup", "male", "mall", "man",
            "manage", "management", "manager", "manner", "manufacturer", "manufacturing", "many", "map",
            "margin", "mark", "market", "marketing", "marriage", "married", "marry", "mask", "mass",
            "massive", "master", "match", "material", "math", "mathematics", "matrix", "matter",
            "maximum", "may", "maybe", "mayor", "meal", "mean", "meaning", "meanwhile", "measure",
            "measurement", "meat", "mechanism", "media", "medical", "medication", "medicine", "medium",
            "meet", "meeting", "member", "membership", "memory", "mental", "mention", "menu", "mere",
            "merely", "mess", "message", "metal", "meter", "method", "mexican", "middle", "might",
            "military", "milk", "million", "mind", "mine", "mineral", "minimum", "minister", "minor",
            "minority", "minute", "miracle", "mirror", "miss", "missile", "mission", "mistake", "mix",
            "mixture", "mode", "model", "moderate", "modern", "modest", "mom", "moment", "money",
            "monitor", "month", "mood", "moon", "moral", "more", "moreover", "morning", "mortgage",
            "most", "mostly", "mother", "motion", "motivation", "motor", "mount", "mountain", "mouse",
            "mouth", "move", "movement", "movie", "much", "multiple", "murder", "muscle", "museum",
            "music", "musical", "musician", "muslim", "must", "mutual", "myself", "mystery", "myth",

            // Adding N words
            "nail", "name", "narrative", "narrow", "nation", "national", "native", "natural", "naturally",
            "nature", "near", "nearby", "nearly", "neat", "necessarily", "necessary", "neck", "need",
            "negative", "negotiate", "negotiation", "neighbor", "neighborhood", "neither", "nerve",
            "nervous", "net", "network", "never", "nevertheless", "new", "newly", "news", "newspaper",
            "next", "nice", "night", "nine", "nobody", "nod", "noise", "nomination", "none",
            "nonetheless", "noon", "nor", "normal", "normally", "north", "northern", "nose", "not",
            "note", "notebook", "nothing", "notice", "notion", "novel", "now", "nowhere", "nuclear",
            "number", "numerous", "nurse", "nut",

            // Adding O words
            "oak", "object", "objective", "obligation", "observation", "observe", "observer", "obtain",
            "obvious", "obviously", "occasion", "occasionally", "occupation", "occupy", "occur",
            "ocean", "odd", "odds", "of", "off", "offense", "offensive", "offer", "office", "officer",
            "official", "often", "oh", "oil", "okay", "old", "olympic", "on", "once", "one", "ongoing",
            "onion", "online", "only", "onto", "open", "opening", "operate", "operating", "operation",
            "operator", "opinion", "opponent", "opportunity", "oppose", "opposite", "opposition",
            "option", "or", "orange", "orbit", "order", "ordinary", "organ", "organic", "organization",
            "organize", "orientation", "origin", "original", "originally", "other", "others", "otherwise",
            "ought", "our", "ourselves", "out", "outcome", "outside", "oven", "over", "overall",
            "overcome", "overlook", "owe", "own", "owner", "oxygen",
        
        "pace", "pack", "package", "page", "pain", "painful", "paint", "painter", "painting",
            "pair", "palace", "pale", "palestinian", "palm", "pan", "panel", "panic", "pant",
            "paper", "parade", "parent", "park", "parking", "parliament", "part", "participate",
            "participation", "particular", "particularly", "partly", "partner", "partnership", "party",
            "pass", "passage", "passenger", "passion", "past", "patch", "path", "patient", "pattern",
            "pause", "pay", "payment", "peace", "peak", "peer", "penalty", "pencil", "people",
            "pepper", "per", "perceive", "percentage", "perception", "perfect", "perfectly", "perform",
            "performance", "perhaps", "period", "permanent", "permission", "permit", "person", "personal",
            "personality", "personally", "personnel", "perspective", "persuade", "pet", "phase",
            "phenomenon", "philosophy", "phone", "photo", "photograph", "photographer", "phrase",
            "physical", "physically", "physician", "piano", "pick", "picture", "pie", "piece", "pile",
            "pilot", "pin", "pine", "pink", "pipe", "pitch", "place", "plan", "plane", "planet",
            "planning", "plant", "plastic", "plate", "platform", "play", "player", "please", "pleasure",
            "plenty", "plot", "plus", "pocket", "poem", "poet", "poetry", "point", "pole", "police",
            "policy", "political", "politically", "politician", "politics", "poll", "pollution", "pool",
            "poor", "pop", "popular", "population", "porch", "port", "portion", "portrait", "portray",
            "pose", "position", "positive", "possess", "possibility", "possible", "possibly", "post",
            "pot", "potato", "potential", "potentially", "pound", "pour", "poverty", "powder", "power",
            "powerful", "practical", "practice", "pray", "prayer", "precisely", "predict", "prefer",
            "preference", "pregnancy", "pregnant", "preparation", "prepare", "prescription", "presence",
            "present", "presentation", "preserve", "president", "presidential", "press", "pressure",
            "pretend", "pretty", "prevent", "previous", "previously", "price", "pride", "priest",
            "primarily", "primary", "prime", "principal", "principle", "print", "prior", "priority",
            "prison", "prisoner", "privacy", "private", "probably", "problem", "procedure", "proceed",
            "process", "produce", "producer", "product", "production", "profession", "professional",
            "professor", "profile", "profit", "program", "progress", "project", "prominent", "promise",
            "promote", "prompt", "proof", "proper", "properly", "property", "proportion", "proposal",
            "propose", "proposed", "prosecutor", "prospect", "protect", "protection", "protein",
            "protest", "proud", "prove", "provide", "provider", "province", "provision", "psychological",
            "psychologist", "psychology", "public", "publication", "publicly", "publish", "publisher",
            "pull", "pulse", "pump", "punch", "punishment", "purchase", "pure", "purpose", "pursue",
            "push", "put", "puzzle",

            // Adding Q words
            "qualify", "quality", "quarter", "quarterback", "question", "quick", "quickly", "quiet",
            "quietly", "quit", "quite", "quote", "quotation",

            // Adding R words
            "race", "racial", "radical", "radio", "rail", "rain", "raise", "range", "rank", "rapid",
            "rapidly", "rare", "rarely", "rate", "rather", "rating", "ratio", "raw", "reach", "react",
            "reaction", "read", "reader", "reading", "ready", "real", "reality", "realize", "really",
            "reason", "reasonable", "recall", "receive", "recent", "recently", "recipe", "recognition",
            "recognize", "recommend", "recommendation", "record", "recording", "recover", "recovery",
            "recruit", "red", "reduce", "reduction", "refer", "reference", "reflect", "reflection",
            "reform", "refugee", "refuse", "regard", "regarding", "regardless", "regime", "region",
            "regional", "register", "regular", "regularly", "regulate", "regulation", "reinforce",
            "reject", "relate", "relation", "relationship", "relative", "relatively", "relax",
            "release", "relevant", "relief", "religion", "religious", "rely", "remain", "remaining",
            "remarkable", "remember", "remind", "remote", "remove", "repeat", "repeatedly", "replace",
            "reply", "report", "reporter", "represent", "representation", "representative", "republican",
            "reputation", "request", "require", "requirement", "research", "researcher", "resemble",
            "reservation", "resident", "resist", "resistance", "resolution", "resolve", "resort",
            "resource", "respect", "respond", "response", "responsibility", "responsible", "rest",
            "restaurant", "restore", "restriction", "result", "retain", "retire", "retirement",
            "return", "reveal", "revenue", "review", "revolution", "rhythm", "rice", "rich", "rid",
            "ride", "rifle", "right", "ring", "rise", "risk", "river", "road", "rock", "role",
            "roll", "romantic", "roof", "room", "root", "rope", "rose", "rough", "roughly", "round",
            "route", "routine", "row", "rub", "rule", "run", "running", "rural", "rush", "russian",

            // Adding S words
            "sacred", "sad", "safe", "safety", "sail", "sake", "salad", "salary", "sale", "sales",
            "salt", "same", "sample", "sanction", "sand", "satellite", "satisfaction", "satisfy",
            "sauce", "save", "saving", "say", "scale", "scandal", "scared", "scenario", "scene",
            "schedule", "scheme", "scholar", "scholarship", "school", "science", "scientific",
            "scientist", "scope", "score", "scream", "screen", "script", "sea", "search", "season",
            "seat", "second", "secret", "secretary", "section", "sector", "secure", "security",
            "see", "seed", "seek", "seem", "segment", "seize", "select", "selection", "self",
            "sell", "senate", "senator", "send", "senior", "sense", "sensitive", "sentence",
            "separate", "sequence", "series", "serious", "seriously", "serve", "service", "session",
            "set", "setting", "settle", "settlement", "seven", "several", "severe", "sex", "sexual",
            "shade", "shadow", "shake", "shall", "shape", "share", "sharp", "she", "sheet", "shelf",
            "shell", "shelter", "shift", "shine", "ship", "shirt", "shock", "shoe", "shoot",
            "shooting", "shop", "shopping", "shore", "short", "shortly", "shot", "should", "shoulder",
            "shout", "show", "shower", "shrug", "shut", "sick", "side", "sigh", "sight", "sign",
            "signal", "significance", "significant", "significantly", "silence", "silent", "silver",
            "similar", "similarly", "simple", "simply", "sin", "since", "sing", "singer", "single",
            "sink", "sir", "sister", "sit", "site", "situation", "six", "size", "ski", "skill",
            "skin", "sky", "slave", "sleep", "slice", "slide", "slight", "slightly", "slip", "slow",
            "slowly", "small", "smart", "smell", "smile", "smoke", "smooth", "snap", "snow", "so",
            "soap", "soccer", "social", "society", "soft", "software", "soil", "solar", "soldier",
            "solid", "solution", "solve", "some", "somebody", "somehow", "someone", "something",
            "sometimes", "somewhat", "somewhere", "son", "song", "soon", "sophisticated", "sorry",
            "sort", "soul", "sound", "soup", "source", "south", "southern", "soviet", "space",
            "spanish", "speak", "speaker", "special", "specialist", "species", "specific",
            "specifically", "speech", "speed", "spend", "spending", "spin", "spirit", "spiritual",
            "split", "spokesman", "sport", "spot", "spread", "spring", "square", "squeeze",
            "stability", "stable", "staff", "stage", "stair", "stake", "stand", "standard",
            "standing", "star", "stare", "start", "state", "statement", "station", "statistics",
            "status", "stay", "steady", "steal", "steel", "step", "stick", "still", "stir",
            "stock", "stomach", "stone", "stop", "storage", "store", "storm", "story", "straight",
            "strange", "stranger", "strategic", "strategy", "stream", "street", "strength",
            "strengthen", "stress", "stretch", "strike", "string", "strip", "stroke", "strong",
            "strongly", "structure", "struggle", "student", "studio", "study", "stuff", "stupid",
            "style", "subject", "submit", "subsequent", "substance", "substantial", "succeed",
            "success", "successful", "successfully", "such", "sudden", "suddenly", "sue", "suffer",
            "sufficient", "sugar", "suggest", "suggestion", "suicide", "suit", "summer", "summit",
            "sun", "super", "supply", "support", "supporter", "suppose", "supposed", "supreme",
            "sure", "surely", "surface", "surgery", "surprise", "surprised", "surprising",
            "surprisingly", "surround", "survey", "survival", "survive", "survivor", "suspect",
            "sustain", "swear", "sweep", "sweet", "swim", "swing", "switch", "symbol", "symptom",
            "system",

            // Adding T words
            "table", "tablespoon", "tactic", "tail", "take", "tale", "talent", "talk", "tall",
            "tank", "tap", "tape", "target", "task", "taste", "tax", "taxpayer", "tea", "teach",
            "teacher", "teaching", "team", "tear", "teaspoon", "technical", "technique",
            "technology", "teen", "teenager", "telephone", "telescope", "television", "tell",
            "temperature", "temporary", "ten", "tend", "tendency", "tennis", "tension", "tent",
            "term", "terms", "terrible", "territory", "terror", "terrorism", "terrorist", "test",
            "testify", "testimony", "testing", "text", "than", "thank", "thanks", "that", "theater",
            "their", "them", "theme", "themselves", "then", "theory", "therapy", "there",
            "therefore", "these", "they", "thick", "thin", "thing", "think", "thinking", "third",
            "thirty", "this", "thorough", "thoroughly", "those", "though", "thought", "thousand",
            "threat", "threaten", "three", "throat", "through", "throughout", "throw", "thus",
            "ticket", "tie", "tight", "time", "tiny", "tip", "tire", "tired", "tissue", "title",
            "to", "tobacco", "today", "toe", "together", "tomato", "tomorrow", "tone", "tongue",
            "tonight", "too", "tool", "tooth", "top", "topic", "toss", "total", "totally", "touch",
            "tough", "tour", "tourist", "tournament", "toward", "towards", "tower", "town", "toy",
            "trace", "track", "trade", "tradition", "traditional", "traffic", "tragedy", "trail",
            "train", "training", "transfer", "transform", "transformation", "transition",
            "translate", "transportation", "travel", "treat", "treatment", "treaty", "tree",
            "tremendous", "trend", "trial", "tribe", "trick", "trip", "troop", "trouble", "truck",
            "true", "truly", "trust", "truth", "try", "tube", "tunnel", "turn", "tv", "twelve",
            "twenty", "twice", "twin", "two", "type", "typical", "typically",
        
        
    ]
    
    func getRandomWord() -> String {
        return englishWords.randomElement() ?? "Understanding"
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentCloudKitContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentCloudKitContainer(name: "Etana")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

