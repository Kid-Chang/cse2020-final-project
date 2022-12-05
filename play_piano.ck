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


//60() 62() 64(?) 65(?) 67(?) 69(?) 71(?)
//C4   D4    E4   F4    G4     A4    B4
[
"A4", "E4", "E4", "E4", "B4", "E4",
"A4", "E4", "E4", "B4", "B4", "D4", "E4", "E4","E4", "E5", "E4",
"D4", "E4", "F4", "F4", "B3", "B4", "D4", "E4", "F4", "F4", "F4",
"D4", "D4", "E4", "E4", "F4", "B3", "B3", "D4", "E4", "A3", "A3",
"A3", "E4", "B3", "E4", "E4","E4","E4",
"A3", "E4", "G3", "G3", "G3", "E4", "E4", "E4",
"D4", "D4", "E4", "E4", "F4", "B3", "B3", "D4", "D4", "E4", "E4", "F4", "F4", "F4", "F4",
"D4", "D4", "E4", "E4", "F4", "B3", "C4", "D4", "D4", "E4",
"D4", "D4", "D4", "D4", "D4", "D4", "D4", "D4", "F4", "F4", "F4", "F4", "F4", "F4", "F4", "F4", "B3", "B3", "B3", "B3", "B3", "B3", "B3", "B3", "C4", "C4", "C4", "C4", "C4", "C4", "C4",
"D4", "D4", "D4", "D4", "D4", "D4", "D4", "D4", "F4", "F4", "F4", "F4", "F4", "F4", "F4", "F4", "B3", "B3", "B3", "B3", "B3", "B3", "B3", "B3", "C4", "C4", "C4", "C4", "C4"] @=> string bass2[];

[
wn, dhn, den, stn, wn, wn,
wn, hn, den, stn, qn, wn, hn, en, en, en, en,
hn, hn, dqn, en, dqn, en, hn, hn, dhn, en, en,
dqn, en, dqn, en, hn, dqn, en, hn, hn, wn, wn,
wn, wn, wn, dqn, en, dqn, en,
wn, wn, dhn, en, en, dqn, en, hn,
qn, en, dqn, en, hn, dqn, en, dqn, en, dqn, en, dqn, en, dqn, en,
dqn, en, dqn, en, hn, dqn, en, dqn, en, hn,
en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, qn,
en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, en, hn] @=> dur durs_bass2[];



    

Rhodey piano2 => dac;
    
    tool.play(piano2, bass2, durs_bass2);