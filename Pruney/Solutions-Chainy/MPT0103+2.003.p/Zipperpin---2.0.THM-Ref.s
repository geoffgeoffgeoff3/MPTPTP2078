%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.uolp4MAkh0

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:26:02 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   25 (  25 expanded)
%              Number of leaves         :   13 (  13 expanded)
%              Depth                    :    5
%              Number of atoms          :  145 ( 145 expanded)
%              Number of equality atoms :    5 (   5 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(t96_xboole_1,conjecture,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ ( k5_xboole_0 @ A @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ ( k5_xboole_0 @ A @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t96_xboole_1])).

thf('0',plain,(
    ~ ( r1_tarski @ ( k4_xboole_0 @ sk_A @ sk_B ) @ ( k5_xboole_0 @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(l98_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k5_xboole_0 @ A @ B )
      = ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('2',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k5_xboole_0 @ X2 @ X3 )
      = ( k4_xboole_0 @ ( k2_xboole_0 @ X2 @ X3 ) @ ( k3_xboole_0 @ X2 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[l98_xboole_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ X0 @ X1 )
      = ( k4_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ ( k3_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf(t17_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ) )).

thf('4',plain,(
    ! [X4: $i,X5: $i] :
      ( r1_tarski @ ( k3_xboole_0 @ X4 @ X5 ) @ X4 ) ),
    inference(cnf,[status(esa)],[t17_xboole_1])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('5',plain,(
    ! [X10: $i,X11: $i] :
      ( r1_tarski @ X10 @ ( k2_xboole_0 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf(t35_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ C @ D ) )
     => ( r1_tarski @ ( k4_xboole_0 @ A @ D ) @ ( k4_xboole_0 @ B @ C ) ) ) )).

thf('6',plain,(
    ! [X6: $i,X7: $i,X8: $i,X9: $i] :
      ( ~ ( r1_tarski @ X6 @ X7 )
      | ~ ( r1_tarski @ X8 @ X9 )
      | ( r1_tarski @ ( k4_xboole_0 @ X6 @ X9 ) @ ( k4_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t35_xboole_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( r1_tarski @ ( k4_xboole_0 @ X1 @ X3 ) @ ( k4_xboole_0 @ ( k2_xboole_0 @ X1 @ X0 ) @ X2 ) )
      | ~ ( r1_tarski @ X2 @ X3 ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X3 @ X0 ) @ ( k4_xboole_0 @ ( k2_xboole_0 @ X3 @ X2 ) @ ( k3_xboole_0 @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['4','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X1 @ X0 ) @ ( k5_xboole_0 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['3','8'])).

thf('10',plain,(
    $false ),
    inference(demod,[status(thm)],['0','9'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.uolp4MAkh0
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 12:59:36 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.45  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.45  % Solved by: fo/fo7.sh
% 0.21/0.45  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.45  % done 26 iterations in 0.012s
% 0.21/0.45  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.45  % SZS output start Refutation
% 0.21/0.45  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.21/0.45  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.45  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.45  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.45  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.45  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.45  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.45  thf(t96_xboole_1, conjecture,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ ( k5_xboole_0 @ A @ B ) ))).
% 0.21/0.45  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.45    (~( ![A:$i,B:$i]:
% 0.21/0.45        ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ ( k5_xboole_0 @ A @ B ) ) )),
% 0.21/0.45    inference('cnf.neg', [status(esa)], [t96_xboole_1])).
% 0.21/0.45  thf('0', plain,
% 0.21/0.45      (~ (r1_tarski @ (k4_xboole_0 @ sk_A @ sk_B) @ (k5_xboole_0 @ sk_A @ sk_B))),
% 0.21/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.45  thf(commutativity_k3_xboole_0, axiom,
% 0.21/0.45    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.21/0.45  thf('1', plain,
% 0.21/0.45      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.45      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.21/0.45  thf(l98_xboole_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]:
% 0.21/0.45     ( ( k5_xboole_0 @ A @ B ) =
% 0.21/0.45       ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.21/0.45  thf('2', plain,
% 0.21/0.45      (![X2 : $i, X3 : $i]:
% 0.21/0.45         ((k5_xboole_0 @ X2 @ X3)
% 0.21/0.45           = (k4_xboole_0 @ (k2_xboole_0 @ X2 @ X3) @ (k3_xboole_0 @ X2 @ X3)))),
% 0.21/0.45      inference('cnf', [status(esa)], [l98_xboole_1])).
% 0.21/0.45  thf('3', plain,
% 0.21/0.45      (![X0 : $i, X1 : $i]:
% 0.21/0.45         ((k5_xboole_0 @ X0 @ X1)
% 0.21/0.45           = (k4_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ (k3_xboole_0 @ X1 @ X0)))),
% 0.21/0.45      inference('sup+', [status(thm)], ['1', '2'])).
% 0.21/0.45  thf(t17_xboole_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]: ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ A ))).
% 0.21/0.45  thf('4', plain,
% 0.21/0.45      (![X4 : $i, X5 : $i]: (r1_tarski @ (k3_xboole_0 @ X4 @ X5) @ X4)),
% 0.21/0.45      inference('cnf', [status(esa)], [t17_xboole_1])).
% 0.21/0.45  thf(t7_xboole_1, axiom,
% 0.21/0.45    (![A:$i,B:$i]: ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ))).
% 0.21/0.45  thf('5', plain,
% 0.21/0.45      (![X10 : $i, X11 : $i]: (r1_tarski @ X10 @ (k2_xboole_0 @ X10 @ X11))),
% 0.21/0.45      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.21/0.45  thf(t35_xboole_1, axiom,
% 0.21/0.45    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.45     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ C @ D ) ) =>
% 0.21/0.45       ( r1_tarski @ ( k4_xboole_0 @ A @ D ) @ ( k4_xboole_0 @ B @ C ) ) ))).
% 0.21/0.45  thf('6', plain,
% 0.21/0.45      (![X6 : $i, X7 : $i, X8 : $i, X9 : $i]:
% 0.21/0.45         (~ (r1_tarski @ X6 @ X7)
% 0.21/0.45          | ~ (r1_tarski @ X8 @ X9)
% 0.21/0.45          | (r1_tarski @ (k4_xboole_0 @ X6 @ X9) @ (k4_xboole_0 @ X7 @ X8)))),
% 0.21/0.45      inference('cnf', [status(esa)], [t35_xboole_1])).
% 0.21/0.45  thf('7', plain,
% 0.21/0.45      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.45         ((r1_tarski @ (k4_xboole_0 @ X1 @ X3) @ 
% 0.21/0.45           (k4_xboole_0 @ (k2_xboole_0 @ X1 @ X0) @ X2))
% 0.21/0.45          | ~ (r1_tarski @ X2 @ X3))),
% 0.21/0.45      inference('sup-', [status(thm)], ['5', '6'])).
% 0.21/0.45  thf('8', plain,
% 0.21/0.45      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.45         (r1_tarski @ (k4_xboole_0 @ X3 @ X0) @ 
% 0.21/0.45          (k4_xboole_0 @ (k2_xboole_0 @ X3 @ X2) @ (k3_xboole_0 @ X0 @ X1)))),
% 0.21/0.45      inference('sup-', [status(thm)], ['4', '7'])).
% 0.21/0.45  thf('9', plain,
% 0.21/0.45      (![X0 : $i, X1 : $i]:
% 0.21/0.45         (r1_tarski @ (k4_xboole_0 @ X1 @ X0) @ (k5_xboole_0 @ X1 @ X0))),
% 0.21/0.45      inference('sup+', [status(thm)], ['3', '8'])).
% 0.21/0.45  thf('10', plain, ($false), inference('demod', [status(thm)], ['0', '9'])).
% 0.21/0.45  
% 0.21/0.45  % SZS output end Refutation
% 0.21/0.45  
% 0.21/0.45  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
