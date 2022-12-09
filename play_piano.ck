//piano.ck

Tool tool;
BPM bpm;
bpm.tempo(60);
bpm.wn => dur wn;
bpm.hn => dur hn;
bpm.dhn => dur dhn;
bpm.qn => dur qn;
bpm.dqn => dur dqn;
bpm.en => dur en;
bpm.den => dur den;
bpm.stn => dur stn;

1 => float volume;

//60() 62() 64(?) 65(?) 67(?) 69(?) 71(?)
//C4   D4    E4   F4    G4     A4    B4
[
"A4", "E4", "E4", "E4", "B4", "E4", //6
"A4", "E4", "E4", "B4", "B4", "D4", "E4", "E4", "E4", "E5", "E4", //11
"D4", "E4", "F4", "F4", "B3", "B4", "D4", "E4", "F4", "F4", "F4", //11
"D4", "D4", "E4", "E4", "F4", "B3", "B3", "D4", "E4", "A3", "A3", //11
"A3", "E4", "B3", "E4", "E4", "E4", "E4", //7
"A3", "E4", "G3", "G3", "G3", "E4", "E4", "E4", //8
"D4", "D4", "E4", "E4", "F4", "B3", "B3", "D4", "D4", "E4", "E4", "F4", "F4", "F4", "F4", //15
"D4", "D4", "E4", "E4", "F4", "B3", "C4", "D4", "D4", "E4", //10
"D4", "D4", "D4", "D4", "D4", "D4", "D4", "D4", "F4", "F4", "F4", "F4", "F4", "F4", "F4", "F4", "B3", "B3", "B3", "B3", "B3", "B3", "B3", "B3", "C4", "C4", "C4", "C4", "C4", "C4", "C4", //31
"D4", "D4", "D4", "D4", "D4", "D4", "D4", "D4", "F4", "F4", "F4", "F4", "F4", "F4", "F4", "F4", "B3", "B3", "B3", "B3", "B3", "B3", "B3", "B3", "C4", "C4", "C4", "C4", "C4"] @=> string melody2[]; //29

[
wn, dhn, den, stn, wn, wn, //6
wn, hn, den, stn, qn, wn, hn, en, en, en, en, //11
hn, hn, dqn, en, dqn, en, hn, hn, dhn, en, en, //11
dqn, en, dqn, en, hn, dqn, en, hn, hn, wn, wn, //11
wn, wn, wn, dqn, en, dqn, en, //7
wn, wn, dhn, en, en, dqn, en, hn, //8 0
dqn, en, dqn, en, hn, dqn, en, dqn, en, dqn, en, dqn, en, dqn, en, //15
dqn, en, dqn, en, hn, dqn, en, dqn, en, hn, //10
en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, qn, //31
en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, hn] @=> dur durs_bass2[]; //29






[
dhn, qn, dhn, stn, stn, en, wn, wn, //8
dhn, en, en, dhn, stn, stn, en, wn, wn, //9
qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, //16
qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, hn, qn, qn, qn, qn, qn, qn, qn, qn, //19
qn, qn, qn, qn, qn, qn, qn, stn, stn, en, qn, qn, qn, qn, qn, qn, qn, qn, //18
qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, //16
qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, //16
qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, //12
qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, //16
qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, qn, hn //15
] @=> dur durs1[];

//C D E F G A B
[
"G3","C4","A3","G3","C4","B3","G3","G3", //8
"G3","G3","A3","A3","G3","C4","B3","G3","A3", //9
"G3","F3","G3","G3","B3","A3","F3","F3","A3","A3","G3","G4","G3","G3","G3","G3", //16
"A3","A3","A3","A3","A3","A3","F3","F3","G3","F3","G3","G3","G3","G3","G3","G3","G3","G3","G3", //19
"G3","G3","G3","G3","A3","A3","A3","A3","E4","D4","F3","F3","F3","F3","G3","G3","G3","G3", //18
"G3","G3","G3","G3","A3","A3","G3","G3","A3","A3","A3","A3","B3","B3","B3","B3", //16
"B3","B3","A3","A3","C4","B3","F3","F3","B3","B3","A3","A3","C4","C4","C4","C4", //16
"B3","B3","A3","A3","C4","C4","E4","E4","B3","B3","A3","A3", //12
"A3","A3","A3","A3","A3","A3","A3","A3","A3","A3","A3","A3","B3","B3","B3","B3", //16
"A3","A3","A3","A3","B3","B3","B3","B3","A3","A3","A3","A3","G3","G3","G3" //15
] @=> string theme1[];

[
"D4","REST","B3","B3","REST","REST","A3","B3", //8
"D4","REST","REST","B3","B3","REST","REST","A3","G3", //9
"A3","A3","B3","B3","C4","C4","A3","C4","C4","C4","A3","REST","C4","C4","C4","C4", //16
"C4","C4","G3","G3","C4","C4","C4","C4","A3","A3","B3","D4","D4","D4","D4","D4","D4","D4","D4", //19
"D4","D4","D4","D4","B3","B3","B3","B3","REST","REST","A3","A3","A3","A3","B3","B3","D4","B3", //18
"D4","D4","D4","D4","D4","D4","D4","D4","C4","C4","C4","C4","D4","D4","D4","D4", //16
"C4","C4","D4","D4","E4","C4","A3","A3","C4","C4","D4","D4","E4","E4","E4","E4", //16
"C4","C4","D4","D4","E4","E4","F4","F4","C4","C4","D4","D4", //12
"C4","C4","C4","C4","C4","C4","C4","C4","C4","C4","C4","C4","D4","D4","D4","D4", //16
"C4","C4","C4","C4","C4","C4","C4","C4","C4","C4","C4","C4","B3","B3","B3" //15
] @=> string theme2[];

[
"E4","REST","D4","C4","REST","REST","C4","D4", //8
"E4","REST","REST","D4","D4","REST","REST","C4","D4", //9
"C4","C4","D4","D4","E4","E4","E4","E4","F4","F4","D4","G4","E4","E4","E4","E4", //16
"F4","F4","D4","D4","E4","E4","E4","E4","C4","C4","D4","E4","E4","E4","E4","E4","E4","E4","E4", //19
"E4","E4","E4","E4","D4","D4","D4","D4","REST","REST","C4","C4","C4","C4","D4","D4","G4","D4", //18
"E4","E4","E4","E4","D4","D4","D4","D4","F4","F4","F4","F4","G4","G4","G4","G4", //16
"F4","F4","G4","G4","A4","E4","E4","E4","F4","F4","G4","G4","A4","A4","B4","A4", //16
"F4","F4","G4","G4","B4","B4","B4","B4","F4","F4","G4","G4", //12
"F4","F4","F4","F4","E4","E4","E4","E4","F4","F4","F4","F4","G4","G4","G4","G4", //16
"E4","F4","F4","F4","E4","E4","E4","E4","F4","F4","F4","F4","D4","D4","D4" //15
] @=> string theme3[];

[
"REST","REST","REST","REST","REST","REST","REST","REST", //8
"REST","REST","REST","REST","REST","REST","REST","REST","REST", //9
"REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST", //16
"REST","REST","REST","REST","REST","REST","E4","E4","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST", //19
"REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST", //18
"REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST","REST", //16
"A4","A4","B4","B4","C5","REST","E4","E4","REST","REST","B4","B4","C5","C5","B4","B4", //16
"A4","A4","B4","B4","C5","C5","E5","E5","REST","REST","REST","REST", //12
"REST","REST","REST","REST","A4","A4","A4","A4","A4","A4","A4","A4","A4","A4","A4","A4", //16
"A4","A4","A4","A4","A4","A4","A4","A4","A4","A4","A4","A4","E4","E4","E4" //15
] @=> string theme4[];


Rhodey s1 => dac;
Rhodey s2 => dac;
Rhodey s3 => dac;
Rhodey s4 => dac;
[s1,s2,s3,s4] @=> Rhodey piano[];

Rhodey second_piano => dac;

spork ~ tool.play(s1, theme1, durs1);
spork ~ tool.play(s2, theme2, durs1); 
spork ~ tool.play(s3, theme3, durs1);
spork ~ tool.play(s4, theme4, durs1);
spork ~ tool.play(second_piano, melody2, durs_bass2);

qn * 160 => now;