%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.gov4dSBoY3

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:21 EST 2020

% Result     : Theorem 0.83s
% Output     : Refutation 0.83s
% Verified   : 
% Statistics : Number of formulae       :  102 ( 232 expanded)
%              Number of leaves         :   27 (  80 expanded)
%              Depth                    :   20
%              Number of atoms          :  985 (2627 expanded)
%              Number of equality atoms :   75 ( 249 expanded)
%              Maximal formula depth    :   16 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k11_relat_1_type,type,(
    k11_relat_1: $i > $i > $i )).

thf(sk_E_type,type,(
    sk_E: $i > $i > $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(d1_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( ( E != C )
              & ( E != B )
              & ( E != A ) ) ) ) )).

thf(zf_stmt_0,axiom,(
    ! [E: $i,C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ E @ C @ B @ A )
    <=> ( ( E != A )
        & ( E != B )
        & ( E != C ) ) ) )).

thf('0',plain,(
    ! [X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( zip_tseitin_0 @ X1 @ X2 @ X3 @ X4 )
      | ( X1 = X2 )
      | ( X1 = X3 )
      | ( X1 = X4 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('1',plain,(
    ! [X12: $i] :
      ( ( k2_tarski @ X12 @ X12 )
      = ( k1_tarski @ X12 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('2',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k1_enumset1 @ X13 @ X13 @ X14 )
      = ( k2_tarski @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(zf_stmt_1,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(zf_stmt_2,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( zip_tseitin_0 @ E @ C @ B @ A ) ) ) )).

thf('3',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i,X9: $i] :
      ( ( zip_tseitin_0 @ X5 @ X6 @ X7 @ X8 )
      | ( r2_hidden @ X5 @ X9 )
      | ( X9
       != ( k1_enumset1 @ X8 @ X7 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('4',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i] :
      ( ( r2_hidden @ X5 @ ( k1_enumset1 @ X8 @ X7 @ X6 ) )
      | ( zip_tseitin_0 @ X5 @ X6 @ X7 @ X8 ) ) ),
    inference(simplify,[status(thm)],['3'])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','4'])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ( zip_tseitin_0 @ X1 @ X0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['1','5'])).

thf('7',plain,(
    ! [X6: $i,X7: $i,X8: $i,X11: $i] :
      ( ( X11
        = ( k1_enumset1 @ X8 @ X7 @ X6 ) )
      | ~ ( zip_tseitin_0 @ ( sk_E @ X11 @ X6 @ X7 @ X8 ) @ X6 @ X7 @ X8 )
      | ( r2_hidden @ ( sk_E @ X11 @ X6 @ X7 @ X8 ) @ X11 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_E @ X1 @ X0 @ X0 @ X0 ) @ ( k1_tarski @ X0 ) )
      | ( r2_hidden @ ( sk_E @ X1 @ X0 @ X0 @ X0 ) @ X1 )
      | ( X1
        = ( k1_enumset1 @ X0 @ X0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k1_enumset1 @ X13 @ X13 @ X14 )
      = ( k2_tarski @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_E @ X1 @ X0 @ X0 @ X0 ) @ ( k1_tarski @ X0 ) )
      | ( r2_hidden @ ( sk_E @ X1 @ X0 @ X0 @ X0 ) @ X1 )
      | ( X1
        = ( k2_tarski @ X0 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X12: $i] :
      ( ( k2_tarski @ X12 @ X12 )
      = ( k1_tarski @ X12 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('12',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k1_enumset1 @ X13 @ X13 @ X14 )
      = ( k2_tarski @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('13',plain,(
    ! [X6: $i,X7: $i,X8: $i,X9: $i,X10: $i] :
      ( ~ ( r2_hidden @ X10 @ X9 )
      | ~ ( zip_tseitin_0 @ X10 @ X6 @ X7 @ X8 )
      | ( X9
       != ( k1_enumset1 @ X8 @ X7 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('14',plain,(
    ! [X6: $i,X7: $i,X8: $i,X10: $i] :
      ( ~ ( zip_tseitin_0 @ X10 @ X6 @ X7 @ X8 )
      | ~ ( r2_hidden @ X10 @ ( k1_enumset1 @ X8 @ X7 @ X6 ) ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ~ ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['12','14'])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ~ ( zip_tseitin_0 @ X1 @ X0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['11','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1
        = ( k2_tarski @ X0 @ X0 ) )
      | ( r2_hidden @ ( sk_E @ X1 @ X0 @ X0 @ X0 ) @ X1 )
      | ~ ( zip_tseitin_0 @ ( sk_E @ X1 @ X0 @ X0 @ X0 ) @ X0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['10','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( sk_E @ X1 @ X0 @ X0 @ X0 )
        = X0 )
      | ( ( sk_E @ X1 @ X0 @ X0 @ X0 )
        = X0 )
      | ( ( sk_E @ X1 @ X0 @ X0 @ X0 )
        = X0 )
      | ( r2_hidden @ ( sk_E @ X1 @ X0 @ X0 @ X0 ) @ X1 )
      | ( X1
        = ( k2_tarski @ X0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['0','17'])).

thf('19',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1
        = ( k2_tarski @ X0 @ X0 ) )
      | ( r2_hidden @ ( sk_E @ X1 @ X0 @ X0 @ X0 ) @ X1 )
      | ( ( sk_E @ X1 @ X0 @ X0 @ X0 )
        = X0 ) ) ),
    inference(simplify,[status(thm)],['18'])).

thf(t14_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( ( k1_relat_1 @ B )
          = ( k1_tarski @ A ) )
       => ( ( k2_relat_1 @ B )
          = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )).

thf(zf_stmt_3,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( v1_relat_1 @ B )
          & ( v1_funct_1 @ B ) )
       => ( ( ( k1_relat_1 @ B )
            = ( k1_tarski @ A ) )
         => ( ( k2_relat_1 @ B )
            = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t14_funct_1])).

thf('20',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf(t146_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k9_relat_1 @ A @ ( k1_relat_1 @ A ) )
        = ( k2_relat_1 @ A ) ) ) )).

thf('21',plain,(
    ! [X24: $i] :
      ( ( ( k9_relat_1 @ X24 @ ( k1_relat_1 @ X24 ) )
        = ( k2_relat_1 @ X24 ) )
      | ~ ( v1_relat_1 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t146_relat_1])).

thf('22',plain,
    ( ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = ( k2_relat_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['20','21'])).

thf('23',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('24',plain,
    ( ( k9_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
    = ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['22','23'])).

thf(d16_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( k11_relat_1 @ A @ B )
          = ( k9_relat_1 @ A @ ( k1_tarski @ B ) ) ) ) )).

thf('25',plain,(
    ! [X22: $i,X23: $i] :
      ( ( ( k11_relat_1 @ X22 @ X23 )
        = ( k9_relat_1 @ X22 @ ( k1_tarski @ X23 ) ) )
      | ~ ( v1_relat_1 @ X22 ) ) ),
    inference(cnf,[status(esa)],[d16_relat_1])).

thf('26',plain,
    ( ( ( k11_relat_1 @ sk_B @ sk_A )
      = ( k2_relat_1 @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup+',[status(thm)],['24','25'])).

thf('27',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('28',plain,
    ( ( k11_relat_1 @ sk_B @ sk_A )
    = ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['26','27'])).

thf(t204_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( r2_hidden @ B @ ( k11_relat_1 @ C @ A ) ) ) ) )).

thf('29',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ~ ( r2_hidden @ X25 @ ( k11_relat_1 @ X26 @ X27 ) )
      | ( r2_hidden @ ( k4_tarski @ X27 @ X25 ) @ X26 )
      | ~ ( v1_relat_1 @ X26 ) ) ),
    inference(cnf,[status(esa)],[t204_relat_1])).

thf('30',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_B ) )
      | ~ ( v1_relat_1 @ sk_B )
      | ( r2_hidden @ ( k4_tarski @ sk_A @ X0 ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('32',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_B ) )
      | ( r2_hidden @ ( k4_tarski @ sk_A @ X0 ) @ sk_B ) ) ),
    inference(demod,[status(thm)],['30','31'])).

thf('33',plain,(
    ! [X0: $i] :
      ( ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ X0 @ X0 @ X0 )
        = X0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k2_tarski @ X0 @ X0 ) )
      | ( r2_hidden @ ( k4_tarski @ sk_A @ ( sk_E @ ( k2_relat_1 @ sk_B ) @ X0 @ X0 @ X0 ) ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['19','32'])).

thf(t8_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( B
            = ( k1_funct_1 @ C @ A ) ) ) ) ) )).

thf('34',plain,(
    ! [X28: $i,X29: $i,X30: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X28 @ X30 ) @ X29 )
      | ( X30
        = ( k1_funct_1 @ X29 @ X28 ) )
      | ~ ( v1_funct_1 @ X29 )
      | ~ ( v1_relat_1 @ X29 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('35',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k2_tarski @ X0 @ X0 ) )
      | ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ X0 @ X0 @ X0 )
        = X0 )
      | ~ ( v1_relat_1 @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ X0 @ X0 @ X0 )
        = ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('37',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('38',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ sk_B )
        = ( k2_tarski @ X0 @ X0 ) )
      | ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ X0 @ X0 @ X0 )
        = X0 )
      | ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ X0 @ X0 @ X0 )
        = ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['35','36','37'])).

thf('39',plain,(
    ! [X0: $i] :
      ( ( ( k1_funct_1 @ sk_B @ sk_A )
       != X0 )
      | ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ X0 @ X0 @ X0 )
        = X0 )
      | ( ( k2_relat_1 @ sk_B )
        = ( k2_tarski @ X0 @ X0 ) ) ) ),
    inference(eq_fact,[status(thm)],['38'])).

thf('40',plain,
    ( ( ( k2_relat_1 @ sk_B )
      = ( k2_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) ) )
    | ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) )
      = ( k1_funct_1 @ sk_B @ sk_A ) ) ),
    inference(simplify,[status(thm)],['39'])).

thf('41',plain,(
    ! [X12: $i] :
      ( ( k2_tarski @ X12 @ X12 )
      = ( k1_tarski @ X12 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('42',plain,
    ( ( ( k2_relat_1 @ sk_B )
      = ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) )
    | ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) )
      = ( k1_funct_1 @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['40','41'])).

thf('43',plain,(
    ( k2_relat_1 @ sk_B )
 != ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('44',plain,
    ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) )
    = ( k1_funct_1 @ sk_B @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['42','43'])).

thf('45',plain,(
    ! [X6: $i,X7: $i,X8: $i,X11: $i] :
      ( ( X11
        = ( k1_enumset1 @ X8 @ X7 @ X6 ) )
      | ( zip_tseitin_0 @ ( sk_E @ X11 @ X6 @ X7 @ X8 ) @ X6 @ X7 @ X8 )
      | ~ ( r2_hidden @ ( sk_E @ X11 @ X6 @ X7 @ X8 ) @ X11 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('46',plain,
    ( ~ ( r2_hidden @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k2_relat_1 @ sk_B ) )
    | ( zip_tseitin_0 @ ( sk_E @ ( k2_relat_1 @ sk_B ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) )
    | ( ( k2_relat_1 @ sk_B )
      = ( k1_enumset1 @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X12: $i] :
      ( ( k2_tarski @ X12 @ X12 )
      = ( k1_tarski @ X12 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('48',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','4'])).

thf('49',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( X1 != X0 )
      | ~ ( zip_tseitin_0 @ X1 @ X2 @ X3 @ X0 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,(
    ! [X0: $i,X2: $i,X3: $i] :
      ~ ( zip_tseitin_0 @ X0 @ X2 @ X3 @ X0 ) ),
    inference(simplify,[status(thm)],['49'])).

thf('51',plain,(
    ! [X0: $i,X1: $i] :
      ( r2_hidden @ X0 @ ( k2_tarski @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['48','50'])).

thf('52',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['47','51'])).

thf('53',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('54',plain,(
    ! [X28: $i,X29: $i,X30: $i] :
      ( ~ ( r2_hidden @ X28 @ ( k1_relat_1 @ X29 ) )
      | ( X30
       != ( k1_funct_1 @ X29 @ X28 ) )
      | ( r2_hidden @ ( k4_tarski @ X28 @ X30 ) @ X29 )
      | ~ ( v1_funct_1 @ X29 )
      | ~ ( v1_relat_1 @ X29 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('55',plain,(
    ! [X28: $i,X29: $i] :
      ( ~ ( v1_relat_1 @ X29 )
      | ~ ( v1_funct_1 @ X29 )
      | ( r2_hidden @ ( k4_tarski @ X28 @ ( k1_funct_1 @ X29 @ X28 ) ) @ X29 )
      | ~ ( r2_hidden @ X28 @ ( k1_relat_1 @ X29 ) ) ) ),
    inference(simplify,[status(thm)],['54'])).

thf('56',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ( r2_hidden @ ( k4_tarski @ X0 @ ( k1_funct_1 @ sk_B @ X0 ) ) @ sk_B )
      | ~ ( v1_funct_1 @ sk_B )
      | ~ ( v1_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['53','55'])).

thf('57',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('58',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('59',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_A ) )
      | ( r2_hidden @ ( k4_tarski @ X0 @ ( k1_funct_1 @ sk_B @ X0 ) ) @ sk_B ) ) ),
    inference(demod,[status(thm)],['56','57','58'])).

thf('60',plain,(
    r2_hidden @ ( k4_tarski @ sk_A @ ( k1_funct_1 @ sk_B @ sk_A ) ) @ sk_B ),
    inference('sup-',[status(thm)],['52','59'])).

thf('61',plain,(
    ! [X25: $i,X26: $i,X27: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X27 @ X25 ) @ X26 )
      | ( r2_hidden @ X25 @ ( k11_relat_1 @ X26 @ X27 ) )
      | ~ ( v1_relat_1 @ X26 ) ) ),
    inference(cnf,[status(esa)],[t204_relat_1])).

thf('62',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ( r2_hidden @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k11_relat_1 @ sk_B @ sk_A ) ) ),
    inference('sup-',[status(thm)],['60','61'])).

thf('63',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('64',plain,
    ( ( k11_relat_1 @ sk_B @ sk_A )
    = ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['26','27'])).

thf('65',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['62','63','64'])).

thf('66',plain,
    ( ( sk_E @ ( k2_relat_1 @ sk_B ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) )
    = ( k1_funct_1 @ sk_B @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['42','43'])).

thf('67',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k1_enumset1 @ X13 @ X13 @ X14 )
      = ( k2_tarski @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('68',plain,(
    ! [X12: $i] :
      ( ( k2_tarski @ X12 @ X12 )
      = ( k1_tarski @ X12 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('69',plain,
    ( ( zip_tseitin_0 @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) )
    | ( ( k2_relat_1 @ sk_B )
      = ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['46','65','66','67','68'])).

thf('70',plain,(
    ( k2_relat_1 @ sk_B )
 != ( k1_tarski @ ( k1_funct_1 @ sk_B @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('71',plain,(
    zip_tseitin_0 @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) @ ( k1_funct_1 @ sk_B @ sk_A ) ),
    inference('simplify_reflect-',[status(thm)],['69','70'])).

thf('72',plain,(
    ! [X0: $i,X2: $i,X3: $i] :
      ~ ( zip_tseitin_0 @ X0 @ X2 @ X3 @ X0 ) ),
    inference(simplify,[status(thm)],['49'])).

thf('73',plain,(
    $false ),
    inference('sup-',[status(thm)],['71','72'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.gov4dSBoY3
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:37:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.83/1.03  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.83/1.03  % Solved by: fo/fo7.sh
% 0.83/1.03  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.83/1.03  % done 798 iterations in 0.578s
% 0.83/1.03  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.83/1.03  % SZS output start Refutation
% 0.83/1.03  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.83/1.03  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.83/1.03  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.83/1.03  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.83/1.03  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.83/1.03  thf(sk_B_type, type, sk_B: $i).
% 0.83/1.03  thf(sk_A_type, type, sk_A: $i).
% 0.83/1.03  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.83/1.03  thf(k11_relat_1_type, type, k11_relat_1: $i > $i > $i).
% 0.83/1.03  thf(sk_E_type, type, sk_E: $i > $i > $i > $i > $i).
% 0.83/1.03  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.83/1.03  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.83/1.03  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.83/1.03  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.83/1.03  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.83/1.03  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.83/1.03  thf(d1_enumset1, axiom,
% 0.83/1.03    (![A:$i,B:$i,C:$i,D:$i]:
% 0.83/1.03     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.83/1.03       ( ![E:$i]:
% 0.83/1.03         ( ( r2_hidden @ E @ D ) <=>
% 0.83/1.03           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.83/1.03  thf(zf_stmt_0, axiom,
% 0.83/1.03    (![E:$i,C:$i,B:$i,A:$i]:
% 0.83/1.03     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.83/1.03       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.83/1.03  thf('0', plain,
% 0.83/1.03      (![X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.83/1.03         ((zip_tseitin_0 @ X1 @ X2 @ X3 @ X4)
% 0.83/1.03          | ((X1) = (X2))
% 0.83/1.03          | ((X1) = (X3))
% 0.83/1.03          | ((X1) = (X4)))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.83/1.03  thf(t69_enumset1, axiom,
% 0.83/1.03    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.83/1.03  thf('1', plain, (![X12 : $i]: ((k2_tarski @ X12 @ X12) = (k1_tarski @ X12))),
% 0.83/1.03      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.83/1.03  thf(t70_enumset1, axiom,
% 0.83/1.03    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.83/1.03  thf('2', plain,
% 0.83/1.03      (![X13 : $i, X14 : $i]:
% 0.83/1.03         ((k1_enumset1 @ X13 @ X13 @ X14) = (k2_tarski @ X13 @ X14))),
% 0.83/1.03      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.83/1.03  thf(zf_stmt_1, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.83/1.03  thf(zf_stmt_2, axiom,
% 0.83/1.03    (![A:$i,B:$i,C:$i,D:$i]:
% 0.83/1.03     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.83/1.03       ( ![E:$i]:
% 0.83/1.03         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.83/1.03  thf('3', plain,
% 0.83/1.03      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i, X9 : $i]:
% 0.83/1.03         ((zip_tseitin_0 @ X5 @ X6 @ X7 @ X8)
% 0.83/1.03          | (r2_hidden @ X5 @ X9)
% 0.83/1.03          | ((X9) != (k1_enumset1 @ X8 @ X7 @ X6)))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.83/1.03  thf('4', plain,
% 0.83/1.03      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i]:
% 0.83/1.03         ((r2_hidden @ X5 @ (k1_enumset1 @ X8 @ X7 @ X6))
% 0.83/1.03          | (zip_tseitin_0 @ X5 @ X6 @ X7 @ X8))),
% 0.83/1.03      inference('simplify', [status(thm)], ['3'])).
% 0.83/1.03  thf('5', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.83/1.03         ((r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.83/1.03          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.83/1.03      inference('sup+', [status(thm)], ['2', '4'])).
% 0.83/1.03  thf('6', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i]:
% 0.83/1.03         ((r2_hidden @ X1 @ (k1_tarski @ X0))
% 0.83/1.03          | (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.83/1.03      inference('sup+', [status(thm)], ['1', '5'])).
% 0.83/1.03  thf('7', plain,
% 0.83/1.03      (![X6 : $i, X7 : $i, X8 : $i, X11 : $i]:
% 0.83/1.03         (((X11) = (k1_enumset1 @ X8 @ X7 @ X6))
% 0.83/1.03          | ~ (zip_tseitin_0 @ (sk_E @ X11 @ X6 @ X7 @ X8) @ X6 @ X7 @ X8)
% 0.83/1.03          | (r2_hidden @ (sk_E @ X11 @ X6 @ X7 @ X8) @ X11))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.83/1.03  thf('8', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i]:
% 0.83/1.03         ((r2_hidden @ (sk_E @ X1 @ X0 @ X0 @ X0) @ (k1_tarski @ X0))
% 0.83/1.03          | (r2_hidden @ (sk_E @ X1 @ X0 @ X0 @ X0) @ X1)
% 0.83/1.03          | ((X1) = (k1_enumset1 @ X0 @ X0 @ X0)))),
% 0.83/1.03      inference('sup-', [status(thm)], ['6', '7'])).
% 0.83/1.03  thf('9', plain,
% 0.83/1.03      (![X13 : $i, X14 : $i]:
% 0.83/1.03         ((k1_enumset1 @ X13 @ X13 @ X14) = (k2_tarski @ X13 @ X14))),
% 0.83/1.03      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.83/1.03  thf('10', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i]:
% 0.83/1.03         ((r2_hidden @ (sk_E @ X1 @ X0 @ X0 @ X0) @ (k1_tarski @ X0))
% 0.83/1.03          | (r2_hidden @ (sk_E @ X1 @ X0 @ X0 @ X0) @ X1)
% 0.83/1.03          | ((X1) = (k2_tarski @ X0 @ X0)))),
% 0.83/1.03      inference('demod', [status(thm)], ['8', '9'])).
% 0.83/1.03  thf('11', plain,
% 0.83/1.03      (![X12 : $i]: ((k2_tarski @ X12 @ X12) = (k1_tarski @ X12))),
% 0.83/1.03      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.83/1.03  thf('12', plain,
% 0.83/1.03      (![X13 : $i, X14 : $i]:
% 0.83/1.03         ((k1_enumset1 @ X13 @ X13 @ X14) = (k2_tarski @ X13 @ X14))),
% 0.83/1.03      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.83/1.03  thf('13', plain,
% 0.83/1.03      (![X6 : $i, X7 : $i, X8 : $i, X9 : $i, X10 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X10 @ X9)
% 0.83/1.03          | ~ (zip_tseitin_0 @ X10 @ X6 @ X7 @ X8)
% 0.83/1.03          | ((X9) != (k1_enumset1 @ X8 @ X7 @ X6)))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.83/1.03  thf('14', plain,
% 0.83/1.03      (![X6 : $i, X7 : $i, X8 : $i, X10 : $i]:
% 0.83/1.03         (~ (zip_tseitin_0 @ X10 @ X6 @ X7 @ X8)
% 0.83/1.03          | ~ (r2_hidden @ X10 @ (k1_enumset1 @ X8 @ X7 @ X6)))),
% 0.83/1.03      inference('simplify', [status(thm)], ['13'])).
% 0.83/1.03  thf('15', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.83/1.03          | ~ (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.83/1.03      inference('sup-', [status(thm)], ['12', '14'])).
% 0.83/1.03  thf('16', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X1 @ (k1_tarski @ X0))
% 0.83/1.03          | ~ (zip_tseitin_0 @ X1 @ X0 @ X0 @ X0))),
% 0.83/1.03      inference('sup-', [status(thm)], ['11', '15'])).
% 0.83/1.03  thf('17', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i]:
% 0.83/1.03         (((X1) = (k2_tarski @ X0 @ X0))
% 0.83/1.03          | (r2_hidden @ (sk_E @ X1 @ X0 @ X0 @ X0) @ X1)
% 0.83/1.03          | ~ (zip_tseitin_0 @ (sk_E @ X1 @ X0 @ X0 @ X0) @ X0 @ X0 @ X0))),
% 0.83/1.03      inference('sup-', [status(thm)], ['10', '16'])).
% 0.83/1.03  thf('18', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i]:
% 0.83/1.03         (((sk_E @ X1 @ X0 @ X0 @ X0) = (X0))
% 0.83/1.03          | ((sk_E @ X1 @ X0 @ X0 @ X0) = (X0))
% 0.83/1.03          | ((sk_E @ X1 @ X0 @ X0 @ X0) = (X0))
% 0.83/1.03          | (r2_hidden @ (sk_E @ X1 @ X0 @ X0 @ X0) @ X1)
% 0.83/1.03          | ((X1) = (k2_tarski @ X0 @ X0)))),
% 0.83/1.03      inference('sup-', [status(thm)], ['0', '17'])).
% 0.83/1.03  thf('19', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i]:
% 0.83/1.03         (((X1) = (k2_tarski @ X0 @ X0))
% 0.83/1.03          | (r2_hidden @ (sk_E @ X1 @ X0 @ X0 @ X0) @ X1)
% 0.83/1.03          | ((sk_E @ X1 @ X0 @ X0 @ X0) = (X0)))),
% 0.83/1.03      inference('simplify', [status(thm)], ['18'])).
% 0.83/1.03  thf(t14_funct_1, conjecture,
% 0.83/1.03    (![A:$i,B:$i]:
% 0.83/1.03     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.83/1.03       ( ( ( k1_relat_1 @ B ) = ( k1_tarski @ A ) ) =>
% 0.83/1.03         ( ( k2_relat_1 @ B ) = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ))).
% 0.83/1.03  thf(zf_stmt_3, negated_conjecture,
% 0.83/1.03    (~( ![A:$i,B:$i]:
% 0.83/1.03        ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.83/1.03          ( ( ( k1_relat_1 @ B ) = ( k1_tarski @ A ) ) =>
% 0.83/1.03            ( ( k2_relat_1 @ B ) = ( k1_tarski @ ( k1_funct_1 @ B @ A ) ) ) ) ) )),
% 0.83/1.03    inference('cnf.neg', [status(esa)], [t14_funct_1])).
% 0.83/1.03  thf('20', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf(t146_relat_1, axiom,
% 0.83/1.03    (![A:$i]:
% 0.83/1.03     ( ( v1_relat_1 @ A ) =>
% 0.83/1.03       ( ( k9_relat_1 @ A @ ( k1_relat_1 @ A ) ) = ( k2_relat_1 @ A ) ) ))).
% 0.83/1.03  thf('21', plain,
% 0.83/1.03      (![X24 : $i]:
% 0.83/1.03         (((k9_relat_1 @ X24 @ (k1_relat_1 @ X24)) = (k2_relat_1 @ X24))
% 0.83/1.03          | ~ (v1_relat_1 @ X24))),
% 0.83/1.03      inference('cnf', [status(esa)], [t146_relat_1])).
% 0.83/1.03  thf('22', plain,
% 0.83/1.03      ((((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k2_relat_1 @ sk_B))
% 0.83/1.03        | ~ (v1_relat_1 @ sk_B))),
% 0.83/1.03      inference('sup+', [status(thm)], ['20', '21'])).
% 0.83/1.03  thf('23', plain, ((v1_relat_1 @ sk_B)),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('24', plain,
% 0.83/1.03      (((k9_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k2_relat_1 @ sk_B))),
% 0.83/1.03      inference('demod', [status(thm)], ['22', '23'])).
% 0.83/1.03  thf(d16_relat_1, axiom,
% 0.83/1.03    (![A:$i]:
% 0.83/1.03     ( ( v1_relat_1 @ A ) =>
% 0.83/1.03       ( ![B:$i]:
% 0.83/1.03         ( ( k11_relat_1 @ A @ B ) = ( k9_relat_1 @ A @ ( k1_tarski @ B ) ) ) ) ))).
% 0.83/1.03  thf('25', plain,
% 0.83/1.03      (![X22 : $i, X23 : $i]:
% 0.83/1.03         (((k11_relat_1 @ X22 @ X23) = (k9_relat_1 @ X22 @ (k1_tarski @ X23)))
% 0.83/1.03          | ~ (v1_relat_1 @ X22))),
% 0.83/1.03      inference('cnf', [status(esa)], [d16_relat_1])).
% 0.83/1.03  thf('26', plain,
% 0.83/1.03      ((((k11_relat_1 @ sk_B @ sk_A) = (k2_relat_1 @ sk_B))
% 0.83/1.03        | ~ (v1_relat_1 @ sk_B))),
% 0.83/1.03      inference('sup+', [status(thm)], ['24', '25'])).
% 0.83/1.03  thf('27', plain, ((v1_relat_1 @ sk_B)),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('28', plain, (((k11_relat_1 @ sk_B @ sk_A) = (k2_relat_1 @ sk_B))),
% 0.83/1.03      inference('demod', [status(thm)], ['26', '27'])).
% 0.83/1.03  thf(t204_relat_1, axiom,
% 0.83/1.03    (![A:$i,B:$i,C:$i]:
% 0.83/1.03     ( ( v1_relat_1 @ C ) =>
% 0.83/1.03       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.83/1.03         ( r2_hidden @ B @ ( k11_relat_1 @ C @ A ) ) ) ))).
% 0.83/1.03  thf('29', plain,
% 0.83/1.03      (![X25 : $i, X26 : $i, X27 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X25 @ (k11_relat_1 @ X26 @ X27))
% 0.83/1.03          | (r2_hidden @ (k4_tarski @ X27 @ X25) @ X26)
% 0.83/1.03          | ~ (v1_relat_1 @ X26))),
% 0.83/1.03      inference('cnf', [status(esa)], [t204_relat_1])).
% 0.83/1.03  thf('30', plain,
% 0.83/1.03      (![X0 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_B))
% 0.83/1.03          | ~ (v1_relat_1 @ sk_B)
% 0.83/1.03          | (r2_hidden @ (k4_tarski @ sk_A @ X0) @ sk_B))),
% 0.83/1.03      inference('sup-', [status(thm)], ['28', '29'])).
% 0.83/1.03  thf('31', plain, ((v1_relat_1 @ sk_B)),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('32', plain,
% 0.83/1.03      (![X0 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_B))
% 0.83/1.03          | (r2_hidden @ (k4_tarski @ sk_A @ X0) @ sk_B))),
% 0.83/1.03      inference('demod', [status(thm)], ['30', '31'])).
% 0.83/1.03  thf('33', plain,
% 0.83/1.03      (![X0 : $i]:
% 0.83/1.03         (((sk_E @ (k2_relat_1 @ sk_B) @ X0 @ X0 @ X0) = (X0))
% 0.83/1.03          | ((k2_relat_1 @ sk_B) = (k2_tarski @ X0 @ X0))
% 0.83/1.03          | (r2_hidden @ 
% 0.83/1.03             (k4_tarski @ sk_A @ (sk_E @ (k2_relat_1 @ sk_B) @ X0 @ X0 @ X0)) @ 
% 0.83/1.03             sk_B))),
% 0.83/1.03      inference('sup-', [status(thm)], ['19', '32'])).
% 0.83/1.03  thf(t8_funct_1, axiom,
% 0.83/1.03    (![A:$i,B:$i,C:$i]:
% 0.83/1.03     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.83/1.03       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.83/1.03         ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.83/1.03           ( ( B ) = ( k1_funct_1 @ C @ A ) ) ) ) ))).
% 0.83/1.03  thf('34', plain,
% 0.83/1.03      (![X28 : $i, X29 : $i, X30 : $i]:
% 0.83/1.03         (~ (r2_hidden @ (k4_tarski @ X28 @ X30) @ X29)
% 0.83/1.03          | ((X30) = (k1_funct_1 @ X29 @ X28))
% 0.83/1.03          | ~ (v1_funct_1 @ X29)
% 0.83/1.03          | ~ (v1_relat_1 @ X29))),
% 0.83/1.03      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.83/1.03  thf('35', plain,
% 0.83/1.03      (![X0 : $i]:
% 0.83/1.03         (((k2_relat_1 @ sk_B) = (k2_tarski @ X0 @ X0))
% 0.83/1.03          | ((sk_E @ (k2_relat_1 @ sk_B) @ X0 @ X0 @ X0) = (X0))
% 0.83/1.03          | ~ (v1_relat_1 @ sk_B)
% 0.83/1.03          | ~ (v1_funct_1 @ sk_B)
% 0.83/1.03          | ((sk_E @ (k2_relat_1 @ sk_B) @ X0 @ X0 @ X0)
% 0.83/1.03              = (k1_funct_1 @ sk_B @ sk_A)))),
% 0.83/1.03      inference('sup-', [status(thm)], ['33', '34'])).
% 0.83/1.03  thf('36', plain, ((v1_relat_1 @ sk_B)),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('37', plain, ((v1_funct_1 @ sk_B)),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('38', plain,
% 0.83/1.03      (![X0 : $i]:
% 0.83/1.03         (((k2_relat_1 @ sk_B) = (k2_tarski @ X0 @ X0))
% 0.83/1.03          | ((sk_E @ (k2_relat_1 @ sk_B) @ X0 @ X0 @ X0) = (X0))
% 0.83/1.03          | ((sk_E @ (k2_relat_1 @ sk_B) @ X0 @ X0 @ X0)
% 0.83/1.03              = (k1_funct_1 @ sk_B @ sk_A)))),
% 0.83/1.03      inference('demod', [status(thm)], ['35', '36', '37'])).
% 0.83/1.03  thf('39', plain,
% 0.83/1.03      (![X0 : $i]:
% 0.83/1.03         (((k1_funct_1 @ sk_B @ sk_A) != (X0))
% 0.83/1.03          | ((sk_E @ (k2_relat_1 @ sk_B) @ X0 @ X0 @ X0) = (X0))
% 0.83/1.03          | ((k2_relat_1 @ sk_B) = (k2_tarski @ X0 @ X0)))),
% 0.83/1.03      inference('eq_fact', [status(thm)], ['38'])).
% 0.83/1.03  thf('40', plain,
% 0.83/1.03      ((((k2_relat_1 @ sk_B)
% 0.83/1.03          = (k2_tarski @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03             (k1_funct_1 @ sk_B @ sk_A)))
% 0.83/1.03        | ((sk_E @ (k2_relat_1 @ sk_B) @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03            (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A))
% 0.83/1.03            = (k1_funct_1 @ sk_B @ sk_A)))),
% 0.83/1.03      inference('simplify', [status(thm)], ['39'])).
% 0.83/1.03  thf('41', plain,
% 0.83/1.03      (![X12 : $i]: ((k2_tarski @ X12 @ X12) = (k1_tarski @ X12))),
% 0.83/1.03      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.83/1.03  thf('42', plain,
% 0.83/1.03      ((((k2_relat_1 @ sk_B) = (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A)))
% 0.83/1.03        | ((sk_E @ (k2_relat_1 @ sk_B) @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03            (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A))
% 0.83/1.03            = (k1_funct_1 @ sk_B @ sk_A)))),
% 0.83/1.03      inference('demod', [status(thm)], ['40', '41'])).
% 0.83/1.03  thf('43', plain,
% 0.83/1.03      (((k2_relat_1 @ sk_B) != (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A)))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('44', plain,
% 0.83/1.03      (((sk_E @ (k2_relat_1 @ sk_B) @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03         (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A))
% 0.83/1.03         = (k1_funct_1 @ sk_B @ sk_A))),
% 0.83/1.03      inference('simplify_reflect-', [status(thm)], ['42', '43'])).
% 0.83/1.03  thf('45', plain,
% 0.83/1.03      (![X6 : $i, X7 : $i, X8 : $i, X11 : $i]:
% 0.83/1.03         (((X11) = (k1_enumset1 @ X8 @ X7 @ X6))
% 0.83/1.03          | (zip_tseitin_0 @ (sk_E @ X11 @ X6 @ X7 @ X8) @ X6 @ X7 @ X8)
% 0.83/1.03          | ~ (r2_hidden @ (sk_E @ X11 @ X6 @ X7 @ X8) @ X11))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.83/1.03  thf('46', plain,
% 0.83/1.03      ((~ (r2_hidden @ (k1_funct_1 @ sk_B @ sk_A) @ (k2_relat_1 @ sk_B))
% 0.83/1.03        | (zip_tseitin_0 @ 
% 0.83/1.03           (sk_E @ (k2_relat_1 @ sk_B) @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03            (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A)) @ 
% 0.83/1.03           (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03           (k1_funct_1 @ sk_B @ sk_A))
% 0.83/1.03        | ((k2_relat_1 @ sk_B)
% 0.83/1.03            = (k1_enumset1 @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03               (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A))))),
% 0.83/1.03      inference('sup-', [status(thm)], ['44', '45'])).
% 0.83/1.03  thf('47', plain,
% 0.83/1.03      (![X12 : $i]: ((k2_tarski @ X12 @ X12) = (k1_tarski @ X12))),
% 0.83/1.03      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.83/1.03  thf('48', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.83/1.03         ((r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.83/1.03          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.83/1.03      inference('sup+', [status(thm)], ['2', '4'])).
% 0.83/1.03  thf('49', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.83/1.03         (((X1) != (X0)) | ~ (zip_tseitin_0 @ X1 @ X2 @ X3 @ X0))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.83/1.03  thf('50', plain,
% 0.83/1.03      (![X0 : $i, X2 : $i, X3 : $i]: ~ (zip_tseitin_0 @ X0 @ X2 @ X3 @ X0)),
% 0.83/1.03      inference('simplify', [status(thm)], ['49'])).
% 0.83/1.03  thf('51', plain,
% 0.83/1.03      (![X0 : $i, X1 : $i]: (r2_hidden @ X0 @ (k2_tarski @ X0 @ X1))),
% 0.83/1.03      inference('sup-', [status(thm)], ['48', '50'])).
% 0.83/1.03  thf('52', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.83/1.03      inference('sup+', [status(thm)], ['47', '51'])).
% 0.83/1.03  thf('53', plain, (((k1_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('54', plain,
% 0.83/1.03      (![X28 : $i, X29 : $i, X30 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X28 @ (k1_relat_1 @ X29))
% 0.83/1.03          | ((X30) != (k1_funct_1 @ X29 @ X28))
% 0.83/1.03          | (r2_hidden @ (k4_tarski @ X28 @ X30) @ X29)
% 0.83/1.03          | ~ (v1_funct_1 @ X29)
% 0.83/1.03          | ~ (v1_relat_1 @ X29))),
% 0.83/1.03      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.83/1.03  thf('55', plain,
% 0.83/1.03      (![X28 : $i, X29 : $i]:
% 0.83/1.03         (~ (v1_relat_1 @ X29)
% 0.83/1.03          | ~ (v1_funct_1 @ X29)
% 0.83/1.03          | (r2_hidden @ (k4_tarski @ X28 @ (k1_funct_1 @ X29 @ X28)) @ X29)
% 0.83/1.03          | ~ (r2_hidden @ X28 @ (k1_relat_1 @ X29)))),
% 0.83/1.03      inference('simplify', [status(thm)], ['54'])).
% 0.83/1.03  thf('56', plain,
% 0.83/1.03      (![X0 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.83/1.03          | (r2_hidden @ (k4_tarski @ X0 @ (k1_funct_1 @ sk_B @ X0)) @ sk_B)
% 0.83/1.03          | ~ (v1_funct_1 @ sk_B)
% 0.83/1.03          | ~ (v1_relat_1 @ sk_B))),
% 0.83/1.03      inference('sup-', [status(thm)], ['53', '55'])).
% 0.83/1.03  thf('57', plain, ((v1_funct_1 @ sk_B)),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('58', plain, ((v1_relat_1 @ sk_B)),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('59', plain,
% 0.83/1.03      (![X0 : $i]:
% 0.83/1.03         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_A))
% 0.83/1.03          | (r2_hidden @ (k4_tarski @ X0 @ (k1_funct_1 @ sk_B @ X0)) @ sk_B))),
% 0.83/1.03      inference('demod', [status(thm)], ['56', '57', '58'])).
% 0.83/1.03  thf('60', plain,
% 0.83/1.03      ((r2_hidden @ (k4_tarski @ sk_A @ (k1_funct_1 @ sk_B @ sk_A)) @ sk_B)),
% 0.83/1.03      inference('sup-', [status(thm)], ['52', '59'])).
% 0.83/1.03  thf('61', plain,
% 0.83/1.03      (![X25 : $i, X26 : $i, X27 : $i]:
% 0.83/1.03         (~ (r2_hidden @ (k4_tarski @ X27 @ X25) @ X26)
% 0.83/1.03          | (r2_hidden @ X25 @ (k11_relat_1 @ X26 @ X27))
% 0.83/1.03          | ~ (v1_relat_1 @ X26))),
% 0.83/1.03      inference('cnf', [status(esa)], [t204_relat_1])).
% 0.83/1.03  thf('62', plain,
% 0.83/1.03      ((~ (v1_relat_1 @ sk_B)
% 0.83/1.03        | (r2_hidden @ (k1_funct_1 @ sk_B @ sk_A) @ (k11_relat_1 @ sk_B @ sk_A)))),
% 0.83/1.03      inference('sup-', [status(thm)], ['60', '61'])).
% 0.83/1.03  thf('63', plain, ((v1_relat_1 @ sk_B)),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('64', plain, (((k11_relat_1 @ sk_B @ sk_A) = (k2_relat_1 @ sk_B))),
% 0.83/1.03      inference('demod', [status(thm)], ['26', '27'])).
% 0.83/1.03  thf('65', plain,
% 0.83/1.03      ((r2_hidden @ (k1_funct_1 @ sk_B @ sk_A) @ (k2_relat_1 @ sk_B))),
% 0.83/1.03      inference('demod', [status(thm)], ['62', '63', '64'])).
% 0.83/1.03  thf('66', plain,
% 0.83/1.03      (((sk_E @ (k2_relat_1 @ sk_B) @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03         (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A))
% 0.83/1.03         = (k1_funct_1 @ sk_B @ sk_A))),
% 0.83/1.03      inference('simplify_reflect-', [status(thm)], ['42', '43'])).
% 0.83/1.03  thf('67', plain,
% 0.83/1.03      (![X13 : $i, X14 : $i]:
% 0.83/1.03         ((k1_enumset1 @ X13 @ X13 @ X14) = (k2_tarski @ X13 @ X14))),
% 0.83/1.03      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.83/1.03  thf('68', plain,
% 0.83/1.03      (![X12 : $i]: ((k2_tarski @ X12 @ X12) = (k1_tarski @ X12))),
% 0.83/1.03      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.83/1.03  thf('69', plain,
% 0.83/1.03      (((zip_tseitin_0 @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03         (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03         (k1_funct_1 @ sk_B @ sk_A))
% 0.83/1.03        | ((k2_relat_1 @ sk_B) = (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A))))),
% 0.83/1.03      inference('demod', [status(thm)], ['46', '65', '66', '67', '68'])).
% 0.83/1.03  thf('70', plain,
% 0.83/1.03      (((k2_relat_1 @ sk_B) != (k1_tarski @ (k1_funct_1 @ sk_B @ sk_A)))),
% 0.83/1.03      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.83/1.03  thf('71', plain,
% 0.83/1.03      ((zip_tseitin_0 @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03        (k1_funct_1 @ sk_B @ sk_A) @ (k1_funct_1 @ sk_B @ sk_A) @ 
% 0.83/1.03        (k1_funct_1 @ sk_B @ sk_A))),
% 0.83/1.03      inference('simplify_reflect-', [status(thm)], ['69', '70'])).
% 0.83/1.03  thf('72', plain,
% 0.83/1.03      (![X0 : $i, X2 : $i, X3 : $i]: ~ (zip_tseitin_0 @ X0 @ X2 @ X3 @ X0)),
% 0.83/1.03      inference('simplify', [status(thm)], ['49'])).
% 0.83/1.03  thf('73', plain, ($false), inference('sup-', [status(thm)], ['71', '72'])).
% 0.83/1.03  
% 0.83/1.03  % SZS output end Refutation
% 0.83/1.03  
% 0.83/1.04  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
