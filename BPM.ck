public class BPM { // Beats Per Minute
		static dur wn; // (whole note)
		static dur hn; // (half note)
		static dur dhn; // (dotted half note)
        static dur qn; // (quarter note)
		static dur dqn; // (dotted quarter note)
        static dur en; // (eighth note)
		static dur den; // (dotted eighth note)
        static dur stn; // (sixteenth note)
    

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

