%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.VR90zFts4c

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:28:09 EST 2020

% Result     : Theorem 0.50s
% Output     : Refutation 0.50s
% Verified   : 
% Statistics : Number of formulae       :   29 (  36 expanded)
%              Number of leaves         :   15 (  18 expanded)
%              Depth                    :    7
%              Number of atoms          :  223 ( 311 expanded)
%              Number of equality atoms :   19 (  26 expanded)
%              Maximal formula depth    :   13 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k3_enumset1_type,type,(
    k3_enumset1: $i > $i > $i > $i > $i > $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(t108_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ B @ A @ C @ D ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( k2_enumset1 @ A @ B @ C @ D )
        = ( k2_enumset1 @ B @ A @ C @ D ) ) ),
    inference('cnf.neg',[status(esa)],[t108_enumset1])).

thf('0',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_B @ sk_A @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t100_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k1_enumset1 @ A @ B @ C )
      = ( k1_enumset1 @ B @ C @ A ) ) )).

thf('1',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( k1_enumset1 @ X10 @ X8 @ X9 )
      = ( k1_enumset1 @ X8 @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t100_enumset1])).

thf(t71_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k2_enumset1 @ A @ A @ B @ C )
      = ( k1_enumset1 @ A @ B @ C ) ) )).

thf('2',plain,(
    ! [X23: $i,X24: $i,X25: $i] :
      ( ( k2_enumset1 @ X23 @ X23 @ X24 @ X25 )
      = ( k1_enumset1 @ X23 @ X24 @ X25 ) ) ),
    inference(cnf,[status(esa)],[t71_enumset1])).

thf(t50_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
      ( ( k3_enumset1 @ A @ B @ C @ D @ E )
      = ( k2_xboole_0 @ ( k2_enumset1 @ A @ B @ C @ D ) @ ( k1_tarski @ E ) ) ) )).

thf('3',plain,(
    ! [X15: $i,X16: $i,X17: $i,X18: $i,X19: $i] :
      ( ( k3_enumset1 @ X15 @ X16 @ X17 @ X18 @ X19 )
      = ( k2_xboole_0 @ ( k2_enumset1 @ X15 @ X16 @ X17 @ X18 ) @ ( k1_tarski @ X19 ) ) ) ),
    inference(cnf,[status(esa)],[t50_enumset1])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k3_enumset1 @ X2 @ X2 @ X1 @ X0 @ X3 )
      = ( k2_xboole_0 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ ( k1_tarski @ X3 ) ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf(t72_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k3_enumset1 @ A @ A @ B @ C @ D )
      = ( k2_enumset1 @ A @ B @ C @ D ) ) )).

thf('5',plain,(
    ! [X26: $i,X27: $i,X28: $i,X29: $i] :
      ( ( k3_enumset1 @ X26 @ X26 @ X27 @ X28 @ X29 )
      = ( k2_enumset1 @ X26 @ X27 @ X28 @ X29 ) ) ),
    inference(cnf,[status(esa)],[t72_enumset1])).

thf('6',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X3 @ X2 @ X1 ) @ ( k1_tarski @ X0 ) )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X2 @ X1 @ X0 ) @ ( k1_tarski @ X3 ) )
      = ( k2_enumset1 @ X1 @ X0 @ X2 @ X3 ) ) ),
    inference('sup+',[status(thm)],['1','6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_xboole_0 @ ( k1_enumset1 @ X3 @ X2 @ X1 ) @ ( k1_tarski @ X0 ) )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 )
      = ( k2_enumset1 @ X1 @ X3 @ X2 @ X0 ) ) ),
    inference('sup+',[status(thm)],['7','8'])).

thf(t104_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ A @ C @ B @ D ) ) )).

thf('10',plain,(
    ! [X11: $i,X12: $i,X13: $i,X14: $i] :
      ( ( k2_enumset1 @ X11 @ X13 @ X12 @ X14 )
      = ( k2_enumset1 @ X11 @ X12 @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t104_enumset1])).

thf('11',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['0','9','10'])).

thf('12',plain,(
    $false ),
    inference(simplify,[status(thm)],['11'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.VR90zFts4c
% 0.12/0.34  % Computer   : n013.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 18:44:25 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.35  % Python version: Python 3.6.8
% 0.12/0.35  % Running in FO mode
% 0.50/0.70  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.50/0.70  % Solved by: fo/fo7.sh
% 0.50/0.70  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.50/0.70  % done 373 iterations in 0.250s
% 0.50/0.70  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.50/0.70  % SZS output start Refutation
% 0.50/0.70  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.50/0.70  thf(sk_B_type, type, sk_B: $i).
% 0.50/0.70  thf(sk_A_type, type, sk_A: $i).
% 0.50/0.70  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.50/0.70  thf(sk_D_type, type, sk_D: $i).
% 0.50/0.70  thf(sk_C_type, type, sk_C: $i).
% 0.50/0.70  thf(k3_enumset1_type, type, k3_enumset1: $i > $i > $i > $i > $i > $i).
% 0.50/0.70  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.50/0.70  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.50/0.70  thf(t108_enumset1, conjecture,
% 0.50/0.70    (![A:$i,B:$i,C:$i,D:$i]:
% 0.50/0.70     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ B @ A @ C @ D ) ))).
% 0.50/0.70  thf(zf_stmt_0, negated_conjecture,
% 0.50/0.70    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.50/0.70        ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ B @ A @ C @ D ) ) )),
% 0.50/0.70    inference('cnf.neg', [status(esa)], [t108_enumset1])).
% 0.50/0.70  thf('0', plain,
% 0.50/0.70      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.50/0.70         != (k2_enumset1 @ sk_B @ sk_A @ sk_C @ sk_D))),
% 0.50/0.70      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.50/0.70  thf(t100_enumset1, axiom,
% 0.50/0.70    (![A:$i,B:$i,C:$i]:
% 0.50/0.70     ( ( k1_enumset1 @ A @ B @ C ) = ( k1_enumset1 @ B @ C @ A ) ))).
% 0.50/0.70  thf('1', plain,
% 0.50/0.70      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.50/0.70         ((k1_enumset1 @ X10 @ X8 @ X9) = (k1_enumset1 @ X8 @ X9 @ X10))),
% 0.50/0.70      inference('cnf', [status(esa)], [t100_enumset1])).
% 0.50/0.70  thf(t71_enumset1, axiom,
% 0.50/0.70    (![A:$i,B:$i,C:$i]:
% 0.50/0.70     ( ( k2_enumset1 @ A @ A @ B @ C ) = ( k1_enumset1 @ A @ B @ C ) ))).
% 0.50/0.70  thf('2', plain,
% 0.50/0.70      (![X23 : $i, X24 : $i, X25 : $i]:
% 0.50/0.70         ((k2_enumset1 @ X23 @ X23 @ X24 @ X25)
% 0.50/0.70           = (k1_enumset1 @ X23 @ X24 @ X25))),
% 0.50/0.70      inference('cnf', [status(esa)], [t71_enumset1])).
% 0.50/0.70  thf(t50_enumset1, axiom,
% 0.50/0.70    (![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.50/0.70     ( ( k3_enumset1 @ A @ B @ C @ D @ E ) =
% 0.50/0.70       ( k2_xboole_0 @ ( k2_enumset1 @ A @ B @ C @ D ) @ ( k1_tarski @ E ) ) ))).
% 0.50/0.70  thf('3', plain,
% 0.50/0.70      (![X15 : $i, X16 : $i, X17 : $i, X18 : $i, X19 : $i]:
% 0.50/0.70         ((k3_enumset1 @ X15 @ X16 @ X17 @ X18 @ X19)
% 0.50/0.70           = (k2_xboole_0 @ (k2_enumset1 @ X15 @ X16 @ X17 @ X18) @ 
% 0.50/0.70              (k1_tarski @ X19)))),
% 0.50/0.70      inference('cnf', [status(esa)], [t50_enumset1])).
% 0.50/0.70  thf('4', plain,
% 0.50/0.70      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.50/0.70         ((k3_enumset1 @ X2 @ X2 @ X1 @ X0 @ X3)
% 0.50/0.70           = (k2_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0) @ (k1_tarski @ X3)))),
% 0.50/0.70      inference('sup+', [status(thm)], ['2', '3'])).
% 0.50/0.70  thf(t72_enumset1, axiom,
% 0.50/0.70    (![A:$i,B:$i,C:$i,D:$i]:
% 0.50/0.70     ( ( k3_enumset1 @ A @ A @ B @ C @ D ) = ( k2_enumset1 @ A @ B @ C @ D ) ))).
% 0.50/0.70  thf('5', plain,
% 0.50/0.70      (![X26 : $i, X27 : $i, X28 : $i, X29 : $i]:
% 0.50/0.70         ((k3_enumset1 @ X26 @ X26 @ X27 @ X28 @ X29)
% 0.50/0.70           = (k2_enumset1 @ X26 @ X27 @ X28 @ X29))),
% 0.50/0.70      inference('cnf', [status(esa)], [t72_enumset1])).
% 0.50/0.70  thf('6', plain,
% 0.50/0.70      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.50/0.70         ((k2_xboole_0 @ (k1_enumset1 @ X3 @ X2 @ X1) @ (k1_tarski @ X0))
% 0.50/0.70           = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.50/0.70      inference('sup+', [status(thm)], ['4', '5'])).
% 0.50/0.70  thf('7', plain,
% 0.50/0.70      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.50/0.70         ((k2_xboole_0 @ (k1_enumset1 @ X2 @ X1 @ X0) @ (k1_tarski @ X3))
% 0.50/0.70           = (k2_enumset1 @ X1 @ X0 @ X2 @ X3))),
% 0.50/0.70      inference('sup+', [status(thm)], ['1', '6'])).
% 0.50/0.70  thf('8', plain,
% 0.50/0.70      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.50/0.70         ((k2_xboole_0 @ (k1_enumset1 @ X3 @ X2 @ X1) @ (k1_tarski @ X0))
% 0.50/0.70           = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.50/0.70      inference('sup+', [status(thm)], ['4', '5'])).
% 0.50/0.70  thf('9', plain,
% 0.50/0.70      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.50/0.70         ((k2_enumset1 @ X3 @ X2 @ X1 @ X0) = (k2_enumset1 @ X1 @ X3 @ X2 @ X0))),
% 0.50/0.70      inference('sup+', [status(thm)], ['7', '8'])).
% 0.50/0.70  thf(t104_enumset1, axiom,
% 0.50/0.70    (![A:$i,B:$i,C:$i,D:$i]:
% 0.50/0.70     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ A @ C @ B @ D ) ))).
% 0.50/0.70  thf('10', plain,
% 0.50/0.70      (![X11 : $i, X12 : $i, X13 : $i, X14 : $i]:
% 0.50/0.70         ((k2_enumset1 @ X11 @ X13 @ X12 @ X14)
% 0.50/0.70           = (k2_enumset1 @ X11 @ X12 @ X13 @ X14))),
% 0.50/0.70      inference('cnf', [status(esa)], [t104_enumset1])).
% 0.50/0.70  thf('11', plain,
% 0.50/0.70      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.50/0.70         != (k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.50/0.70      inference('demod', [status(thm)], ['0', '9', '10'])).
% 0.50/0.70  thf('12', plain, ($false), inference('simplify', [status(thm)], ['11'])).
% 0.50/0.70  
% 0.50/0.70  % SZS output end Refutation
% 0.50/0.70  
% 0.50/0.71  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
