%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.BCCgQPolox

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:27:05 EST 2020

% Result     : Theorem 0.18s
% Output     : Refutation 0.18s
% Verified   : 
% Statistics : Number of formulae       :   42 (  48 expanded)
%              Number of leaves         :   21 (  25 expanded)
%              Depth                    :    9
%              Number of atoms          :  398 ( 462 expanded)
%              Number of equality atoms :   27 (  33 expanded)
%              Maximal formula depth    :   17 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_E_type,type,(
    sk_E: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k5_enumset1_type,type,(
    k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i )).

thf(k3_enumset1_type,type,(
    k3_enumset1: $i > $i > $i > $i > $i > $i )).

thf(sk_G_type,type,(
    sk_G: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(t57_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
      ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G )
      = ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ ( k3_enumset1 @ C @ D @ E @ F @ G ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
        ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G )
        = ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ ( k3_enumset1 @ C @ D @ E @ F @ G ) ) ) ),
    inference('cnf.neg',[status(esa)],[t57_enumset1])).

thf('0',plain,(
    ( k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G )
 != ( k2_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ ( k3_enumset1 @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t44_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_enumset1 @ B @ C @ D ) ) ) )).

thf('1',plain,(
    ! [X15: $i,X16: $i,X17: $i,X18: $i] :
      ( ( k2_enumset1 @ X15 @ X16 @ X17 @ X18 )
      = ( k2_xboole_0 @ ( k1_tarski @ X15 ) @ ( k1_enumset1 @ X16 @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[t44_enumset1])).

thf(t41_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('2',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k2_tarski @ X10 @ X11 )
      = ( k2_xboole_0 @ ( k1_tarski @ X10 ) @ ( k1_tarski @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf(t4_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ C )
      = ( k2_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) ) ) )).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ X2 )
      = ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ X2 )
      = ( k2_xboole_0 @ ( k1_tarski @ X1 ) @ ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k1_tarski @ X4 ) @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['1','4'])).

thf(t47_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
      ( ( k3_enumset1 @ A @ B @ C @ D @ E )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_enumset1 @ B @ C @ D @ E ) ) ) )).

thf('6',plain,(
    ! [X19: $i,X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ( k3_enumset1 @ X19 @ X20 @ X21 @ X22 @ X23 )
      = ( k2_xboole_0 @ ( k1_tarski @ X19 ) @ ( k2_enumset1 @ X20 @ X21 @ X22 @ X23 ) ) ) ),
    inference(cnf,[status(esa)],[t47_enumset1])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf(t42_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k1_enumset1 @ A @ B @ C )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) ) )).

thf('8',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ( k1_enumset1 @ X12 @ X13 @ X14 )
      = ( k2_xboole_0 @ ( k1_tarski @ X12 ) @ ( k2_tarski @ X13 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[t42_enumset1])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ X2 )
      = ( k2_xboole_0 @ ( k1_tarski @ X1 ) @ ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X3 @ X2 ) @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k1_tarski @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X15: $i,X16: $i,X17: $i,X18: $i] :
      ( ( k2_enumset1 @ X15 @ X16 @ X17 @ X18 )
      = ( k2_xboole_0 @ ( k1_tarski @ X15 ) @ ( k1_enumset1 @ X16 @ X17 @ X18 ) ) ) ),
    inference(cnf,[status(esa)],[t44_enumset1])).

thf('12',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X3 @ X2 ) @ ( k2_tarski @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ X2 )
      = ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_1])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ( k2_xboole_0 @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) @ X4 )
      = ( k2_xboole_0 @ ( k2_tarski @ X3 @ X2 ) @ ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ X4 ) ) ) ),
    inference('sup+',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k2_xboole_0 @ ( k2_enumset1 @ X6 @ X5 @ X4 @ X3 ) @ ( k1_enumset1 @ X2 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k2_tarski @ X6 @ X5 ) @ ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['7','14'])).

thf(l68_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
      ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G )
      = ( k2_xboole_0 @ ( k2_enumset1 @ A @ B @ C @ D ) @ ( k1_enumset1 @ E @ F @ G ) ) ) )).

thf('16',plain,(
    ! [X3: $i,X4: $i,X5: $i,X6: $i,X7: $i,X8: $i,X9: $i] :
      ( ( k5_enumset1 @ X3 @ X4 @ X5 @ X6 @ X7 @ X8 @ X9 )
      = ( k2_xboole_0 @ ( k2_enumset1 @ X3 @ X4 @ X5 @ X6 ) @ ( k1_enumset1 @ X7 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[l68_enumset1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k5_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X6 @ X5 ) @ ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['15','16'])).

thf('18',plain,(
    ( k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G )
 != ( k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G ) ),
    inference(demod,[status(thm)],['0','17'])).

thf('19',plain,(
    $false ),
    inference(simplify,[status(thm)],['18'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.BCCgQPolox
% 0.12/0.32  % Computer   : n016.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % DateTime   : Tue Dec  1 10:50:49 EST 2020
% 0.12/0.32  % CPUTime    : 
% 0.12/0.32  % Running portfolio for 600 s
% 0.12/0.32  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.12/0.32  % Number of cores: 8
% 0.18/0.32  % Python version: Python 3.6.8
% 0.18/0.33  % Running in FO mode
% 0.18/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.18/0.47  % Solved by: fo/fo7.sh
% 0.18/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.18/0.47  % done 36 iterations in 0.038s
% 0.18/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.18/0.47  % SZS output start Refutation
% 0.18/0.47  thf(sk_E_type, type, sk_E: $i).
% 0.18/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.18/0.47  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.18/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.18/0.47  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.18/0.47  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.18/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.18/0.47  thf(k5_enumset1_type, type, k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i).
% 0.18/0.47  thf(k3_enumset1_type, type, k3_enumset1: $i > $i > $i > $i > $i > $i).
% 0.18/0.47  thf(sk_G_type, type, sk_G: $i).
% 0.18/0.47  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.18/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.18/0.47  thf(sk_D_type, type, sk_D: $i).
% 0.18/0.47  thf(sk_F_type, type, sk_F: $i).
% 0.18/0.47  thf(t57_enumset1, conjecture,
% 0.18/0.47    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.18/0.47     ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) =
% 0.18/0.47       ( k2_xboole_0 @
% 0.18/0.47         ( k2_tarski @ A @ B ) @ ( k3_enumset1 @ C @ D @ E @ F @ G ) ) ))).
% 0.18/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.18/0.47    (~( ![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.18/0.47        ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) =
% 0.18/0.47          ( k2_xboole_0 @
% 0.18/0.47            ( k2_tarski @ A @ B ) @ ( k3_enumset1 @ C @ D @ E @ F @ G ) ) ) )),
% 0.18/0.47    inference('cnf.neg', [status(esa)], [t57_enumset1])).
% 0.18/0.47  thf('0', plain,
% 0.18/0.47      (((k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G)
% 0.18/0.47         != (k2_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ 
% 0.18/0.47             (k3_enumset1 @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G)))),
% 0.18/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.47  thf(t44_enumset1, axiom,
% 0.18/0.47    (![A:$i,B:$i,C:$i,D:$i]:
% 0.18/0.47     ( ( k2_enumset1 @ A @ B @ C @ D ) =
% 0.18/0.47       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_enumset1 @ B @ C @ D ) ) ))).
% 0.18/0.47  thf('1', plain,
% 0.18/0.47      (![X15 : $i, X16 : $i, X17 : $i, X18 : $i]:
% 0.18/0.47         ((k2_enumset1 @ X15 @ X16 @ X17 @ X18)
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X15) @ (k1_enumset1 @ X16 @ X17 @ X18)))),
% 0.18/0.47      inference('cnf', [status(esa)], [t44_enumset1])).
% 0.18/0.47  thf(t41_enumset1, axiom,
% 0.18/0.47    (![A:$i,B:$i]:
% 0.18/0.47     ( ( k2_tarski @ A @ B ) =
% 0.18/0.47       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.18/0.47  thf('2', plain,
% 0.18/0.47      (![X10 : $i, X11 : $i]:
% 0.18/0.47         ((k2_tarski @ X10 @ X11)
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X10) @ (k1_tarski @ X11)))),
% 0.18/0.47      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.18/0.47  thf(t4_xboole_1, axiom,
% 0.18/0.47    (![A:$i,B:$i,C:$i]:
% 0.18/0.47     ( ( k2_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ C ) =
% 0.18/0.47       ( k2_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) ) ))).
% 0.18/0.47  thf('3', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.18/0.47         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.18/0.47           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.18/0.47      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.18/0.47  thf('4', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.18/0.47         ((k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X2)
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X1) @ 
% 0.18/0.47              (k2_xboole_0 @ (k1_tarski @ X0) @ X2)))),
% 0.18/0.47      inference('sup+', [status(thm)], ['2', '3'])).
% 0.18/0.47  thf('5', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.18/0.47         ((k2_xboole_0 @ (k2_tarski @ X4 @ X3) @ (k1_enumset1 @ X2 @ X1 @ X0))
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X4) @ 
% 0.18/0.47              (k2_enumset1 @ X3 @ X2 @ X1 @ X0)))),
% 0.18/0.47      inference('sup+', [status(thm)], ['1', '4'])).
% 0.18/0.47  thf(t47_enumset1, axiom,
% 0.18/0.47    (![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.18/0.47     ( ( k3_enumset1 @ A @ B @ C @ D @ E ) =
% 0.18/0.47       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_enumset1 @ B @ C @ D @ E ) ) ))).
% 0.18/0.47  thf('6', plain,
% 0.18/0.47      (![X19 : $i, X20 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.18/0.47         ((k3_enumset1 @ X19 @ X20 @ X21 @ X22 @ X23)
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X19) @ 
% 0.18/0.47              (k2_enumset1 @ X20 @ X21 @ X22 @ X23)))),
% 0.18/0.47      inference('cnf', [status(esa)], [t47_enumset1])).
% 0.18/0.47  thf('7', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.18/0.47         ((k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.18/0.47           = (k2_xboole_0 @ (k2_tarski @ X4 @ X3) @ 
% 0.18/0.47              (k1_enumset1 @ X2 @ X1 @ X0)))),
% 0.18/0.47      inference('sup+', [status(thm)], ['5', '6'])).
% 0.18/0.47  thf(t42_enumset1, axiom,
% 0.18/0.47    (![A:$i,B:$i,C:$i]:
% 0.18/0.47     ( ( k1_enumset1 @ A @ B @ C ) =
% 0.18/0.47       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) ))).
% 0.18/0.47  thf('8', plain,
% 0.18/0.47      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.18/0.47         ((k1_enumset1 @ X12 @ X13 @ X14)
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X12) @ (k2_tarski @ X13 @ X14)))),
% 0.18/0.47      inference('cnf', [status(esa)], [t42_enumset1])).
% 0.18/0.47  thf('9', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.18/0.47         ((k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X2)
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X1) @ 
% 0.18/0.47              (k2_xboole_0 @ (k1_tarski @ X0) @ X2)))),
% 0.18/0.47      inference('sup+', [status(thm)], ['2', '3'])).
% 0.18/0.47  thf('10', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.18/0.47         ((k2_xboole_0 @ (k2_tarski @ X3 @ X2) @ (k2_tarski @ X1 @ X0))
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X3) @ (k1_enumset1 @ X2 @ X1 @ X0)))),
% 0.18/0.47      inference('sup+', [status(thm)], ['8', '9'])).
% 0.18/0.47  thf('11', plain,
% 0.18/0.47      (![X15 : $i, X16 : $i, X17 : $i, X18 : $i]:
% 0.18/0.47         ((k2_enumset1 @ X15 @ X16 @ X17 @ X18)
% 0.18/0.47           = (k2_xboole_0 @ (k1_tarski @ X15) @ (k1_enumset1 @ X16 @ X17 @ X18)))),
% 0.18/0.47      inference('cnf', [status(esa)], [t44_enumset1])).
% 0.18/0.47  thf('12', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.18/0.47         ((k2_enumset1 @ X3 @ X2 @ X1 @ X0)
% 0.18/0.47           = (k2_xboole_0 @ (k2_tarski @ X3 @ X2) @ (k2_tarski @ X1 @ X0)))),
% 0.18/0.47      inference('sup+', [status(thm)], ['10', '11'])).
% 0.18/0.47  thf('13', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.18/0.47         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.18/0.47           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.18/0.47      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.18/0.47  thf('14', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.18/0.47         ((k2_xboole_0 @ (k2_enumset1 @ X3 @ X2 @ X1 @ X0) @ X4)
% 0.18/0.47           = (k2_xboole_0 @ (k2_tarski @ X3 @ X2) @ 
% 0.18/0.47              (k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X4)))),
% 0.18/0.47      inference('sup+', [status(thm)], ['12', '13'])).
% 0.18/0.47  thf('15', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.18/0.47         ((k2_xboole_0 @ (k2_enumset1 @ X6 @ X5 @ X4 @ X3) @ 
% 0.18/0.47           (k1_enumset1 @ X2 @ X1 @ X0))
% 0.18/0.47           = (k2_xboole_0 @ (k2_tarski @ X6 @ X5) @ 
% 0.18/0.47              (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.18/0.47      inference('sup+', [status(thm)], ['7', '14'])).
% 0.18/0.47  thf(l68_enumset1, axiom,
% 0.18/0.47    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.18/0.47     ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) =
% 0.18/0.47       ( k2_xboole_0 @
% 0.18/0.47         ( k2_enumset1 @ A @ B @ C @ D ) @ ( k1_enumset1 @ E @ F @ G ) ) ))).
% 0.18/0.47  thf('16', plain,
% 0.18/0.47      (![X3 : $i, X4 : $i, X5 : $i, X6 : $i, X7 : $i, X8 : $i, X9 : $i]:
% 0.18/0.47         ((k5_enumset1 @ X3 @ X4 @ X5 @ X6 @ X7 @ X8 @ X9)
% 0.18/0.47           = (k2_xboole_0 @ (k2_enumset1 @ X3 @ X4 @ X5 @ X6) @ 
% 0.18/0.47              (k1_enumset1 @ X7 @ X8 @ X9)))),
% 0.18/0.47      inference('cnf', [status(esa)], [l68_enumset1])).
% 0.18/0.47  thf('17', plain,
% 0.18/0.47      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.18/0.47         ((k5_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.18/0.47           = (k2_xboole_0 @ (k2_tarski @ X6 @ X5) @ 
% 0.18/0.47              (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.18/0.47      inference('demod', [status(thm)], ['15', '16'])).
% 0.18/0.47  thf('18', plain,
% 0.18/0.47      (((k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G)
% 0.18/0.47         != (k5_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G))),
% 0.18/0.47      inference('demod', [status(thm)], ['0', '17'])).
% 0.18/0.47  thf('19', plain, ($false), inference('simplify', [status(thm)], ['18'])).
% 0.18/0.47  
% 0.18/0.47  % SZS output end Refutation
% 0.18/0.47  
% 0.18/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
