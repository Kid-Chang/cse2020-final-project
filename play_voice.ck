// voice
// https://chuck.stanford.edu/doc/program/ugen_full.html#StkInstrument
// https://m.blog.naver.com/ldk914/221701002041
// https://i.imgur.com/wBRfkeW.png
Clarinet bar => dac;
1.0 => bar.gain;

Tool tool;
BPM bpm;
bpm.tempo(60);
bpm.wn => dur wn; // ??? (whole note)
bpm.hn => dur hn; // 2???(half note)
bpm.dhn => dur dhn; // ? 2??? (dotted half note)
bpm.qn => dur qn; // 4???(quarter note)
bpm.dqn => dur dqn; // ? 4??? (dotted quarter note)
bpm.en => dur en; // 8??? (eighth note)
bpm.den => dur den; //? 8??? (dotted eighth note)
bpm.stn => dur stn; // 16??? (sixteenth note)

en + den => dur en_den; // en + den
en + dhn  => dur en_dhn; // en + dhn





[ 
// ??? ?? ?? ?? ??? ??? ?? ?? ?? ? ?? ??
"REST","C4","C4","C4","G4","E4","D4","C4",  "REST","C4","A3","C4","D4","D4","REST",
"REST","C4","C4","C4","G4","E4","D4","C4",  "C4","D4","E4","D4","E4","D4","G3",

//??? ?? ?? ????? ???? ???? ?? ???
"REST","C4","C4","C4","G4","E4","D4","C4",  "REST","C4","A3","C4","D4","D4","REST",
"REST","C4","C4","C4","G4","E4","D4","C4",  "REST","C4","D4","E4","D4","C4",

//?~ ?? ??? ??? ????
"C5","B4","C5","B4","G4","E4","A4","E4","C4","C4","REST",
"C5","B4","C5","B4","G4","E4","A4","REST",

//?~ ??? ? ??? ???? ????
"C5","B4","C5","B4","G4","E4","A4","E4","D4","C4","C4","REST","A3",
"C4","D4","E4","B3","C4","B3","C4","REST","REST",

//??? ??? ? ????? ??? ?? ?? ??? ????
"REST","C4","C4","C4","G4","E4","D4","C4",  "REST","C4","A3","C4","D4","D4","REST",
"REST","C4","C4","C4","G4","E4","D4","C4",  "C4","D4","E4","D4","E4","D4","G3",

//???? ?? ?? ?? ?? ?? ?????? ??? ?? ??? (??? ? ???)
"REST","C4","C4","C4","C4","G4","E4","D4","C4","REST","C4","A3","C4","D4","E4","D4",
"REST","C4","C4","C4","C4","G4","E4","D4","C4","D4","E4","F4","E4","D4","C4",

//?~ ??? ??? ??? ????
"C5","B4","C5","B4","G4","E4","A4","E4","C4","C4","REST",
"C5","B4","C5","B4","G4","E4","A4","REST",

//?~ ??? ? ??? ???? ?? ?
"C5","B4","C5","B4","G4","E4","A4","E4","D4","C4","C4","REST",
"A3","C4","D4","E4","B3","C4","C4",

//?? ???? ?????? ???? ?? ????? ??
"A3","C4","C4","C4","D4","E4","REST","G4","E4","D4","C4","D4","C4","REST","E4",
"F4","E4","E4","D4","D4","C4","C4","A3","E4","D4","REST","E4","G4",

//??? ? ?? ??? ??? ???? ? ??? ? ??
"A4","A4","A4","G4","E4","C4","REST","A4","A4","A4","B4","E4","G4","REST", "G4","G4",
"A4","A4","A4","G4","A4","G4","B4","G4","G4","REST"


] @=> string notes[];




[
en,stn,stn,en,qn,en,stn+en,stn,  en,stn,en,stn,stn,stn,hn,
en,stn,stn,en,qn,en,en,en,  qn,en,en,en,en,en,en,

en,stn,stn,en,qn,en,stn+en,stn,  en,stn,en,stn,stn,den,en+en+en,
en,stn,stn,en,en_den,en,stn,en,  en,en,qn,en,qn,en,

en,en,en,qn,en,en,en+qn,stn+en,stn,qn,qn,
en,en,en,qn,en,en,en+hn,hn,

//?~ ???? ??? ???? ????
en,en,en,qn,en,en,qn,qn,stn,stn,qn,en,en,
en,en,en,qn,en_den,stn,hn,hn,wn,

//??? ??? ? ?????
en,stn,stn,en,qn,en,stn+en,stn,  en,stn,en,stn,en,qn,qn,
en,stn,stn,en,qn,en,en,en,  qn,en,en,en,en,en,en,

//???? ???? ?? ?? ??
en,stn,stn,stn,en,en,den,en,en, en,stn,stn,en,stn,en,qn+den,
en,stn,en,stn,en,stn,den,en,en,qn,qn,en,stn,en,den,

//?~??? ???
en,en,en,qn,en,en,dqn,den,stn,qn,qn,
en,en,en,qn,en,en,en+hn+qn,qn,

//?~????
en,en,en,qn,en,en,qn,qn,stn,stn,qn,en,
en,en,en,en,qn,en+den,stn,

//?? ???? ?? ????
stn,en,en,en,en,den,qn, stn,en,en,en,en,den,den, stn,
en,stn,en,en,en,en,en,stn,en,den+qn,qn,en,en,

//??? ??? ???
en,stn,en,en,en,den,qn, en,en,en,stn,den,en,en, stn,stn,
en,en,en,stn,en,den,en,en, hn,hn

] @=> dur durs[];  // D major Scale

tool.play(bar, notes, durs);