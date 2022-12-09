public class Tool {
    
    fun void play(StkInstrument instrument, string notes[], dur durs[]) {
        for (0 => int i; i < notes.size(); i++)
            playnote(instrument, notes[i], durs[i]);
    }
    
    fun void playnote(StkInstrument instrument, string note, dur duration) {

        if (note != "REST"){
            Std.mtof(ntom(note)) => instrument.freq;
            1 => instrument.noteOn;
        }
        //duration => now;
        duration * (9.0/10.0) => now;
        1 => instrument.noteOff;
        duration * (1.0/10.0) => now;
    }
    
    fun int ntom(string name) { // note name to MIDI number
        [21,23,12,14,16,17,19] @=> int notes[]; // A0,B0,C0,D0,E0,F0,G0
        name.charAt(0) - 65 => int base; // A=0,B=1,C=2,D=3,E=4,F=5,G=7
        notes[base] => int note;
        if (0 <= base && base <= 6) {
            if (name.charAt(1) == '#' || name.charAt(1) == 's') // sharp
                notes[base] + 1 => note;
            if (name.charAt(1) == 'b' || name.charAt(1) == 'f') // flat
                notes[base] - 1 => note;
        }
        else
            <<< "Illegal Note Name!" >>>;
        name.charAt(name.length()-1) - 48 => int oct; // 0, 1, 2, ..., 9
        if (0 <= oct && oct <= 9) {
            12 * oct +=> note;
            return note;
        }
        else
            <<< "Illegal Octave!" >>>;
    }
    
    //
    
    fun void play_voice(StkInstrument instrument, Envelope env, string notes[], dur durs[]) {
        for (0 => int i; i < notes.size(); i++)
            playnote_voice(instrument, env, notes[i], durs[i]);
    }
    
    fun void playnote_voice(StkInstrument instrument, Envelope env,string note, dur duration) {
        
        if (note != "REST"){
            Std.mtof(ntom(note)) => instrument.freq;

            1 => env.keyOn;  
            1 => instrument.noteOn;

        }
        //duration => now;
        duration * (9.0/10.0) => now;

        1 => env.keyOff;  
        1 => instrument.noteOff;

        duration * (1.0/10.0) => now;
    }
    
    fun int ntom(string name) { // note name to MIDI number
        [21,23,12,14,16,17,19] @=> int notes[]; // A0,B0,C0,D0,E0,F0,G0
        name.charAt(0) - 65 => int base; // A=0,B=1,C=2,D=3,E=4,F=5,G=7
        notes[base] => int note;
        if (0 <= base && base <= 6) {
            if (name.charAt(1) == '#' || name.charAt(1) == 's') // sharp
                notes[base] + 1 => note;
            if (name.charAt(1) == 'b' || name.charAt(1) == 'f') // flat
                notes[base] - 1 => note;
        }
        else
            <<< "Illegal Note Name!" >>>;
        name.charAt(name.length()-1) - 48 => int oct; // 0, 1, 2, ..., 9
        if (0 <= oct && oct <= 9) {
            12 * oct +=> note;
            return note;
        }
        else
            <<< "Illegal Octave!" >>>;
    }
    
}


// ___
// [ 
// "F4","G4","A4","F4",            "F4","G4","A4","F4",
// "A4","Bb4","C5",                "A4","Bb4","C5",
// "C5","D5","C5","Bb4","A4","F4", "C5","D5","C5","Bb4","A4","F4",
// "F4","C4","F4",                 "F4","C4","F4"
// ] @=> string melody[];