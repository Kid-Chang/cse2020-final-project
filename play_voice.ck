// voice
// https://chuck.stanford.edu/doc/program/ugen_full.html#StkInstrument
// https://m.blog.naver.com/ldk914/221701002041
// https://i.imgur.com/wBRfkeW.png
Clarinet bar => dac;

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

[ 
// 바람에 날려 꽃이 지는 계절에 아직도 너의 손을 잡은 듯 그런 듯해
//"REST","C4","C4","C4","G4","E4","D4","C4",  "REST","C4","A3","C4","D4","D4","REST",
//"REST","C4","C4","C4","G4","E4","D4","C4",  "C4","D4","E4","D4","E4","D4","G3",

//그때는 아직 꽃이 아름다운걸 지금처럼 사무치게 알지 못했어
//"REST","C4","C4","C4","G4","E4","D4","C4",  "REST","C4","A3","C4","D4","D4","REST",
//"REST","C4","C4","C4","G4","E4","D4","C4",  "REST","C4","D4","E4","D4","C4",


//우~ 너의 향기가 바람에 실려오네
//"C5","B4","C5","B4","G4","E4","A4","E4","C4","C4","REST",
//"C5","B4","C5","B4","G4","E4","A4","REST"

//우~ 영원할 줄 알았던 스물다섯 스물하나
"C5","B4","C5","B4","G4","E4","A4","E4","D4","C4","C4","REST",
"A3","C4","D4","E4","B3","C4","B3","C4","REST","REST"
] @=> string notes[];



[
//en,stn,stn,en,qn,en,stn,stn,  en,stn,en,stn,stn,stn,hn,
//en,stn,stn,en,qn,en,stn,en,  qn,en,en,en,en,en,en,

//en,stn,stn,en,qn,en,stn,stn,  en,stn,en,stn,stn,den,en,
//en,stn,stn,en,qn,en,stn,en,  en,en,qn,en,qn,en


//en,en,en,qn,en,en,dqn,den,stn,en,qn,
//en,en,en,qn,en,en,dqn

en,en,en,qn,en,en,dqn,qn,stn,stn,qn,en,
en,en,en,en,qn,qn,stn,hn,hn,hn
] @=> dur durs[];  // D major Scale

tool.play(bar, notes, durs);