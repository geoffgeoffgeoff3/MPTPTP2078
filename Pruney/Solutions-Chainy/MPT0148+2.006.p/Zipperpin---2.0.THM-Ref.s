%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.jUw1FmLx9c

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:27:15 EST 2020

% Result     : Theorem 0.39s
% Output     : Refutation 0.39s
% Verified   : 
% Statistics : Number of formulae       :   44 (  50 expanded)
%              Number of leaves         :   23 (  27 expanded)
%              Depth                    :    9
%              Number of atoms          :  432 ( 492 expanded)
%              Number of equality atoms :   27 (  33 expanded)
%              Maximal formula depth    :   19 (   9 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_H_type,type,(
    sk_H: $i )).

thf(k6_enumset1_type,type,(
    k6_enumset1: $i > $i > $i > $i > $i > $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k5_enumset1_type,type,(
    k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(k3_enumset1_type,type,(
    k3_enumset1: $i > $i > $i > $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k4_enumset1_type,type,(
    k4_enumset1: $i > $i > $i > $i > $i > $i > $i )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(sk_G_type,type,(
    sk_G: $i )).

thf(t64_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i,H: $i] :
      ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H )
      = ( k2_xboole_0 @ ( k1_enumset1 @ A @ B @ C ) @ ( k3_enumset1 @ D @ E @ F @ G @ H ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i,H: $i] :
        ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H )
        = ( k2_xboole_0 @ ( k1_enumset1 @ A @ B @ C ) @ ( k3_enumset1 @ D @ E @ F @ G @ H ) ) ) ),
    inference('cnf.neg',[status(esa)],[t64_enumset1])).

thf('0',plain,(
    ( k6_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G @ sk_H )
 != ( k2_xboole_0 @ ( k1_enumset1 @ sk_A @ sk_B @ sk_C ) @ ( k3_enumset1 @ sk_D @ sk_E @ sk_F @ sk_G @ sk_H ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t51_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( k4_enumset1 @ A @ B @ C @ D @ E @ F )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k3_enumset1 @ B @ C @ D @ E @ F ) ) ) )).

thf('1',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i] :
      ( ( k4_enumset1 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 )
      = ( k2_xboole_0 @ ( k1_tarski @ X17 ) @ ( k3_enumset1 @ X18 @ X19 @ X20 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t51_enumset1])).

thf(t41_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('2',plain,(
    ! [X3: $i,X4: $i] :
      ( ( k2_tarski @ X3 @ X4 )
      = ( k2_xboole_0 @ ( k1_tarski @ X3 ) @ ( k1_tarski @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf('3',plain,(
    ! [X3: $i,X4: $i] :
      ( ( k2_tarski @ X3 @ X4 )
      = ( k2_xboole_0 @ ( k1_tarski @ X3 ) @ ( k1_tarski @ X4 ) ) ) ),
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

thf(t42_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k1_enumset1 @ A @ B @ C )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) ) )).

thf('7',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ( k1_enumset1 @ X5 @ X6 @ X7 )
      = ( k2_xboole_0 @ ( k1_tarski @ X5 ) @ ( k2_tarski @ X6 @ X7 ) ) ) ),
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
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X7 @ X6 @ X5 ) @ ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k2_tarski @ X7 @ X6 ) @ ( k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['1','10'])).

thf(t56_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
      ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k4_enumset1 @ B @ C @ D @ E @ F @ G ) ) ) )).

thf('12',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i,X27: $i,X28: $i,X29: $i] :
      ( ( k5_enumset1 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29 )
      = ( k2_xboole_0 @ ( k1_tarski @ X23 ) @ ( k4_enumset1 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29 ) ) ) ),
    inference(cnf,[status(esa)],[t56_enumset1])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ X2 )
      = ( k2_xboole_0 @ ( k1_tarski @ X1 ) @ ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k2_xboole_0 @ ( k2_tarski @ X7 @ X6 ) @ ( k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ ( k1_tarski @ X7 ) @ ( k5_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['12','13'])).

thf(t62_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i,H: $i] :
      ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k5_enumset1 @ B @ C @ D @ E @ F @ G @ H ) ) ) )).

thf('15',plain,(
    ! [X30: $i,X31: $i,X32: $i,X33: $i,X34: $i,X35: $i,X36: $i,X37: $i] :
      ( ( k6_enumset1 @ X30 @ X31 @ X32 @ X33 @ X34 @ X35 @ X36 @ X37 )
      = ( k2_xboole_0 @ ( k1_tarski @ X30 ) @ ( k5_enumset1 @ X31 @ X32 @ X33 @ X34 @ X35 @ X36 @ X37 ) ) ) ),
    inference(cnf,[status(esa)],[t62_enumset1])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k6_enumset1 @ X7 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_xboole_0 @ ( k2_tarski @ X7 @ X6 ) @ ( k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X7 @ X6 @ X5 ) @ ( k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0 ) )
      = ( k6_enumset1 @ X7 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference(demod,[status(thm)],['11','16'])).

thf('18',plain,(
    ( k6_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G @ sk_H )
 != ( k6_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G @ sk_H ) ),
    inference(demod,[status(thm)],['0','17'])).

thf('19',plain,(
    $false ),
    inference(simplify,[status(thm)],['18'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.jUw1FmLx9c
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 15:15:38 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.39/0.56  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.39/0.56  % Solved by: fo/fo7.sh
% 0.39/0.56  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.39/0.56  % done 105 iterations in 0.096s
% 0.39/0.56  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.39/0.56  % SZS output start Refutation
% 0.39/0.56  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.39/0.56  thf(sk_B_type, type, sk_B: $i).
% 0.39/0.56  thf(sk_H_type, type, sk_H: $i).
% 0.39/0.56  thf(k6_enumset1_type, type, k6_enumset1: $i > $i > $i > $i > $i > $i > $i > 
% 0.39/0.56                                           $i > $i).
% 0.39/0.56  thf(sk_A_type, type, sk_A: $i).
% 0.39/0.56  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.39/0.56  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.39/0.56  thf(sk_D_type, type, sk_D: $i).
% 0.39/0.56  thf(k5_enumset1_type, type, k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i).
% 0.39/0.56  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.39/0.56  thf(sk_E_type, type, sk_E: $i).
% 0.39/0.56  thf(k3_enumset1_type, type, k3_enumset1: $i > $i > $i > $i > $i > $i).
% 0.39/0.56  thf(sk_C_type, type, sk_C: $i).
% 0.39/0.56  thf(k4_enumset1_type, type, k4_enumset1: $i > $i > $i > $i > $i > $i > $i).
% 0.39/0.56  thf(sk_F_type, type, sk_F: $i).
% 0.39/0.56  thf(sk_G_type, type, sk_G: $i).
% 0.39/0.56  thf(t64_enumset1, conjecture,
% 0.39/0.56    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i,H:$i]:
% 0.39/0.56     ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H ) =
% 0.39/0.56       ( k2_xboole_0 @
% 0.39/0.56         ( k1_enumset1 @ A @ B @ C ) @ ( k3_enumset1 @ D @ E @ F @ G @ H ) ) ))).
% 0.39/0.56  thf(zf_stmt_0, negated_conjecture,
% 0.39/0.56    (~( ![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i,H:$i]:
% 0.39/0.56        ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H ) =
% 0.39/0.56          ( k2_xboole_0 @
% 0.39/0.56            ( k1_enumset1 @ A @ B @ C ) @ ( k3_enumset1 @ D @ E @ F @ G @ H ) ) ) )),
% 0.39/0.56    inference('cnf.neg', [status(esa)], [t64_enumset1])).
% 0.39/0.56  thf('0', plain,
% 0.39/0.56      (((k6_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G @ sk_H)
% 0.39/0.56         != (k2_xboole_0 @ (k1_enumset1 @ sk_A @ sk_B @ sk_C) @ 
% 0.39/0.56             (k3_enumset1 @ sk_D @ sk_E @ sk_F @ sk_G @ sk_H)))),
% 0.39/0.56      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.39/0.56  thf(t51_enumset1, axiom,
% 0.39/0.56    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.39/0.56     ( ( k4_enumset1 @ A @ B @ C @ D @ E @ F ) =
% 0.39/0.56       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k3_enumset1 @ B @ C @ D @ E @ F ) ) ))).
% 0.39/0.56  thf('1', plain,
% 0.39/0.56      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i]:
% 0.39/0.56         ((k4_enumset1 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22)
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X17) @ 
% 0.39/0.56              (k3_enumset1 @ X18 @ X19 @ X20 @ X21 @ X22)))),
% 0.39/0.56      inference('cnf', [status(esa)], [t51_enumset1])).
% 0.39/0.56  thf(t41_enumset1, axiom,
% 0.39/0.56    (![A:$i,B:$i]:
% 0.39/0.56     ( ( k2_tarski @ A @ B ) =
% 0.39/0.56       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.39/0.56  thf('2', plain,
% 0.39/0.56      (![X3 : $i, X4 : $i]:
% 0.39/0.56         ((k2_tarski @ X3 @ X4)
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X3) @ (k1_tarski @ X4)))),
% 0.39/0.56      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.39/0.56  thf('3', plain,
% 0.39/0.56      (![X3 : $i, X4 : $i]:
% 0.39/0.56         ((k2_tarski @ X3 @ X4)
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X3) @ (k1_tarski @ X4)))),
% 0.39/0.56      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.39/0.56  thf(t4_xboole_1, axiom,
% 0.39/0.56    (![A:$i,B:$i,C:$i]:
% 0.39/0.56     ( ( k2_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ C ) =
% 0.39/0.56       ( k2_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) ) ))).
% 0.39/0.56  thf('4', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.39/0.56           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.39/0.56      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.39/0.56  thf('5', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X2)
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X1) @ 
% 0.39/0.56              (k2_xboole_0 @ (k1_tarski @ X0) @ X2)))),
% 0.39/0.56      inference('sup+', [status(thm)], ['3', '4'])).
% 0.39/0.56  thf('6', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k2_tarski @ X2 @ X1) @ (k1_tarski @ X0))
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X2) @ (k2_tarski @ X1 @ X0)))),
% 0.39/0.56      inference('sup+', [status(thm)], ['2', '5'])).
% 0.39/0.56  thf(t42_enumset1, axiom,
% 0.39/0.56    (![A:$i,B:$i,C:$i]:
% 0.39/0.56     ( ( k1_enumset1 @ A @ B @ C ) =
% 0.39/0.56       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) ))).
% 0.39/0.56  thf('7', plain,
% 0.39/0.56      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.39/0.56         ((k1_enumset1 @ X5 @ X6 @ X7)
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X5) @ (k2_tarski @ X6 @ X7)))),
% 0.39/0.56      inference('cnf', [status(esa)], [t42_enumset1])).
% 0.39/0.56  thf('8', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k2_tarski @ X2 @ X1) @ (k1_tarski @ X0))
% 0.39/0.56           = (k1_enumset1 @ X2 @ X1 @ X0))),
% 0.39/0.56      inference('demod', [status(thm)], ['6', '7'])).
% 0.39/0.56  thf('9', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X2)
% 0.39/0.56           = (k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X2)))),
% 0.39/0.56      inference('cnf', [status(esa)], [t4_xboole_1])).
% 0.39/0.56  thf('10', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0) @ X3)
% 0.39/0.56           = (k2_xboole_0 @ (k2_tarski @ X2 @ X1) @ 
% 0.39/0.56              (k2_xboole_0 @ (k1_tarski @ X0) @ X3)))),
% 0.39/0.56      inference('sup+', [status(thm)], ['8', '9'])).
% 0.39/0.56  thf('11', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k1_enumset1 @ X7 @ X6 @ X5) @ 
% 0.39/0.56           (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0))
% 0.39/0.56           = (k2_xboole_0 @ (k2_tarski @ X7 @ X6) @ 
% 0.39/0.56              (k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.39/0.56      inference('sup+', [status(thm)], ['1', '10'])).
% 0.39/0.56  thf(t56_enumset1, axiom,
% 0.39/0.56    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.39/0.56     ( ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) =
% 0.39/0.56       ( k2_xboole_0 @
% 0.39/0.56         ( k1_tarski @ A ) @ ( k4_enumset1 @ B @ C @ D @ E @ F @ G ) ) ))).
% 0.39/0.56  thf('12', plain,
% 0.39/0.56      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i, X29 : $i]:
% 0.39/0.56         ((k5_enumset1 @ X23 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29)
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X23) @ 
% 0.39/0.56              (k4_enumset1 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29)))),
% 0.39/0.56      inference('cnf', [status(esa)], [t56_enumset1])).
% 0.39/0.56  thf('13', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ X2)
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X1) @ 
% 0.39/0.56              (k2_xboole_0 @ (k1_tarski @ X0) @ X2)))),
% 0.39/0.56      inference('sup+', [status(thm)], ['3', '4'])).
% 0.39/0.56  thf('14', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k2_tarski @ X7 @ X6) @ 
% 0.39/0.56           (k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0))
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X7) @ 
% 0.39/0.56              (k5_enumset1 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.39/0.56      inference('sup+', [status(thm)], ['12', '13'])).
% 0.39/0.56  thf(t62_enumset1, axiom,
% 0.39/0.56    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i,H:$i]:
% 0.39/0.56     ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H ) =
% 0.39/0.56       ( k2_xboole_0 @
% 0.39/0.56         ( k1_tarski @ A ) @ ( k5_enumset1 @ B @ C @ D @ E @ F @ G @ H ) ) ))).
% 0.39/0.56  thf('15', plain,
% 0.39/0.56      (![X30 : $i, X31 : $i, X32 : $i, X33 : $i, X34 : $i, X35 : $i, X36 : $i, 
% 0.39/0.56         X37 : $i]:
% 0.39/0.56         ((k6_enumset1 @ X30 @ X31 @ X32 @ X33 @ X34 @ X35 @ X36 @ X37)
% 0.39/0.56           = (k2_xboole_0 @ (k1_tarski @ X30) @ 
% 0.39/0.56              (k5_enumset1 @ X31 @ X32 @ X33 @ X34 @ X35 @ X36 @ X37)))),
% 0.39/0.56      inference('cnf', [status(esa)], [t62_enumset1])).
% 0.39/0.56  thf('16', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.39/0.56         ((k6_enumset1 @ X7 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)
% 0.39/0.56           = (k2_xboole_0 @ (k2_tarski @ X7 @ X6) @ 
% 0.39/0.56              (k4_enumset1 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0)))),
% 0.39/0.56      inference('sup+', [status(thm)], ['14', '15'])).
% 0.39/0.56  thf('17', plain,
% 0.39/0.56      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.39/0.56         ((k2_xboole_0 @ (k1_enumset1 @ X7 @ X6 @ X5) @ 
% 0.39/0.56           (k3_enumset1 @ X4 @ X3 @ X2 @ X1 @ X0))
% 0.39/0.56           = (k6_enumset1 @ X7 @ X6 @ X5 @ X4 @ X3 @ X2 @ X1 @ X0))),
% 0.39/0.56      inference('demod', [status(thm)], ['11', '16'])).
% 0.39/0.56  thf('18', plain,
% 0.39/0.56      (((k6_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G @ sk_H)
% 0.39/0.56         != (k6_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F @ sk_G @ 
% 0.39/0.56             sk_H))),
% 0.39/0.56      inference('demod', [status(thm)], ['0', '17'])).
% 0.39/0.56  thf('19', plain, ($false), inference('simplify', [status(thm)], ['18'])).
% 0.39/0.56  
% 0.39/0.56  % SZS output end Refutation
% 0.39/0.56  
% 0.39/0.57  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
