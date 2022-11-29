public class BPM { // Beats Per Minute
		static dur wn; // ??? (whole note)
		static dur hn; // 2???(half note)
		static dur dhn; // ? 2??? (dotted half note)
        static dur qn; // 4???(quarter note)
		static dur dqn; // ? 4??? (dotted quarter note)
        static dur en; // 8??? (eighth note)
		static dur den; //? 8??? (dotted eighth note)
        static dur stn; // 16??? (sixteenth note)
    

    fun void tempo(float beat) { // beat in BPM
        60.0 / beat => float spb; // seconds per beat  
        spb::second => qn;
				qn * 4.0 => wn;
        qn * 2.0 => hn;
				qn => qn;
        qn / 2.0 => en;
        qn / 4.0 => stn;
				hn + qn => dhn;
				qn + en => dqn;
				en + stn => den;
    }
}