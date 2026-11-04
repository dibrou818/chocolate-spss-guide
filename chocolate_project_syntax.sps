* =====================================================================.
* I FEEL LIKE CHOCOLATE TODAY - full syntax for the SPSS group project.
* Open "Dataset Group Project SPSS.sav" first, then run blocks in order
* (select a block in the Syntax Editor and press the green Run arrow).
* =====================================================================.

* ---------- PART A1. Rename the socio-demographic variables ----------.
RENAME VARIABLES (q42 q4301 q44 q46 q47 q48 q49 q50 =
  gender age living education occupation native_lang province area).

* ---------- PART A2. Variable labels ----------.
VARIABLE LABELS
  subject 'Respondent ID'
  Lang 'Language of the survey'
  feel1 'Eat chocolate when feeling: Happy'
  feel2 'Eat chocolate when feeling: Joyful'
  feel3 'Eat chocolate when feeling: Dreary'
  feel4 'Eat chocolate when feeling: Worried'
  feel5 'Eat chocolate when feeling: Relaxed'
  feel6 'Eat chocolate when feeling: Exceptional'
  feel7 'Eat chocolate when feeling: Ugly'
  feel8 'Eat chocolate when feeling: Cheerful'
  feel9 'Eat chocolate when feeling: Energetic'
  feel10 'Eat chocolate when feeling: Cool'
  feel11 'Eat chocolate when feeling: Bored'
  feel12 'Eat chocolate when feeling: Irritated'
  feel13 'Eat chocolate when feeling: Stressed'
  feel14 'Eat chocolate when feeling: Special'
  feel15 'Eat chocolate when feeling: Lonely'
  feel16 'Eat chocolate when feeling: Playful'
  feel17 'Eat chocolate when feeling: Depressed'
  freq1 'Frequency: chocolate'
  freq2 'Frequency: candy/sweets'
  freq3 'Frequency: salty snacks'
  freq4 'Frequency: cookies'
  att1 'Attractiveness: chocolate'
  att2 'Attractiveness: candy/sweets'
  att3 'Attractiveness: salty snacks'
  att4 'Attractiveness: cookies'
  f0401 'Fit time: during breakfast'
  f0402 'Fit time: between breakfast and lunch'
  f0403 'Fit time: during lunch'
  f0404 'Fit time: between lunch and dinner'
  f0405 'Fit time: during dinner'
  f0406 'Fit time: after dinner'
  f0407 'Fit time: late at night'
  f0501 'Fit occasion: while working/during lessons'
  f0502 'Fit occasion: after work/school'
  f0503 'Fit occasion: during breaks at school/work'
  f0504 'Fit occasion: at home, break in the week'
  f0506 'Fit occasion: not at home, weekend/holidays'
  f0508 'Fit occasion: when I am on my own'
  f0601 'Buy: small supermarket'
  f0602 'Buy: large supermarket'
  f0603 'Buy: vending machine'
  f0604 'Buy: bookshop'
  f0605 'Buy: petrol station'
  f0606 'Buy: night shop'
  f0607 'Buy: other'
  f0701 'It is easy for me not to eat chocolate'
  f0702 'It is easy for me to control the amount of chocolate I eat'
  f0703 'If I want, I can easily say no to chocolate'
  mot1 'Why: as a habit'
  mot2 'Why: it is a healthy snack'
  mot3 'Why: to kill hunger between meals'
  mot4 'Why: pure indulgence'
  mot5 'Why: to share good moments with friends'
  mot6 'Why: no reason needed, always and everywhere'
  mot7 'Why: as a dessert after lunch/dinner'
  mot8 'Why: to kill time'
  mot9 'Why: when I am lonely'
  g1 'After eating: worried about my health'
  g2 'After eating: guilty'
  g3 'After eating: ashamed'
  g4 'After eating: very satisfied/happy'
  g5 'After eating: full of joy'
  gender 'Gender'
  age 'Age'
  q4501 'Number of people in household (raw text)'
  living 'Living situation'
  education 'Highest education'
  occupation 'Occupation'
  native_lang 'Native language'
  province 'Province'
  area 'Living area'.

* ---------- PART A3. Value labels ----------.
VALUE LABELS Lang 1 'Dutch' 2 'French'
 /feel1 TO feel17 1 'Very unfrequently' 7 'Very frequently'
 /freq1 TO freq4 1 'Never' 2 'A couple of times a year' 3 'A couple of times a month'
   4 'Weekly' 5 'A couple of times a week' 6 'Daily' 7 'More than once a day'
 /att1 TO att4 1 'Not at all attractive' 2 'Not attractive' 3 'Rather not attractive'
   4 'Neutral' 5 'Rather attractive' 6 'Attractive' 7 'Very attractive'
 /f0401 TO f0508 1 'Does not fit at all' 4 'Neutral' 7 'Fits very well'
 /f0601 TO f0607 1 'Never' 4 'Happens from time to time' 7 'Almost always'
 /f0701 TO f0703 1 'Completely disagree' 4 'Neutral' 7 'Completely agree'
 /mot1 TO mot9 0 'Not applicable to me' 1 'Applicable to me'
 /g1 TO g5 1 'Never' 4 'Happens from time to time' 7 'Almost always'
 /gender 1 'Male' 2 'Female'
 /living 1 'With parents/family' 2 'On my own, no kids' 3 'On my own, with kids'
   4 'With partner, no kids' 5 'With partner, with kids' 6 'Other'
 /education 1 'No education' 2 'Primary school' 3 'Secondary school, unfinished'
   4 'Secondary school, finished' 5 'Professional bachelor' 6 'Master, not at university'
   7 'Master, at university' 8 'Master after master/PhD' 9 'Other'
 /occupation 1 'Student' 2 'Blue collar worker' 3 'White collar, not management'
   4 'Civil servant' 5 'Middle/top management' 6 'Self-employed' 7 'Unemployed'
   8 'Retired' 9 'Housewife/-man' 10 'Other'
 /native_lang 1 'Dutch' 2 'French' 3 'Bilingual (Dutch+French)' 4 'Other'
 /province 1 'West-Flanders' 2 'East-Flanders' 3 'Antwerp' 4 'Limburg'
   5 'Flemish Brabant' 6 'Walloon Brabant' 7 'Hainaut' 8 'Namur' 9 'Liege' 10 'Luxembourg'
 /area 1 'Big city' 2 'Medium sized city' 3 'Small city' 4 'Village' 5 'Countryside' 6 'Other'.

* ---------- PART A4. Measurement levels ----------.
VARIABLE LEVEL subject Lang mot1 TO mot9 gender living occupation native_lang province area (NOMINAL)
  /education (ORDINAL)
  /feel1 TO feel17 freq1 TO att4 f0401 TO f0703 g1 TO g5 age (SCALE).

* ---------- PART A5. Impossible values -> missing ----------.
* freq3 has one value 8 and f0502 one value 9 on a 1-7 scale.
MISSING VALUES freq3 (8) /f0502 (9).

* Household size is a text variable: convert it to a clean numeric variable.
COMPUTE hhsize = NUMBER(q4501, F8.0).
IF (q4501 = '1 (me)') hhsize = 1.
IF (q4501 = '4 + dog') hhsize = 4.
IF (q4501 = 'my husband and one child of 17 months') hhsize = 3.
IF (q4501 = '2 (child and I)') hhsize = 2.
IF (q4501 = '3 myself included') hhsize = 3.
IF (q4501 = '4 ( 5 in total, me included )') hhsize = 5.
IF (q4501 = '2 (me and partner)') hhsize = 2.
IF (q4501 = '3, when I am home') hhsize = 3.
IF (q4501 = 'four') hhsize = 4.
IF (q4501 = '2 me included') hhsize = 2.
IF (q4501 = 'no one left, except my boyfriend') hhsize = 2.
IF (q4501 = '3 fulltime + myself in the weekend') hhsize = 3.
* 0 people is impossible (the respondent is included).
RECODE hhsize (0 = SYSMIS).
VARIABLE LABELS hhsize 'Number of people in household (cleaned)'.
VARIABLE LEVEL hhsize (SCALE).
FORMATS hhsize (F2.0).
EXECUTE.

* Outlier check (boxplots) for age and household size.
EXAMINE VARIABLES=age hhsize /PLOT BOXPLOT /STATISTICS DESCRIPTIVES EXTREME.

* ---------- PART A6. Reliability of the summated scales ----------.
RELIABILITY /VARIABLES=feel1 feel2 feel5 feel6 feel8 feel9 feel10 feel14 feel16
  /SCALE('Positive feelings - test') ALL /MODEL=ALPHA /STATISTICS=CORR /SUMMARY=TOTAL.
RELIABILITY /VARIABLES=feel1 feel2 feel5 feel6 feel8 feel9 feel14 feel16
  /SCALE('Positive feelings - final') ALL /MODEL=ALPHA /SUMMARY=TOTAL.
RELIABILITY /VARIABLES=feel3 feel4 feel7 feel11 feel12 feel13 feel15 feel17
  /SCALE('Negative feelings') ALL /MODEL=ALPHA /STATISTICS=CORR /SUMMARY=TOTAL.
RELIABILITY /VARIABLES=f0701 f0702 f0703
  /SCALE('Self-control') ALL /MODEL=ALPHA /STATISTICS=CORR /SUMMARY=TOTAL.
RELIABILITY /VARIABLES=g1 g2 g3 g4 g5
  /SCALE('Health concern - 5 items, raw') ALL /MODEL=ALPHA /STATISTICS=CORR /SUMMARY=TOTAL.
RELIABILITY /VARIABLES=g1 g2 g3
  /SCALE('Health concern - final') ALL /MODEL=ALPHA /STATISTICS=CORR /SUMMARY=TOTAL.

* ---------- PART A7. Create the summated scales ----------.
COMPUTE posfeel = MEAN(feel1, feel2, feel5, feel6, feel8, feel9, feel14, feel16).
COMPUTE negfeel = MEAN(feel3, feel4, feel7, feel11, feel12, feel13, feel15, feel17).
COMPUTE selfcont = MEAN(f0701, f0702, f0703).
COMPUTE health = MEAN(g1, g2, g3).
VARIABLE LABELS posfeel 'Positive feelings scale (mean of 8 items)'
  /negfeel 'Negative feelings scale (mean of 8 items)'
  /selfcont 'Self-control scale (mean of 3 items)'
  /health 'Health concern scale (mean of g1-g3)'.
VARIABLE LEVEL posfeel negfeel selfcont health (SCALE).
FORMATS posfeel negfeel selfcont health (F4.2).
EXECUTE.

* ---------- PART A8. The 3 health concern segments (tertiles) ----------.
* Same result as Visual Binning > Equal percentiles, 2 cutpoints, reverse scale.
RECODE health (LOWEST THRU 2.34 = 3) (2.35 THRU 3.67 = 2) (3.68 THRU HIGHEST = 1) INTO seg.
VARIABLE LABELS seg 'Health concern segment'.
VALUE LABELS seg 1 'High health concern' 2 'Medium health concern' 3 'Low health concern'.
VARIABLE LEVEL seg (ORDINAL).
FORMATS seg (F1.0).
EXECUTE.
FREQUENCIES VARIABLES=seg.

* ===================== PART B. RESEARCH QUESTIONS =====================.

* ---------- RQ1. Whole dataset. IV = seg (3 groups) ----------.
* Metric DVs -> one-way ANOVA (+ Levene, Welch, post hoc).
ONEWAY age hhsize f0401 f0402 f0403 f0404 f0405 f0406 f0407
  f0501 f0502 f0503 f0504 f0506 f0508
  f0601 f0602 f0603 f0604 f0605 f0606 f0607 BY seg
  /STATISTICS DESCRIPTIVES HOMOGENEITY WELCH
  /PLOT MEANS
  /POSTHOC=TUKEY GH ALPHA(0.05).
* Categorical DVs -> crosstabs + chi-square.
CROSSTABS /TABLES=gender Lang living education occupation native_lang province area
  mot1 mot2 mot3 mot4 mot5 mot6 mot7 mot8 mot9 BY seg
  /STATISTICS=CHISQ
  /CELLS=COUNT EXPECTED COLUMN ASRESID.

* ---------- RQ2. Whole dataset. IV = seg, DV = freq1 and att1 ----------.
ONEWAY freq1 att1 BY seg
  /STATISTICS DESCRIPTIVES HOMOGENEITY WELCH
  /PLOT MEANS
  /POSTHOC=TUKEY GH ALPHA(0.05).

* ---------- RQ3. Subset: high health concern only ----------.
USE ALL.
COMPUTE filter_$ = (seg = 1).
FILTER BY filter_$.
EXECUTE.
T-TEST PAIRS=freq1 freq1 freq1 att1 att1 att1 WITH freq2 freq3 freq4 att2 att3 att4 (PAIRED)
  /CRITERIA=CI(.95).
FILTER OFF.
USE ALL.
EXECUTE.

* ---------- RQ4. Step 1: mean age of the WHOLE dataset ----------.
DESCRIPTIVES VARIABLES=age /STATISTICS=MEAN STDDEV MIN MAX.
* Step 2: one-sample t-test in the high segment, test value = that mean (34.74).
COMPUTE filter_$ = (seg = 1).
FILTER BY filter_$.
EXECUTE.
T-TEST /TESTVAL=34.74 /VARIABLES=age /CRITERIA=CI(.95).
FILTER OFF.
USE ALL.
EXECUTE.

* ---------- RQ5. Subset: high health concern. IV = gender ----------.
COMPUTE filter_$ = (seg = 1).
FILTER BY filter_$.
EXECUTE.
T-TEST GROUPS=gender(1 2) /VARIABLES=selfcont posfeel negfeel /CRITERIA=CI(.95).
FILTER OFF.
USE ALL.
EXECUTE.

* ---------- RQ6. Whole dataset. IV = mot3 (kill hunger between meals) ----------.
T-TEST GROUPS=mot3(1 0) /VARIABLES=att1 selfcont /CRITERIA=CI(.95).

* ---------- Save the cleaned file (send it to your professor!) ----------.
* SAVE OUTFILE='Dataset Group Project SPSS - CLEANED.sav'.
