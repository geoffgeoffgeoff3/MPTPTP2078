%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.woaCebeKKs

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:27:09 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   66 ( 103 expanded)
%              Number of leaves         :   23 (  44 expanded)
%              Depth                    :   11
%              Number of atoms          :  739 (1172 expanded)
%              Number of equality atoms :   50 (  87 expanded)
%              Maximal formula depth    :   17 (   9 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(k5_enumset1_type,type,(
    k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i )).

thf(k3_enumset1_type,type,(
    k3_enumset1: $i > $i > $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_G_type,type,(
    sk_G: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k4_enumset1_type,type,(
    k4_enumset1: $i > $i > $i > $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(t60_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
      ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G )
      = ( k2_xboole_0 @ ( k3_enumset1 @ A @ B @ C @ D @ E ) @ ( k2_tarski @ F @ G ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
        ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G )
        = ( k2_xboole_0 @ ( k3_enumset1 @ A @ B @ C @ D @ E ) @ ( k2_tarski @ F @ G ) ) ) ),
    inference('cnf.neg',[status(esa)],[t60_enumset1])).

thf('0',plain,(
    ( k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G )
 != ( k2_xboole_0 @ ( k3_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E ) @ ( k2_tarski @ sk_F @ sk_G ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t42_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k1_enumset1 @ A @ B @ C )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) ) )).

thf('1',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( k1_enumset1 @ X16 @ X17 @ X18 )
      = ( k2_xboole_0 @ ( k1_tarski @ X16 ) @ ( k2_tarski @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[t42_enumset1])).

thf(t41_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('2',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k2_tarski @ X14 @ X15 )
      = ( k2_xboole_0 @ ( k1_tarski @ X14 ) @ ( k1_tarski @ X15 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf('3',plain,(
    ! [X14: $i,X15: $i] :
      ( ( k2_tarski @ X14 @ X15 )
      = ( k2_xboole_0 @ ( k1_tarski @ X14 ) @ ( k1_tarski @ X15 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf(t4_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ C )
      = ( k2_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) ) ) )).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ X2 )
      = ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ X2 )
      = ( k2_xboole_0 @ ( k1_tarski @ X1 ) @ ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X2 @ X1 ) @ ( k1_tarski @ X0 ) )
      = ( k2_xboole_0 @ ( k1_tarski @ X2 ) @ ( k2_tarski @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['2','5'])).

thf('7',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( k1_enumset1 @ X16 @ X17 @ X18 )
      = ( k2_xboole_0 @ ( k1_tarski @ X16 ) @ ( k2_tarski @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[t42_enumset1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X2 @ X1 ) @ ( k1_tarski @ X0 ) )
      = ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ X2 )
      = ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_1])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ X3 )
      = ( k2_xboole_0 @ ( k2_tarski @ X2 @ X1 ) @ ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ X3 ) ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X4 @ X3 @ X2 ) @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k2_tarski @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['1','10'])).

thf(t44_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_enumset1 @ B @ C @ D ) ) ) )).

thf('12',plain,(
    ! [X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ( k2_enumset1 @ X19 @ X20 @ X21 @ X22 )
      = ( k2_xboole_0 @ ( k1_tarski @ X19 ) @ ( k1_enumset1 @ X20 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t44_enumset1])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ X2 )
      = ( k2_xboole_0 @ ( k1_tarski @ X1 ) @ ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k1_tarski @ X4 ) @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['12','13'])).

thf(t47_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
      ( ( k3_enumset1 @ A @ B @ C @ D @ E )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_enumset1 @ B @ C @ D @ E ) ) ) )).

thf('15',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ( k3_enumset1 @ X23 @ X24 @ X25 @ X26 @ X27 )
      = ( k2_xboole_0 @ ( k1_tarski @ X23 ) @ ( k2_enumset1 @ X24 @ X25 @ X26 @ X27 ) ) ) ),
    inference(cnf,[status(esa)],[t47_enumset1])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X4 @ X3 @ X2 ) @ ( k2_tarski @ X1 @ X0 ) )
      = ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference(demod,[status(thm)],['11','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['14','15'])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ X2 )
      = ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( k2_xboole_0 @ ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) @ X5 )
      = ( k2_xboole_0 @ ( k2_tarski @ X4 @ X3 ) @ ( k2_xboole_0 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ X5 ) ) ) ),
    inference('sup+',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k2_xboole_0 @ ( k3_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 ) @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k2_tarski @ X6 @ X5 ) @ ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['17','20'])).

thf('22',plain,(
    ( k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G )
 != ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ ( k3_enumset1 @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G ) ) ),
    inference(demod,[status(thm)],['0','21'])).

thf('23',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['14','15'])).

thf('24',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( k1_enumset1 @ X16 @ X17 @ X18 )
      = ( k2_xboole_0 @ ( k1_tarski @ X16 ) @ ( k2_tarski @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[t42_enumset1])).

thf('25',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ X2 )
      = ( k2_xboole_0 @ ( k1_tarski @ X1 ) @ ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('26',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X3 @ X2 ) @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k1_tarski @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['24','25'])).

thf('27',plain,(
    ! [X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ( k2_enumset1 @ X19 @ X20 @ X21 @ X22 )
      = ( k2_xboole_0 @ ( k1_tarski @ X19 ) @ ( k1_enumset1 @ X20 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t44_enumset1])).

thf('28',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X3 @ X2 ) @ ( k2_tarski @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['26','27'])).

thf('29',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ X2 )
      = ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_1])).

thf('30',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) @ X4 )
      = ( k2_xboole_0 @ ( k2_tarski @ X3 @ X2 ) @ ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ X4 ) ) ) ),
    inference('sup+',[status(thm)],['28','29'])).

thf('31',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k2_xboole_0 @ ( k2_enumset1 @ X6 @ X5 @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k2_tarski @ X6 @ X5 ) @ ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['23','30'])).

thf(l62_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( k4_enumset1 @ A @ B @ C @ D @ E @ F )
      = ( k2_xboole_0 @ ( k1_enumset1 @ A @ B @ C ) @ ( k1_enumset1 @ D @ E @ F ) ) ) )).

thf('32',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i,X12: $i,X13: $i] :
      ( ( k4_enumset1 @ X8 @ X9 @ X10 @ X11 @ X12 @ X13 )
      = ( k2_xboole_0 @ ( k1_enumset1 @ X8 @ X9 @ X10 ) @ ( k1_enumset1 @ X11 @ X12 @ X13 ) ) ) ),
    inference(cnf,[status(esa)],[l62_enumset1])).

thf('33',plain,(
    ! [X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ( k2_enumset1 @ X19 @ X20 @ X21 @ X22 )
      = ( k2_xboole_0 @ ( k1_tarski @ X19 ) @ ( k1_enumset1 @ X20 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t44_enumset1])).

thf('34',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ X2 )
      = ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_1])).

thf('35',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) @ X4 )
      = ( k2_xboole_0 @ ( k1_tarski @ X3 ) @ ( k2_xboole_0 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ X4 ) ) ) ),
    inference('sup+',[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k2_xboole_0 @ ( k2_enumset1 @ X6 @ X5 @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k1_tarski @ X6 ) @ ( k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['32','35'])).

thf(t56_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
      ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k4_enumset1 @ B @ C @ D @ E @ F @ G ) ) ) )).

thf('37',plain,(
    ! [X33: $i,X34: $i,X35: $i,X36: $i,X37: $i,X38: $i,X39: $i] :
      ( ( k5_enumset1 @ X33 @ X34 @ X35 @ X36 @ X37 @ X38 @ X39 )
      = ( k2_xboole_0 @ ( k1_tarski @ X33 ) @ ( k4_enumset1 @ X34 @ X35 @ X36 @ X37 @ X38 @ X39 ) ) ) ),
    inference(cnf,[status(esa)],[t56_enumset1])).

thf('38',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k5_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_enumset1 @ X6 @ X5 @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['36','37'])).

thf('39',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k5_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X6 @ X5 ) @ ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['31','38'])).

thf('40',plain,(
    ( k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G )
 != ( k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G ) ),
    inference(demod,[status(thm)],['22','39'])).

thf('41',plain,(
    $false ),
    inference(simplify,[status(thm)],['40'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.woaCebeKKs
% 0.13/0.34  % Computer   : n013.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:46:10 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.54  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.54  % Solved by: fo/fo7.sh
% 0.20/0.54  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.54  % done 76 iterations in 0.095s
% 0.20/0.54  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.54  % SZS output start Refutation
% 0.20/0.54  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.54  thf(sk_F_type, type, sk_F: $i).
% 0.20/0.54  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.54  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.20/0.54  thf(k5_enumset1_type, type, k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i).
% 0.20/0.54  thf(k3_enumset1_type, type, k3_enumset1: $i > $i > $i > $i > $i > $i).
% 0.20/0.54  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.54  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.20/0.54  thf(sk_G_type, type, sk_G: $i).
% 0.20/0.54  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.54  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.20/0.54  thf(k4_enumset1_type, type, k4_enumset1: $i > $i > $i > $i > $i > $i > $i).
% 0.20/0.54  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.54  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.54  thf(sk_E_type, type, sk_E: $i).
% 0.20/0.54  thf(t60_enumset1, conjecture,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.20/0.54     ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) =
% 0.20/0.54       ( k2_xboole_0 @
% 0.20/0.54         ( k3_enumset1 @ A @ B @ C @ D @ E ) @ ( k2_tarski @ F @ G ) ) ))).
% 0.20/0.54  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.54    (~( ![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.20/0.54        ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) =
% 0.20/0.54          ( k2_xboole_0 @
% 0.20/0.54            ( k3_enumset1 @ A @ B @ C @ D @ E ) @ ( k2_tarski @ F @ G ) ) ) )),
% 0.20/0.54    inference('cnf.neg', [status(esa)], [t60_enumset1])).
% 0.20/0.54  thf('0', plain,
% 0.20/0.54      (((k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G)
% 0.20/0.54         != (k2_xboole_0 @ (k3_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E) @ 
% 0.20/0.54             (k2_tarski @ sk_F @ sk_G)))),
% 0.20/0.54      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.54  thf(t42_enumset1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( k1_enumset1 @ A @ B @ C ) =
% 0.20/0.54       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) ))).
% 0.20/0.54  thf('1', plain,
% 0.20/0.54      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.20/0.54         ((k1_enumset1 @ X16 @ X17 @ X18)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X16) @ (k2_tarski @ X17 @ X18)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t42_enumset1])).
% 0.20/0.54  thf(t41_enumset1, axiom,
% 0.20/0.54    (![A:$i,B:$i]:
% 0.20/0.54     ( ( k2_tarski @ A @ B ) =
% 0.20/0.54       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.20/0.54  thf('2', plain,
% 0.20/0.54      (![X14 : $i, X15 : $i]:
% 0.20/0.54         ((k2_tarski @ X14 @ X15)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X14) @ (k1_tarski @ X15)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.20/0.54  thf('3', plain,
% 0.20/0.54      (![X14 : $i, X15 : $i]:
% 0.20/0.54         ((k2_tarski @ X14 @ X15)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X14) @ (k1_tarski @ X15)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.20/0.54  thf(t4_xboole_1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i]:
% 0.20/0.54     ( ( k2_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ C ) =
% 0.20/0.54       ( k2_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) ) ))).
% 0.20/0.54  thf('4', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.20/0.54           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.20/0.54  thf('5', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X2)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X1) @ 
% 0.20/0.54              (k2_xboole_0 @ (k1_tarski @ X0) @ X2)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['3', '4'])).
% 0.20/0.54  thf('6', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_tarski @ X2 @ X1) @ (k1_tarski @ X0))
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X2) @ (k2_tarski @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['2', '5'])).
% 0.20/0.54  thf('7', plain,
% 0.20/0.54      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.20/0.54         ((k1_enumset1 @ X16 @ X17 @ X18)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X16) @ (k2_tarski @ X17 @ X18)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t42_enumset1])).
% 0.20/0.54  thf('8', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_tarski @ X2 @ X1) @ (k1_tarski @ X0))
% 0.20/0.54           = (k1_enumset1 @ X2 @ X1 @ X0))),
% 0.20/0.54      inference('demod', [status(thm)], ['6', '7'])).
% 0.20/0.54  thf('9', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.20/0.54           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.20/0.54  thf('10', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0) @ X3)
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X2 @ X1) @ 
% 0.20/0.54              (k2_xboole_0 @ (k1_tarski @ X0) @ X3)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['8', '9'])).
% 0.20/0.54  thf('11', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k1_enumset1 @ X4 @ X3 @ X2) @ (k2_tarski @ X1 @ X0))
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X4 @ X3) @ 
% 0.20/0.54              (k1_enumset1 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['1', '10'])).
% 0.20/0.54  thf(t44_enumset1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.54     ( ( k2_enumset1 @ A @ B @ C @ D ) =
% 0.20/0.54       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_enumset1 @ B @ C @ D ) ) ))).
% 0.20/0.54  thf('12', plain,
% 0.20/0.54      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X19 @ X20 @ X21 @ X22)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X19) @ (k1_enumset1 @ X20 @ X21 @ X22)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t44_enumset1])).
% 0.20/0.54  thf('13', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X2)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X1) @ 
% 0.20/0.54              (k2_xboole_0 @ (k1_tarski @ X0) @ X2)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['3', '4'])).
% 0.20/0.54  thf('14', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_tarski @ X4 @ X3) @ (k1_enumset1 @ X2 @ X1 @ X0))
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X4) @ 
% 0.20/0.54              (k2_enumset1 @ X3 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['12', '13'])).
% 0.20/0.54  thf(t47_enumset1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.20/0.54     ( ( k3_enumset1 @ A @ B @ C @ D @ E ) =
% 0.20/0.54       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_enumset1 @ B @ C @ D @ E ) ) ))).
% 0.20/0.54  thf('15', plain,
% 0.20/0.54      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.20/0.54         ((k3_enumset1 @ X23 @ X24 @ X25 @ X26 @ X27)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X23) @ 
% 0.20/0.54              (k2_enumset1 @ X24 @ X25 @ X26 @ X27)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t47_enumset1])).
% 0.20/0.54  thf('16', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         ((k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X4 @ X3) @ 
% 0.20/0.54              (k1_enumset1 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['14', '15'])).
% 0.20/0.54  thf('17', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k1_enumset1 @ X4 @ X3 @ X2) @ (k2_tarski @ X1 @ X0))
% 0.20/0.54           = (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0))),
% 0.20/0.54      inference('demod', [status(thm)], ['11', '16'])).
% 0.20/0.54  thf('18', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         ((k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X4 @ X3) @ 
% 0.20/0.54              (k1_enumset1 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['14', '15'])).
% 0.20/0.54  thf('19', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.20/0.54           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.20/0.54  thf('20', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0) @ X5)
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X4 @ X3) @ 
% 0.20/0.54              (k2_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0) @ X5)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['18', '19'])).
% 0.20/0.54  thf('21', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k3_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2) @ 
% 0.20/0.54           (k2_tarski @ X1 @ X0))
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X6 @ X5) @ 
% 0.20/0.54              (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['17', '20'])).
% 0.20/0.54  thf('22', plain,
% 0.20/0.54      (((k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G)
% 0.20/0.54         != (k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ 
% 0.20/0.54             (k3_enumset1 @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G)))),
% 0.20/0.54      inference('demod', [status(thm)], ['0', '21'])).
% 0.20/0.54  thf('23', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         ((k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X4 @ X3) @ 
% 0.20/0.54              (k1_enumset1 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['14', '15'])).
% 0.20/0.54  thf('24', plain,
% 0.20/0.54      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.20/0.54         ((k1_enumset1 @ X16 @ X17 @ X18)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X16) @ (k2_tarski @ X17 @ X18)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t42_enumset1])).
% 0.20/0.54  thf('25', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X2)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X1) @ 
% 0.20/0.54              (k2_xboole_0 @ (k1_tarski @ X0) @ X2)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['3', '4'])).
% 0.20/0.54  thf('26', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_tarski @ X3 @ X2) @ (k2_tarski @ X1 @ X0))
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X3) @ (k1_enumset1 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['24', '25'])).
% 0.20/0.54  thf('27', plain,
% 0.20/0.54      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X19 @ X20 @ X21 @ X22)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X19) @ (k1_enumset1 @ X20 @ X21 @ X22)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t44_enumset1])).
% 0.20/0.54  thf('28', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X3 @ X2 @ X1 @ X0)
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X3 @ X2) @ (k2_tarski @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['26', '27'])).
% 0.20/0.54  thf('29', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.20/0.54           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.20/0.54  thf('30', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_enumset1 @ X3 @ X2 @ X1 @ X0) @ X4)
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X3 @ X2) @ 
% 0.20/0.54              (k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X4)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['28', '29'])).
% 0.20/0.54  thf('31', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_enumset1 @ X6 @ X5 @ X4 @ X3) @ 
% 0.20/0.54           (k1_enumset1 @ X2 @ X1 @ X0))
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X6 @ X5) @ 
% 0.20/0.54              (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['23', '30'])).
% 0.20/0.54  thf(l62_enumset1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.20/0.54     ( ( k4_enumset1 @ A @ B @ C @ D @ E @ F ) =
% 0.20/0.54       ( k2_xboole_0 @
% 0.20/0.54         ( k1_enumset1 @ A @ B @ C ) @ ( k1_enumset1 @ D @ E @ F ) ) ))).
% 0.20/0.54  thf('32', plain,
% 0.20/0.54      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i, X12 : $i, X13 : $i]:
% 0.20/0.54         ((k4_enumset1 @ X8 @ X9 @ X10 @ X11 @ X12 @ X13)
% 0.20/0.54           = (k2_xboole_0 @ (k1_enumset1 @ X8 @ X9 @ X10) @ 
% 0.20/0.54              (k1_enumset1 @ X11 @ X12 @ X13)))),
% 0.20/0.54      inference('cnf', [status(esa)], [l62_enumset1])).
% 0.20/0.54  thf('33', plain,
% 0.20/0.54      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.20/0.54         ((k2_enumset1 @ X19 @ X20 @ X21 @ X22)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X19) @ (k1_enumset1 @ X20 @ X21 @ X22)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t44_enumset1])).
% 0.20/0.54  thf('34', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.20/0.54           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.20/0.54  thf('35', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_enumset1 @ X3 @ X2 @ X1 @ X0) @ X4)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X3) @ 
% 0.20/0.54              (k2_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0) @ X4)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['33', '34'])).
% 0.20/0.54  thf('36', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.54         ((k2_xboole_0 @ (k2_enumset1 @ X6 @ X5 @ X4 @ X3) @ 
% 0.20/0.54           (k1_enumset1 @ X2 @ X1 @ X0))
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X6) @ 
% 0.20/0.54              (k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['32', '35'])).
% 0.20/0.54  thf(t56_enumset1, axiom,
% 0.20/0.54    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.20/0.54     ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) =
% 0.20/0.54       ( k2_xboole_0 @
% 0.20/0.54         ( k1_tarski @ A ) @ ( k4_enumset1 @ B @ C @ D @ E @ F @ G ) ) ))).
% 0.20/0.54  thf('37', plain,
% 0.20/0.54      (![X33 : $i, X34 : $i, X35 : $i, X36 : $i, X37 : $i, X38 : $i, X39 : $i]:
% 0.20/0.54         ((k5_enumset1 @ X33 @ X34 @ X35 @ X36 @ X37 @ X38 @ X39)
% 0.20/0.54           = (k2_xboole_0 @ (k1_tarski @ X33) @ 
% 0.20/0.54              (k4_enumset1 @ X34 @ X35 @ X36 @ X37 @ X38 @ X39)))),
% 0.20/0.54      inference('cnf', [status(esa)], [t56_enumset1])).
% 0.20/0.54  thf('38', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.54         ((k5_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.20/0.54           = (k2_xboole_0 @ (k2_enumset1 @ X6 @ X5 @ X4 @ X3) @ 
% 0.20/0.54              (k1_enumset1 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['36', '37'])).
% 0.20/0.54  thf('39', plain,
% 0.20/0.54      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.54         ((k5_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.20/0.54           = (k2_xboole_0 @ (k2_tarski @ X6 @ X5) @ 
% 0.20/0.54              (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.20/0.54      inference('sup+', [status(thm)], ['31', '38'])).
% 0.20/0.54  thf('40', plain,
% 0.20/0.54      (((k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G)
% 0.20/0.54         != (k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G))),
% 0.20/0.54      inference('demod', [status(thm)], ['22', '39'])).
% 0.20/0.54  thf('41', plain, ($false), inference('simplify', [status(thm)], ['40'])).
% 0.20/0.54  
% 0.20/0.54  % SZS output end Refutation
% 0.20/0.54  
% 0.20/0.55  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
