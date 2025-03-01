%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.WjYUgTCxuB

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:35:32 EST 2020

% Result     : Theorem 0.90s
% Output     : Refutation 0.90s
% Verified   : 
% Statistics : Number of formulae       :   66 ( 113 expanded)
%              Number of leaves         :   23 (  44 expanded)
%              Depth                    :   15
%              Number of atoms          :  887 (1623 expanded)
%              Number of equality atoms :   65 ( 119 expanded)
%              Maximal formula depth    :   19 (   9 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k6_enumset1_type,type,(
    k6_enumset1: $i > $i > $i > $i > $i > $i > $i > $i > $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_enumset1_type,type,(
    k3_enumset1: $i > $i > $i > $i > $i > $i )).

thf(k4_enumset1_type,type,(
    k4_enumset1: $i > $i > $i > $i > $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k5_enumset1_type,type,(
    k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('0',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k1_enumset1 @ X9 @ X9 @ X10 )
      = ( k2_tarski @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('1',plain,(
    ! [X8: $i] :
      ( ( k2_tarski @ X8 @ X8 )
      = ( k1_tarski @ X8 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('2',plain,(
    ! [X0: $i] :
      ( ( k1_enumset1 @ X0 @ X0 @ X0 )
      = ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['0','1'])).

thf(t71_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_enumset1 @ A @ A @ B @ C )
      = ( k1_enumset1 @ A @ B @ C ) ) )).

thf('3',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ( k2_enumset1 @ X11 @ X11 @ X12 @ X13 )
      = ( k1_enumset1 @ X11 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t71_enumset1])).

thf(t72_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k3_enumset1 @ A @ A @ B @ C @ D )
      = ( k2_enumset1 @ A @ B @ C @ D ) ) )).

thf('4',plain,(
    ! [X14: $i,X15: $i,X16: $i,X17: $i] :
      ( ( k3_enumset1 @ X14 @ X14 @ X15 @ X16 @ X17 )
      = ( k2_enumset1 @ X14 @ X15 @ X16 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t72_enumset1])).

thf(t74_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( k5_enumset1 @ A @ A @ B @ C @ D @ E @ F )
      = ( k4_enumset1 @ A @ B @ C @ D @ E @ F ) ) )).

thf('5',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i,X27: $i,X28: $i] :
      ( ( k5_enumset1 @ X23 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28 )
      = ( k4_enumset1 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28 ) ) ),
    inference(cnf,[status(esa)],[t74_enumset1])).

thf(t68_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i,H: $i] :
      ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H )
      = ( k2_xboole_0 @ ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) @ ( k1_tarski @ H ) ) ) )).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k6_enumset1 @ X0 @ X1 @ X2 @ X3 @ X4 @ X5 @ X6 @ X7 )
      = ( k2_xboole_0 @ ( k5_enumset1 @ X0 @ X1 @ X2 @ X3 @ X4 @ X5 @ X6 ) @ ( k1_tarski @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[t68_enumset1])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k6_enumset1 @ X5 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 @ X6 )
      = ( k2_xboole_0 @ ( k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) @ ( k1_tarski @ X6 ) ) ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf(t75_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
      ( ( k6_enumset1 @ A @ A @ B @ C @ D @ E @ F @ G )
      = ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) ) )).

thf('8',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i,X35: $i] :
      ( ( k6_enumset1 @ X29 @ X29 @ X30 @ X31 @ X32 @ X33 @ X34 @ X35 )
      = ( k5_enumset1 @ X29 @ X30 @ X31 @ X32 @ X33 @ X34 @ X35 ) ) ),
    inference(cnf,[status(esa)],[t75_enumset1])).

thf('9',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i,X27: $i,X28: $i] :
      ( ( k5_enumset1 @ X23 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28 )
      = ( k4_enumset1 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28 ) ) ),
    inference(cnf,[status(esa)],[t74_enumset1])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( k6_enumset1 @ X5 @ X5 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( k2_xboole_0 @ ( k4_enumset1 @ X5 @ X5 @ X4 @ X3 @ X2 @ X1 ) @ ( k1_tarski @ X0 ) )
      = ( k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['7','10'])).

thf(t73_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
      ( ( k4_enumset1 @ A @ A @ B @ C @ D @ E )
      = ( k3_enumset1 @ A @ B @ C @ D @ E ) ) )).

thf('12',plain,(
    ! [X18: $i,X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ( k4_enumset1 @ X18 @ X18 @ X19 @ X20 @ X21 @ X22 )
      = ( k3_enumset1 @ X18 @ X19 @ X20 @ X21 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t73_enumset1])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( k2_xboole_0 @ ( k3_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 ) @ ( k1_tarski @ X0 ) )
      = ( k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) @ ( k1_tarski @ X4 ) )
      = ( k4_enumset1 @ X3 @ X3 @ X2 @ X1 @ X0 @ X4 ) ) ),
    inference('sup+',[status(thm)],['4','13'])).

thf('15',plain,(
    ! [X18: $i,X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ( k4_enumset1 @ X18 @ X18 @ X19 @ X20 @ X21 @ X22 )
      = ( k3_enumset1 @ X18 @ X19 @ X20 @ X21 @ X22 ) ) ),
    inference(cnf,[status(esa)],[t73_enumset1])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) @ ( k1_tarski @ X4 ) )
      = ( k3_enumset1 @ X3 @ X2 @ X1 @ X0 @ X4 ) ) ),
    inference(demod,[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ ( k1_tarski @ X3 ) )
      = ( k3_enumset1 @ X2 @ X2 @ X1 @ X0 @ X3 ) ) ),
    inference('sup+',[status(thm)],['3','16'])).

thf('18',plain,(
    ! [X14: $i,X15: $i,X16: $i,X17: $i] :
      ( ( k3_enumset1 @ X14 @ X14 @ X15 @ X16 @ X17 )
      = ( k2_enumset1 @ X14 @ X15 @ X16 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t72_enumset1])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ ( k1_tarski @ X3 ) )
      = ( k2_enumset1 @ X2 @ X1 @ X0 @ X3 ) ) ),
    inference(demod,[status(thm)],['17','18'])).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X1 ) )
      = ( k2_enumset1 @ X0 @ X0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','19'])).

thf('21',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ( k2_enumset1 @ X11 @ X11 @ X12 @ X13 )
      = ( k1_enumset1 @ X11 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t71_enumset1])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X1 ) )
      = ( k1_enumset1 @ X0 @ X0 @ X1 ) ) ),
    inference(demod,[status(thm)],['20','21'])).

thf(t120_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( k2_zfmisc_1 @ C @ ( k2_xboole_0 @ A @ B ) )
        = ( k2_xboole_0 @ ( k2_zfmisc_1 @ C @ A ) @ ( k2_zfmisc_1 @ C @ B ) ) )
      & ( ( k2_zfmisc_1 @ ( k2_xboole_0 @ A @ B ) @ C )
        = ( k2_xboole_0 @ ( k2_zfmisc_1 @ A @ C ) @ ( k2_zfmisc_1 @ B @ C ) ) ) ) )).

thf('23',plain,(
    ! [X36: $i,X38: $i,X39: $i] :
      ( ( k2_zfmisc_1 @ X39 @ ( k2_xboole_0 @ X36 @ X38 ) )
      = ( k2_xboole_0 @ ( k2_zfmisc_1 @ X39 @ X36 ) @ ( k2_zfmisc_1 @ X39 @ X38 ) ) ) ),
    inference(cnf,[status(esa)],[t120_zfmisc_1])).

thf(t132_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( k2_zfmisc_1 @ C @ ( k2_tarski @ A @ B ) )
        = ( k2_xboole_0 @ ( k2_zfmisc_1 @ C @ ( k1_tarski @ A ) ) @ ( k2_zfmisc_1 @ C @ ( k1_tarski @ B ) ) ) )
      & ( ( k2_zfmisc_1 @ ( k2_tarski @ A @ B ) @ C )
        = ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ B ) @ C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( k2_zfmisc_1 @ C @ ( k2_tarski @ A @ B ) )
          = ( k2_xboole_0 @ ( k2_zfmisc_1 @ C @ ( k1_tarski @ A ) ) @ ( k2_zfmisc_1 @ C @ ( k1_tarski @ B ) ) ) )
        & ( ( k2_zfmisc_1 @ ( k2_tarski @ A @ B ) @ C )
          = ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ B ) @ C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t132_zfmisc_1])).

thf('24',plain,
    ( ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) )
    | ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_C ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,
    ( ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) )
   <= ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) ) ),
    inference(split,[status(esa)],['24'])).

thf('26',plain,
    ( ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_zfmisc_1 @ sk_C @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_B ) ) ) )
   <= ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['23','25'])).

thf('27',plain,
    ( ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_zfmisc_1 @ sk_C @ ( k1_enumset1 @ sk_A @ sk_A @ sk_B ) ) )
   <= ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['22','26'])).

thf('28',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k1_enumset1 @ X9 @ X9 @ X10 )
      = ( k2_tarski @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('29',plain,
    ( ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) ) )
   <= ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,
    ( $false
   <= ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) ) ),
    inference(simplify,[status(thm)],['29'])).

thf('31',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ ( k1_tarski @ X1 ) )
      = ( k1_enumset1 @ X0 @ X0 @ X1 ) ) ),
    inference(demod,[status(thm)],['20','21'])).

thf('32',plain,(
    ! [X36: $i,X37: $i,X38: $i] :
      ( ( k2_zfmisc_1 @ ( k2_xboole_0 @ X36 @ X38 ) @ X37 )
      = ( k2_xboole_0 @ ( k2_zfmisc_1 @ X36 @ X37 ) @ ( k2_zfmisc_1 @ X38 @ X37 ) ) ) ),
    inference(cnf,[status(esa)],[t120_zfmisc_1])).

thf('33',plain,
    ( ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_C ) ) )
   <= ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_C ) ) ) ),
    inference(split,[status(esa)],['24'])).

thf('34',plain,
    ( ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_zfmisc_1 @ ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_B ) ) @ sk_C ) )
   <= ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,
    ( ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_zfmisc_1 @ ( k1_enumset1 @ sk_A @ sk_A @ sk_B ) @ sk_C ) )
   <= ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['31','34'])).

thf('36',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k1_enumset1 @ X9 @ X9 @ X10 )
      = ( k2_tarski @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('37',plain,
    ( ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C ) )
   <= ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_C ) ) ) ),
    inference(demod,[status(thm)],['35','36'])).

thf('38',plain,
    ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
    = ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_C ) ) ),
    inference(simplify,[status(thm)],['37'])).

thf('39',plain,
    ( ( ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) )
    | ( ( k2_zfmisc_1 @ ( k2_tarski @ sk_A @ sk_B ) @ sk_C )
     != ( k2_xboole_0 @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_A ) @ sk_C ) @ ( k2_zfmisc_1 @ ( k1_tarski @ sk_B ) @ sk_C ) ) ) ),
    inference(split,[status(esa)],['24'])).

thf('40',plain,(
    ( k2_zfmisc_1 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) )
 != ( k2_xboole_0 @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_A ) ) @ ( k2_zfmisc_1 @ sk_C @ ( k1_tarski @ sk_B ) ) ) ),
    inference('sat_resolution*',[status(thm)],['38','39'])).

thf('41',plain,(
    $false ),
    inference(simpl_trail,[status(thm)],['30','40'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.WjYUgTCxuB
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:08:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.90/1.11  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.90/1.11  % Solved by: fo/fo7.sh
% 0.90/1.11  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.90/1.11  % done 286 iterations in 0.663s
% 0.90/1.11  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.90/1.11  % SZS output start Refutation
% 0.90/1.11  thf(k6_enumset1_type, type, k6_enumset1: $i > $i > $i > $i > $i > $i > $i > 
% 0.90/1.11                                           $i > $i).
% 0.90/1.11  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.90/1.11  thf(sk_A_type, type, sk_A: $i).
% 0.90/1.11  thf(k3_enumset1_type, type, k3_enumset1: $i > $i > $i > $i > $i > $i).
% 0.90/1.11  thf(k4_enumset1_type, type, k4_enumset1: $i > $i > $i > $i > $i > $i > $i).
% 0.90/1.11  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.90/1.11  thf(sk_B_type, type, sk_B: $i).
% 0.90/1.11  thf(k5_enumset1_type, type, k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i).
% 0.90/1.11  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.90/1.11  thf(sk_C_type, type, sk_C: $i).
% 0.90/1.11  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.90/1.11  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.90/1.11  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.90/1.11  thf(t70_enumset1, axiom,
% 0.90/1.11    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.90/1.11  thf('0', plain,
% 0.90/1.11      (![X9 : $i, X10 : $i]:
% 0.90/1.11         ((k1_enumset1 @ X9 @ X9 @ X10) = (k2_tarski @ X9 @ X10))),
% 0.90/1.11      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.90/1.11  thf(t69_enumset1, axiom,
% 0.90/1.11    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.90/1.11  thf('1', plain, (![X8 : $i]: ((k2_tarski @ X8 @ X8) = (k1_tarski @ X8))),
% 0.90/1.11      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.90/1.11  thf('2', plain,
% 0.90/1.11      (![X0 : $i]: ((k1_enumset1 @ X0 @ X0 @ X0) = (k1_tarski @ X0))),
% 0.90/1.11      inference('sup+', [status(thm)], ['0', '1'])).
% 0.90/1.11  thf(t71_enumset1, axiom,
% 0.90/1.11    (![A:$i,B:$i,C:$i]:
% 0.90/1.11     ( ( k2_enumset1 @ A @ A @ B @ C ) = ( k1_enumset1 @ A @ B @ C ) ))).
% 0.90/1.11  thf('3', plain,
% 0.90/1.11      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.90/1.11         ((k2_enumset1 @ X11 @ X11 @ X12 @ X13)
% 0.90/1.11           = (k1_enumset1 @ X11 @ X12 @ X13))),
% 0.90/1.11      inference('cnf', [status(esa)], [t71_enumset1])).
% 0.90/1.11  thf(t72_enumset1, axiom,
% 0.90/1.11    (![A:$i,B:$i,C:$i,D:$i]:
% 0.90/1.11     ( ( k3_enumset1 @ A @ A @ B @ C @ D ) = ( k2_enumset1 @ A @ B @ C @ D ) ))).
% 0.90/1.11  thf('4', plain,
% 0.90/1.11      (![X14 : $i, X15 : $i, X16 : $i, X17 : $i]:
% 0.90/1.11         ((k3_enumset1 @ X14 @ X14 @ X15 @ X16 @ X17)
% 0.90/1.11           = (k2_enumset1 @ X14 @ X15 @ X16 @ X17))),
% 0.90/1.11      inference('cnf', [status(esa)], [t72_enumset1])).
% 0.90/1.11  thf(t74_enumset1, axiom,
% 0.90/1.11    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.90/1.11     ( ( k5_enumset1 @ A @ A @ B @ C @ D @ E @ F ) =
% 0.90/1.11       ( k4_enumset1 @ A @ B @ C @ D @ E @ F ) ))).
% 0.90/1.11  thf('5', plain,
% 0.90/1.11      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i]:
% 0.90/1.11         ((k5_enumset1 @ X23 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28)
% 0.90/1.11           = (k4_enumset1 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28))),
% 0.90/1.11      inference('cnf', [status(esa)], [t74_enumset1])).
% 0.90/1.11  thf(t68_enumset1, axiom,
% 0.90/1.11    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i,H:$i]:
% 0.90/1.11     ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H ) =
% 0.90/1.11       ( k2_xboole_0 @
% 0.90/1.11         ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) @ ( k1_tarski @ H ) ) ))).
% 0.90/1.11  thf('6', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.90/1.11         ((k6_enumset1 @ X0 @ X1 @ X2 @ X3 @ X4 @ X5 @ X6 @ X7)
% 0.90/1.11           = (k2_xboole_0 @ (k5_enumset1 @ X0 @ X1 @ X2 @ X3 @ X4 @ X5 @ X6) @ 
% 0.90/1.11              (k1_tarski @ X7)))),
% 0.90/1.11      inference('cnf', [status(esa)], [t68_enumset1])).
% 0.90/1.11  thf('7', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.90/1.11         ((k6_enumset1 @ X5 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 @ X6)
% 0.90/1.11           = (k2_xboole_0 @ (k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0) @ 
% 0.90/1.11              (k1_tarski @ X6)))),
% 0.90/1.11      inference('sup+', [status(thm)], ['5', '6'])).
% 0.90/1.11  thf(t75_enumset1, axiom,
% 0.90/1.11    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.90/1.11     ( ( k6_enumset1 @ A @ A @ B @ C @ D @ E @ F @ G ) =
% 0.90/1.11       ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) ))).
% 0.90/1.11  thf('8', plain,
% 0.90/1.11      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i, X34 : $i, X35 : $i]:
% 0.90/1.11         ((k6_enumset1 @ X29 @ X29 @ X30 @ X31 @ X32 @ X33 @ X34 @ X35)
% 0.90/1.11           = (k5_enumset1 @ X29 @ X30 @ X31 @ X32 @ X33 @ X34 @ X35))),
% 0.90/1.11      inference('cnf', [status(esa)], [t75_enumset1])).
% 0.90/1.11  thf('9', plain,
% 0.90/1.11      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i]:
% 0.90/1.11         ((k5_enumset1 @ X23 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28)
% 0.90/1.11           = (k4_enumset1 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28))),
% 0.90/1.11      inference('cnf', [status(esa)], [t74_enumset1])).
% 0.90/1.11  thf('10', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.90/1.11         ((k6_enumset1 @ X5 @ X5 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.90/1.11           = (k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0))),
% 0.90/1.11      inference('sup+', [status(thm)], ['8', '9'])).
% 0.90/1.11  thf('11', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k4_enumset1 @ X5 @ X5 @ X4 @ X3 @ X2 @ X1) @ 
% 0.90/1.11           (k1_tarski @ X0)) = (k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0))),
% 0.90/1.11      inference('sup+', [status(thm)], ['7', '10'])).
% 0.90/1.11  thf(t73_enumset1, axiom,
% 0.90/1.11    (![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.90/1.11     ( ( k4_enumset1 @ A @ A @ B @ C @ D @ E ) =
% 0.90/1.11       ( k3_enumset1 @ A @ B @ C @ D @ E ) ))).
% 0.90/1.11  thf('12', plain,
% 0.90/1.11      (![X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.90/1.11         ((k4_enumset1 @ X18 @ X18 @ X19 @ X20 @ X21 @ X22)
% 0.90/1.11           = (k3_enumset1 @ X18 @ X19 @ X20 @ X21 @ X22))),
% 0.90/1.11      inference('cnf', [status(esa)], [t73_enumset1])).
% 0.90/1.11  thf('13', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k3_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1) @ 
% 0.90/1.11           (k1_tarski @ X0)) = (k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0))),
% 0.90/1.11      inference('demod', [status(thm)], ['11', '12'])).
% 0.90/1.11  thf('14', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k2_enumset1 @ X3 @ X2 @ X1 @ X0) @ (k1_tarski @ X4))
% 0.90/1.11           = (k4_enumset1 @ X3 @ X3 @ X2 @ X1 @ X0 @ X4))),
% 0.90/1.11      inference('sup+', [status(thm)], ['4', '13'])).
% 0.90/1.11  thf('15', plain,
% 0.90/1.11      (![X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.90/1.11         ((k4_enumset1 @ X18 @ X18 @ X19 @ X20 @ X21 @ X22)
% 0.90/1.11           = (k3_enumset1 @ X18 @ X19 @ X20 @ X21 @ X22))),
% 0.90/1.11      inference('cnf', [status(esa)], [t73_enumset1])).
% 0.90/1.11  thf('16', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k2_enumset1 @ X3 @ X2 @ X1 @ X0) @ (k1_tarski @ X4))
% 0.90/1.11           = (k3_enumset1 @ X3 @ X2 @ X1 @ X0 @ X4))),
% 0.90/1.11      inference('demod', [status(thm)], ['14', '15'])).
% 0.90/1.11  thf('17', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0) @ (k1_tarski @ X3))
% 0.90/1.11           = (k3_enumset1 @ X2 @ X2 @ X1 @ X0 @ X3))),
% 0.90/1.11      inference('sup+', [status(thm)], ['3', '16'])).
% 0.90/1.11  thf('18', plain,
% 0.90/1.11      (![X14 : $i, X15 : $i, X16 : $i, X17 : $i]:
% 0.90/1.11         ((k3_enumset1 @ X14 @ X14 @ X15 @ X16 @ X17)
% 0.90/1.11           = (k2_enumset1 @ X14 @ X15 @ X16 @ X17))),
% 0.90/1.11      inference('cnf', [status(esa)], [t72_enumset1])).
% 0.90/1.11  thf('19', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0) @ (k1_tarski @ X3))
% 0.90/1.11           = (k2_enumset1 @ X2 @ X1 @ X0 @ X3))),
% 0.90/1.11      inference('demod', [status(thm)], ['17', '18'])).
% 0.90/1.11  thf('20', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k1_tarski @ X0) @ (k1_tarski @ X1))
% 0.90/1.11           = (k2_enumset1 @ X0 @ X0 @ X0 @ X1))),
% 0.90/1.11      inference('sup+', [status(thm)], ['2', '19'])).
% 0.90/1.11  thf('21', plain,
% 0.90/1.11      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.90/1.11         ((k2_enumset1 @ X11 @ X11 @ X12 @ X13)
% 0.90/1.11           = (k1_enumset1 @ X11 @ X12 @ X13))),
% 0.90/1.11      inference('cnf', [status(esa)], [t71_enumset1])).
% 0.90/1.11  thf('22', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k1_tarski @ X0) @ (k1_tarski @ X1))
% 0.90/1.11           = (k1_enumset1 @ X0 @ X0 @ X1))),
% 0.90/1.11      inference('demod', [status(thm)], ['20', '21'])).
% 0.90/1.11  thf(t120_zfmisc_1, axiom,
% 0.90/1.11    (![A:$i,B:$i,C:$i]:
% 0.90/1.11     ( ( ( k2_zfmisc_1 @ C @ ( k2_xboole_0 @ A @ B ) ) =
% 0.90/1.11         ( k2_xboole_0 @ ( k2_zfmisc_1 @ C @ A ) @ ( k2_zfmisc_1 @ C @ B ) ) ) & 
% 0.90/1.11       ( ( k2_zfmisc_1 @ ( k2_xboole_0 @ A @ B ) @ C ) =
% 0.90/1.11         ( k2_xboole_0 @ ( k2_zfmisc_1 @ A @ C ) @ ( k2_zfmisc_1 @ B @ C ) ) ) ))).
% 0.90/1.11  thf('23', plain,
% 0.90/1.11      (![X36 : $i, X38 : $i, X39 : $i]:
% 0.90/1.11         ((k2_zfmisc_1 @ X39 @ (k2_xboole_0 @ X36 @ X38))
% 0.90/1.11           = (k2_xboole_0 @ (k2_zfmisc_1 @ X39 @ X36) @ 
% 0.90/1.11              (k2_zfmisc_1 @ X39 @ X38)))),
% 0.90/1.11      inference('cnf', [status(esa)], [t120_zfmisc_1])).
% 0.90/1.11  thf(t132_zfmisc_1, conjecture,
% 0.90/1.11    (![A:$i,B:$i,C:$i]:
% 0.90/1.11     ( ( ( k2_zfmisc_1 @ C @ ( k2_tarski @ A @ B ) ) =
% 0.90/1.11         ( k2_xboole_0 @
% 0.90/1.11           ( k2_zfmisc_1 @ C @ ( k1_tarski @ A ) ) @ 
% 0.90/1.11           ( k2_zfmisc_1 @ C @ ( k1_tarski @ B ) ) ) ) & 
% 0.90/1.11       ( ( k2_zfmisc_1 @ ( k2_tarski @ A @ B ) @ C ) =
% 0.90/1.11         ( k2_xboole_0 @
% 0.90/1.11           ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ C ) @ 
% 0.90/1.11           ( k2_zfmisc_1 @ ( k1_tarski @ B ) @ C ) ) ) ))).
% 0.90/1.11  thf(zf_stmt_0, negated_conjecture,
% 0.90/1.11    (~( ![A:$i,B:$i,C:$i]:
% 0.90/1.11        ( ( ( k2_zfmisc_1 @ C @ ( k2_tarski @ A @ B ) ) =
% 0.90/1.11            ( k2_xboole_0 @
% 0.90/1.11              ( k2_zfmisc_1 @ C @ ( k1_tarski @ A ) ) @ 
% 0.90/1.11              ( k2_zfmisc_1 @ C @ ( k1_tarski @ B ) ) ) ) & 
% 0.90/1.11          ( ( k2_zfmisc_1 @ ( k2_tarski @ A @ B ) @ C ) =
% 0.90/1.11            ( k2_xboole_0 @
% 0.90/1.11              ( k2_zfmisc_1 @ ( k1_tarski @ A ) @ C ) @ 
% 0.90/1.11              ( k2_zfmisc_1 @ ( k1_tarski @ B ) @ C ) ) ) ) )),
% 0.90/1.11    inference('cnf.neg', [status(esa)], [t132_zfmisc_1])).
% 0.90/1.11  thf('24', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11          != (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11              (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B))))
% 0.90/1.11        | ((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11            != (k2_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.90/1.11                (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_C))))),
% 0.90/1.11      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.90/1.11  thf('25', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11          != (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11              (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B)))))
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B))))))),
% 0.90/1.11      inference('split', [status(esa)], ['24'])).
% 0.90/1.11  thf('26', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11          != (k2_zfmisc_1 @ sk_C @ 
% 0.90/1.11              (k2_xboole_0 @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_B)))))
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B))))))),
% 0.90/1.11      inference('sup-', [status(thm)], ['23', '25'])).
% 0.90/1.11  thf('27', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11          != (k2_zfmisc_1 @ sk_C @ (k1_enumset1 @ sk_A @ sk_A @ sk_B))))
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B))))))),
% 0.90/1.11      inference('sup-', [status(thm)], ['22', '26'])).
% 0.90/1.11  thf('28', plain,
% 0.90/1.11      (![X9 : $i, X10 : $i]:
% 0.90/1.11         ((k1_enumset1 @ X9 @ X9 @ X10) = (k2_tarski @ X9 @ X10))),
% 0.90/1.11      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.90/1.11  thf('29', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11          != (k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))))
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B))))))),
% 0.90/1.11      inference('demod', [status(thm)], ['27', '28'])).
% 0.90/1.11  thf('30', plain,
% 0.90/1.11      (($false)
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B))))))),
% 0.90/1.11      inference('simplify', [status(thm)], ['29'])).
% 0.90/1.11  thf('31', plain,
% 0.90/1.11      (![X0 : $i, X1 : $i]:
% 0.90/1.11         ((k2_xboole_0 @ (k1_tarski @ X0) @ (k1_tarski @ X1))
% 0.90/1.11           = (k1_enumset1 @ X0 @ X0 @ X1))),
% 0.90/1.11      inference('demod', [status(thm)], ['20', '21'])).
% 0.90/1.11  thf('32', plain,
% 0.90/1.11      (![X36 : $i, X37 : $i, X38 : $i]:
% 0.90/1.11         ((k2_zfmisc_1 @ (k2_xboole_0 @ X36 @ X38) @ X37)
% 0.90/1.11           = (k2_xboole_0 @ (k2_zfmisc_1 @ X36 @ X37) @ 
% 0.90/1.11              (k2_zfmisc_1 @ X38 @ X37)))),
% 0.90/1.11      inference('cnf', [status(esa)], [t120_zfmisc_1])).
% 0.90/1.11  thf('33', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11          != (k2_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.90/1.11              (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_C))))
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_C)))))),
% 0.90/1.11      inference('split', [status(esa)], ['24'])).
% 0.90/1.11  thf('34', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11          != (k2_zfmisc_1 @ 
% 0.90/1.11              (k2_xboole_0 @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_B)) @ sk_C)))
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_C)))))),
% 0.90/1.11      inference('sup-', [status(thm)], ['32', '33'])).
% 0.90/1.11  thf('35', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11          != (k2_zfmisc_1 @ (k1_enumset1 @ sk_A @ sk_A @ sk_B) @ sk_C)))
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_C)))))),
% 0.90/1.11      inference('sup-', [status(thm)], ['31', '34'])).
% 0.90/1.11  thf('36', plain,
% 0.90/1.11      (![X9 : $i, X10 : $i]:
% 0.90/1.11         ((k1_enumset1 @ X9 @ X9 @ X10) = (k2_tarski @ X9 @ X10))),
% 0.90/1.11      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.90/1.11  thf('37', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11          != (k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)))
% 0.90/1.11         <= (~
% 0.90/1.11             (((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11                = (k2_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.90/1.11                   (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_C)))))),
% 0.90/1.11      inference('demod', [status(thm)], ['35', '36'])).
% 0.90/1.11  thf('38', plain,
% 0.90/1.11      ((((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11          = (k2_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.90/1.11             (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_C))))),
% 0.90/1.11      inference('simplify', [status(thm)], ['37'])).
% 0.90/1.11  thf('39', plain,
% 0.90/1.11      (~
% 0.90/1.11       (((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11          = (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11             (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B))))) | 
% 0.90/1.11       ~
% 0.90/1.11       (((k2_zfmisc_1 @ (k2_tarski @ sk_A @ sk_B) @ sk_C)
% 0.90/1.11          = (k2_xboole_0 @ (k2_zfmisc_1 @ (k1_tarski @ sk_A) @ sk_C) @ 
% 0.90/1.11             (k2_zfmisc_1 @ (k1_tarski @ sk_B) @ sk_C))))),
% 0.90/1.11      inference('split', [status(esa)], ['24'])).
% 0.90/1.11  thf('40', plain,
% 0.90/1.11      (~
% 0.90/1.11       (((k2_zfmisc_1 @ sk_C @ (k2_tarski @ sk_A @ sk_B))
% 0.90/1.11          = (k2_xboole_0 @ (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_A)) @ 
% 0.90/1.11             (k2_zfmisc_1 @ sk_C @ (k1_tarski @ sk_B)))))),
% 0.90/1.11      inference('sat_resolution*', [status(thm)], ['38', '39'])).
% 0.90/1.11  thf('41', plain, ($false),
% 0.90/1.11      inference('simpl_trail', [status(thm)], ['30', '40'])).
% 0.90/1.11  
% 0.90/1.11  % SZS output end Refutation
% 0.90/1.11  
% 0.90/1.12  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
