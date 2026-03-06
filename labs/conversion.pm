// PRISM model for conversational agent conversion DTMC
// States: browsing, engaged, converted, abandoned
// Initial state: browsing

dtmc

module conversion
  s : [0..3] init 0;  // 0=browsing, 1=engaged, 2=converted, 3=abandoned

  // Transition probabilities
  // From browsing (0): p1->engaged, p2->abandoned
  // p1 = 0.8 (to engaged), p2 = 0.2 (to abandoned)
  [] s=0 -> 0.8 : (s'=1) + 0.2 : (s'=3);

  // From engaged (1): p3->converted, p4->abandoned, p5->browsing
  // p3 = 0.5 (to converted), p4 = 0.2 (to abandoned), p5 = 0.3 (to browsing)
  [] s=1 -> 0.5 : (s'=2) + 0.2 : (s'=3) + 0.3 : (s'=0);

  // Absorbing states
  [] s=2 -> (s'=2);  // converted stays converted
  [] s=3 -> (s'=3);  // abandoned stays abandoned
endmodule

// Labels for states
label "browsing" = (s=0);
label "engaged" = (s=1);
label "converted" = (s=2);
label "abandoned" = (s=3);
