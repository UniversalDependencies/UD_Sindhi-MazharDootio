# Summary

UD_Sindhi-STB is based on the Universal Sindhi Tree bank (USTB). It is created at Shaheed Zulifqar Ali Bhutto Institute of Science and Technology (SZABIST)
Karachi Sindh Pakistan. The tree bank is applied on different types of Sindhi tree bank to identify the status of Sindhi tokens. Along with UPOS, the Sindhi POS (SPOS)
is also used to tag the Sindhi tokens. Tokens are separated on basis of POS, gender, number, person, morphology and lemma. The pronounciation of each Sindhi token
is shown in English language also.
Results of tagging UPOS and SPOS show proper mapping of both tag sets. All the texts were processed automatically at tokenization, morphological
and chunk level. Then, the full syntactic analysis were perfomed manually by parser. However, all the tagging and parsing processes are validated manually by
trained annotators.
The next version will be more detailed and with more records.

# Introduction

The UD_Sindhi-STB consists of 6870 tokens (107 sentences).
The conversion was done automatically and validated manually.
UPOS tag set is used to annotate the Sindhi text in accordance of Sindhi POS tag set. Table-1 describes the UPOS tag set and its matching with Sindhi POS tag set
with suitable Sindhi words.

UPOS Tag	English Meaning 		Sindhi Tag	Sindhi words
ADJ		    Adjective			صفت		سٺو ، خراب ، وڏو ، ننڍو ، اهم ، خاص ، ٿورو
ADP		    Adposition			حرف جر		جي ، جو ، کي ، تي، سان ، ۾ ، لاءِ
ADV		    Adverb				ظرف		تمام ،  اڳ۾ ، هاڻي ، هينئر ، آهستي
AUX		    Auxiliary			فعل معاون		آهي ، آهين ، آهيون
CCONJ		  Coordinating conjunction	حرف جملو		۽ ، يا ، به ، ڇاڪاڻ ، پر ، ته
DET		    Determiner			ضمير اشارو	هُو ، هوءَ ، اهو ، اهي ، هن ، هنن ، اها
INTJ 		  Interjection			حرف ندا		واھ ! افسوس ! مار ! شل! اڙي! اي!
NOUN		  Noun				اسم		گهر ، گلاس ،  سال ،  قيمت ، وقت
NUM		    Numeral				صفت عددي		ڏھ ، سو، هزار، لک ، ڪروڙ ، ارب ، 10 ، 100
PART		  Particle			ظرف ، حرف اضافت	نه ، ڪين ، ڪون ، وارو ، منهنجو، منهنجي
PRON		  Pronoun				ضمير		آءُ ، اسان ، پاڻ ،  مان ، اسين ، تون ، توهان
PROPN		  Proper noun			اسم خاص		تاج محل ، ڪراچي، مڪلي ، سنڌو ،  مهراڻ
PUNCT		  Punctuation			بيهڪ جو نشاني	, : ; .
SCONJ		  Subordinating conjunction	حرف جملو شرطيه	جيڪڏهن ، اگر ، جيڪر ، جي
SYM		    Symbol				نشاني		! ،
VERB		  Verb				فعل		ڇڏيو ، هو ، چيو ، کلي ، ڏسي ، وڻي
X		      Unknown				نامعلوم		، ڀي ، ئي، د


# Acknowledgments
The project was carried out mainly at SZABIST Karachi Sindh Pakistan as a part of my Research study in computer science. Link of project is: https://sindhinlp.com/
I would like to thank Dr. Asim Imdad Wagan for his gaudiance and supervision, Department of Computer Science SZABIST
Karachi Sindh Pakistan for provision of resources and Mohammad Sameer for general support in lab.

## References
Dootio, Mazhar Ali, and Asim Imdad Wagan. "Development of Sindhi text corpus." Journal of King Saud University-Computer and Information Sciences (2019).
Available online since 11 February 2019.

Dootio, Mazhar Ali, and Asim Imdad Wagan. "Syntactic parsing and supervised analysis of Sindhi text."
Journal of King Saud University-Computer and Information Sciences. Vol. 31, No. 1, January 2019. Available online since 24 October 2017

Ali, Mazhar, and Asim Imdad Wagan. "An Analysis of Sindhi Annotated Corpus using Supervised Machine Learning Methods."
Mehran University Research Journal of Engineering and Technology 38, no. 1 (2019): 185-196.

Dootio, Mazhar Ali, and Asim Imdad Wagan. "Unicode-8 based linguistics data set of annotated Sindhi text." Data in brief 19 (2018): 1504-1514.

Dootio, Mazhar Ali, and Asim Imdad Wagan. "Automatic Stemming and Lemmatization Process for Sindhi Text."
Journal of Social Sciences and Interdisciplinary Research (JSSIR), NED University Engineering and Technology Karachi Sindh Pakistan,
Vol.6, Issue. 2 , pages: 19-28, year December 2017

<pre>
=== Machine-readable metadata (DO NOT REMOVE!) ================================
Data available since: UD v2.5
License: CC BY-SA 4.0
Includes text: yes
Genre: nonfiction news
Lemmas: manual native
UPOS: manual native
XPOS: manual native
Features: manual native
Relations: manual native
Contributors: Dootio, Mazhar
Contributing: elsewhere
Contact: mazharaliabro@gmail.com
===============================================================================
</pre>
