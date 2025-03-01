%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.EVCRc93jAD

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:27:47 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   39 (  48 expanded)
%              Number of leaves         :   18 (  23 expanded)
%              Depth                    :    9
%              Number of atoms          :  380 ( 526 expanded)
%              Number of equality atoms :   28 (  37 expanded)
%              Maximal formula depth    :   18 (  10 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k5_enumset1_type,type,(
    k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k6_enumset1_type,type,(
    k6_enumset1: $i > $i > $i > $i > $i > $i > $i > $i > $i )).

thf(k4_enumset1_type,type,(
    k4_enumset1: $i > $i > $i > $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(t88_enumset1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( k4_enumset1 @ A @ A @ A @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( k4_enumset1 @ A @ A @ A @ A @ A @ B )
        = ( k2_tarski @ A @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t88_enumset1])).

thf('0',plain,(
    ( k4_enumset1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B )
 != ( k2_tarski @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t81_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( k6_enumset1 @ A @ A @ A @ B @ C @ D @ E @ F )
      = ( k4_enumset1 @ A @ B @ C @ D @ E @ F ) ) )).

thf('1',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i,X28: $i,X29: $i] :
      ( ( k6_enumset1 @ X24 @ X24 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29 )
      = ( k4_enumset1 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29 ) ) ),
    inference(cnf,[status(esa)],[t81_enumset1])).

thf(t75_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i] :
      ( ( k6_enumset1 @ A @ A @ B @ C @ D @ E @ F @ G )
      = ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) ) )).

thf('2',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ( k6_enumset1 @ X17 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 @ X23 )
      = ( k5_enumset1 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t75_enumset1])).

thf('3',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i,X28: $i,X29: $i] :
      ( ( k5_enumset1 @ X24 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29 )
      = ( k4_enumset1 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29 ) ) ),
    inference(demod,[status(thm)],['1','2'])).

thf(t85_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k5_enumset1 @ A @ A @ A @ A @ B @ C @ D )
      = ( k2_enumset1 @ A @ B @ C @ D ) ) )).

thf('4',plain,(
    ! [X31: $i,X32: $i,X33: $i,X34: $i] :
      ( ( k5_enumset1 @ X31 @ X31 @ X31 @ X31 @ X32 @ X33 @ X34 )
      = ( k2_enumset1 @ X31 @ X32 @ X33 @ X34 ) ) ),
    inference(cnf,[status(esa)],[t85_enumset1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k4_enumset1 @ X3 @ X3 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('6',plain,(
    ( k2_enumset1 @ sk_A @ sk_A @ sk_A @ sk_B )
 != ( k2_tarski @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['0','5'])).

thf(t82_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_enumset1 @ A @ A @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('7',plain,(
    ! [X30: $i] :
      ( ( k2_enumset1 @ X30 @ X30 @ X30 @ X30 )
      = ( k1_tarski @ X30 ) ) ),
    inference(cnf,[status(esa)],[t82_enumset1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k4_enumset1 @ X3 @ X3 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf(t67_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i,G: $i,H: $i] :
      ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H )
      = ( k2_xboole_0 @ ( k4_enumset1 @ A @ B @ C @ D @ E @ F ) @ ( k2_tarski @ G @ H ) ) ) )).

thf('9',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i,X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( k6_enumset1 @ X7 @ X8 @ X9 @ X10 @ X11 @ X12 @ X13 @ X14 )
      = ( k2_xboole_0 @ ( k4_enumset1 @ X7 @ X8 @ X9 @ X10 @ X11 @ X12 ) @ ( k2_tarski @ X13 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[t67_enumset1])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( k6_enumset1 @ X3 @ X3 @ X3 @ X2 @ X1 @ X0 @ X5 @ X4 )
      = ( k2_xboole_0 @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) @ ( k2_tarski @ X5 @ X4 ) ) ) ),
    inference('sup+',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ( k6_enumset1 @ X17 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 @ X23 )
      = ( k5_enumset1 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t75_enumset1])).

thf('12',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( k5_enumset1 @ X3 @ X3 @ X2 @ X1 @ X0 @ X5 @ X4 )
      = ( k2_xboole_0 @ ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) @ ( k2_tarski @ X5 @ X4 ) ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k5_enumset1 @ X0 @ X0 @ X0 @ X0 @ X0 @ X2 @ X1 )
      = ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ ( k2_tarski @ X2 @ X1 ) ) ) ),
    inference('sup+',[status(thm)],['7','12'])).

thf('14',plain,(
    ! [X31: $i,X32: $i,X33: $i,X34: $i] :
      ( ( k5_enumset1 @ X31 @ X31 @ X31 @ X31 @ X32 @ X33 @ X34 )
      = ( k2_enumset1 @ X31 @ X32 @ X33 @ X34 ) ) ),
    inference(cnf,[status(esa)],[t85_enumset1])).

thf(t42_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k1_enumset1 @ A @ B @ C )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) ) )).

thf('15',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ( k1_enumset1 @ X4 @ X5 @ X6 )
      = ( k2_xboole_0 @ ( k1_tarski @ X4 ) @ ( k2_tarski @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t42_enumset1])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k2_enumset1 @ X0 @ X0 @ X2 @ X1 )
      = ( k1_enumset1 @ X0 @ X2 @ X1 ) ) ),
    inference(demod,[status(thm)],['13','14','15'])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('17',plain,(
    ! [X15: $i,X16: $i] :
      ( ( k1_enumset1 @ X15 @ X15 @ X16 )
      = ( k2_tarski @ X15 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf('18',plain,(
    ( k2_tarski @ sk_A @ sk_B )
 != ( k2_tarski @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['6','16','17'])).

thf('19',plain,(
    $false ),
    inference(simplify,[status(thm)],['18'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.EVCRc93jAD
% 0.13/0.35  % Computer   : n015.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 17:14:38 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.36  % Running in FO mode
% 0.21/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.48  % Solved by: fo/fo7.sh
% 0.21/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.48  % done 19 iterations in 0.017s
% 0.21/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.48  % SZS output start Refutation
% 0.21/0.48  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.21/0.48  thf(k5_enumset1_type, type, k5_enumset1: $i > $i > $i > $i > $i > $i > $i > $i).
% 0.21/0.48  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.21/0.48  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.48  thf(k6_enumset1_type, type, k6_enumset1: $i > $i > $i > $i > $i > $i > $i > 
% 0.21/0.48                                           $i > $i).
% 0.21/0.48  thf(k4_enumset1_type, type, k4_enumset1: $i > $i > $i > $i > $i > $i > $i).
% 0.21/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.48  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.48  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.48  thf(t88_enumset1, conjecture,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( k4_enumset1 @ A @ A @ A @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.21/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.48    (~( ![A:$i,B:$i]:
% 0.21/0.48        ( ( k4_enumset1 @ A @ A @ A @ A @ A @ B ) = ( k2_tarski @ A @ B ) ) )),
% 0.21/0.48    inference('cnf.neg', [status(esa)], [t88_enumset1])).
% 0.21/0.48  thf('0', plain,
% 0.21/0.48      (((k4_enumset1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B)
% 0.21/0.48         != (k2_tarski @ sk_A @ sk_B))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf(t81_enumset1, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.21/0.48     ( ( k6_enumset1 @ A @ A @ A @ B @ C @ D @ E @ F ) =
% 0.21/0.48       ( k4_enumset1 @ A @ B @ C @ D @ E @ F ) ))).
% 0.21/0.48  thf('1', plain,
% 0.21/0.48      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i, X29 : $i]:
% 0.21/0.48         ((k6_enumset1 @ X24 @ X24 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29)
% 0.21/0.48           = (k4_enumset1 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29))),
% 0.21/0.48      inference('cnf', [status(esa)], [t81_enumset1])).
% 0.21/0.48  thf(t75_enumset1, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i]:
% 0.21/0.48     ( ( k6_enumset1 @ A @ A @ B @ C @ D @ E @ F @ G ) =
% 0.21/0.48       ( k5_enumset1 @ A @ B @ C @ D @ E @ F @ G ) ))).
% 0.21/0.48  thf('2', plain,
% 0.21/0.48      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.21/0.48         ((k6_enumset1 @ X17 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 @ X23)
% 0.21/0.48           = (k5_enumset1 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 @ X23))),
% 0.21/0.48      inference('cnf', [status(esa)], [t75_enumset1])).
% 0.21/0.48  thf('3', plain,
% 0.21/0.48      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i, X29 : $i]:
% 0.21/0.48         ((k5_enumset1 @ X24 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29)
% 0.21/0.48           = (k4_enumset1 @ X24 @ X25 @ X26 @ X27 @ X28 @ X29))),
% 0.21/0.48      inference('demod', [status(thm)], ['1', '2'])).
% 0.21/0.48  thf(t85_enumset1, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.48     ( ( k5_enumset1 @ A @ A @ A @ A @ B @ C @ D ) =
% 0.21/0.48       ( k2_enumset1 @ A @ B @ C @ D ) ))).
% 0.21/0.48  thf('4', plain,
% 0.21/0.48      (![X31 : $i, X32 : $i, X33 : $i, X34 : $i]:
% 0.21/0.48         ((k5_enumset1 @ X31 @ X31 @ X31 @ X31 @ X32 @ X33 @ X34)
% 0.21/0.48           = (k2_enumset1 @ X31 @ X32 @ X33 @ X34))),
% 0.21/0.48      inference('cnf', [status(esa)], [t85_enumset1])).
% 0.21/0.48  thf('5', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.48         ((k4_enumset1 @ X3 @ X3 @ X3 @ X2 @ X1 @ X0)
% 0.21/0.48           = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.21/0.48      inference('sup+', [status(thm)], ['3', '4'])).
% 0.21/0.48  thf('6', plain,
% 0.21/0.48      (((k2_enumset1 @ sk_A @ sk_A @ sk_A @ sk_B) != (k2_tarski @ sk_A @ sk_B))),
% 0.21/0.48      inference('demod', [status(thm)], ['0', '5'])).
% 0.21/0.48  thf(t82_enumset1, axiom,
% 0.21/0.48    (![A:$i]: ( ( k2_enumset1 @ A @ A @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.21/0.48  thf('7', plain,
% 0.21/0.48      (![X30 : $i]: ((k2_enumset1 @ X30 @ X30 @ X30 @ X30) = (k1_tarski @ X30))),
% 0.21/0.48      inference('cnf', [status(esa)], [t82_enumset1])).
% 0.21/0.48  thf('8', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.48         ((k4_enumset1 @ X3 @ X3 @ X3 @ X2 @ X1 @ X0)
% 0.21/0.48           = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.21/0.48      inference('sup+', [status(thm)], ['3', '4'])).
% 0.21/0.48  thf(t67_enumset1, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i,G:$i,H:$i]:
% 0.21/0.48     ( ( k6_enumset1 @ A @ B @ C @ D @ E @ F @ G @ H ) =
% 0.21/0.48       ( k2_xboole_0 @
% 0.21/0.48         ( k4_enumset1 @ A @ B @ C @ D @ E @ F ) @ ( k2_tarski @ G @ H ) ) ))).
% 0.21/0.48  thf('9', plain,
% 0.21/0.48      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i, X11 : $i, X12 : $i, X13 : $i, 
% 0.21/0.48         X14 : $i]:
% 0.21/0.48         ((k6_enumset1 @ X7 @ X8 @ X9 @ X10 @ X11 @ X12 @ X13 @ X14)
% 0.21/0.48           = (k2_xboole_0 @ (k4_enumset1 @ X7 @ X8 @ X9 @ X10 @ X11 @ X12) @ 
% 0.21/0.48              (k2_tarski @ X13 @ X14)))),
% 0.21/0.48      inference('cnf', [status(esa)], [t67_enumset1])).
% 0.21/0.48  thf('10', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.21/0.48         ((k6_enumset1 @ X3 @ X3 @ X3 @ X2 @ X1 @ X0 @ X5 @ X4)
% 0.21/0.48           = (k2_xboole_0 @ (k2_enumset1 @ X3 @ X2 @ X1 @ X0) @ 
% 0.21/0.48              (k2_tarski @ X5 @ X4)))),
% 0.21/0.48      inference('sup+', [status(thm)], ['8', '9'])).
% 0.21/0.48  thf('11', plain,
% 0.21/0.48      (![X17 : $i, X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.21/0.48         ((k6_enumset1 @ X17 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 @ X23)
% 0.21/0.48           = (k5_enumset1 @ X17 @ X18 @ X19 @ X20 @ X21 @ X22 @ X23))),
% 0.21/0.48      inference('cnf', [status(esa)], [t75_enumset1])).
% 0.21/0.48  thf('12', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.21/0.48         ((k5_enumset1 @ X3 @ X3 @ X2 @ X1 @ X0 @ X5 @ X4)
% 0.21/0.48           = (k2_xboole_0 @ (k2_enumset1 @ X3 @ X2 @ X1 @ X0) @ 
% 0.21/0.48              (k2_tarski @ X5 @ X4)))),
% 0.21/0.48      inference('demod', [status(thm)], ['10', '11'])).
% 0.21/0.48  thf('13', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.48         ((k5_enumset1 @ X0 @ X0 @ X0 @ X0 @ X0 @ X2 @ X1)
% 0.21/0.48           = (k2_xboole_0 @ (k1_tarski @ X0) @ (k2_tarski @ X2 @ X1)))),
% 0.21/0.48      inference('sup+', [status(thm)], ['7', '12'])).
% 0.21/0.48  thf('14', plain,
% 0.21/0.48      (![X31 : $i, X32 : $i, X33 : $i, X34 : $i]:
% 0.21/0.48         ((k5_enumset1 @ X31 @ X31 @ X31 @ X31 @ X32 @ X33 @ X34)
% 0.21/0.48           = (k2_enumset1 @ X31 @ X32 @ X33 @ X34))),
% 0.21/0.48      inference('cnf', [status(esa)], [t85_enumset1])).
% 0.21/0.48  thf(t42_enumset1, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i]:
% 0.21/0.48     ( ( k1_enumset1 @ A @ B @ C ) =
% 0.21/0.48       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) ))).
% 0.21/0.48  thf('15', plain,
% 0.21/0.48      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.21/0.48         ((k1_enumset1 @ X4 @ X5 @ X6)
% 0.21/0.48           = (k2_xboole_0 @ (k1_tarski @ X4) @ (k2_tarski @ X5 @ X6)))),
% 0.21/0.48      inference('cnf', [status(esa)], [t42_enumset1])).
% 0.21/0.48  thf('16', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.48         ((k2_enumset1 @ X0 @ X0 @ X2 @ X1) = (k1_enumset1 @ X0 @ X2 @ X1))),
% 0.21/0.48      inference('demod', [status(thm)], ['13', '14', '15'])).
% 0.21/0.48  thf(t70_enumset1, axiom,
% 0.21/0.48    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.21/0.48  thf('17', plain,
% 0.21/0.48      (![X15 : $i, X16 : $i]:
% 0.21/0.48         ((k1_enumset1 @ X15 @ X15 @ X16) = (k2_tarski @ X15 @ X16))),
% 0.21/0.48      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.21/0.48  thf('18', plain, (((k2_tarski @ sk_A @ sk_B) != (k2_tarski @ sk_A @ sk_B))),
% 0.21/0.48      inference('demod', [status(thm)], ['6', '16', '17'])).
% 0.21/0.48  thf('19', plain, ($false), inference('simplify', [status(thm)], ['18'])).
% 0.21/0.48  
% 0.21/0.48  % SZS output end Refutation
% 0.21/0.48  
% 0.21/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
