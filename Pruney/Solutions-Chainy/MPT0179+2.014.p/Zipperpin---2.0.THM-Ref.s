%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.5kI3qqridp

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:27:56 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   14 (  14 expanded)
%              Number of leaves         :    8 (   8 expanded)
%              Depth                    :    4
%              Number of atoms          :   99 (  99 expanded)
%              Number of equality atoms :    8 (   8 expanded)
%              Maximal formula depth    :   15 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k6_enumset1_type,type,(
    k6_enumset1: $i > $i > $i > $i > $i > $i > $i > $i > $i )).

thf(k3_enumset1_type,type,(
    k3_enumset1: $i > $i > $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(t95_enumset1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( k6_enumset1 @ A @ A @ A @ A @ A @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( k6_enumset1 @ A @ A @ A @ A @ A @ A @ A @ B )
        = ( k2_tarski @ A @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t95_enumset1])).

thf('0',plain,(
    ( k6_enumset1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B )
 != ( k2_tarski @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t86_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
      ( ( k6_enumset1 @ A @ A @ A @ A @ B @ C @ D @ E )
      = ( k3_enumset1 @ A @ B @ C @ D @ E ) ) )).

thf('1',plain,(
    ! [X2: $i,X3: $i,X4: $i,X5: $i,X6: $i] :
      ( ( k6_enumset1 @ X2 @ X2 @ X2 @ X2 @ X3 @ X4 @ X5 @ X6 )
      = ( k3_enumset1 @ X2 @ X3 @ X4 @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t86_enumset1])).

thf(t83_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_enumset1 @ A @ A @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_enumset1 @ X0 @ X0 @ X0 @ X0 @ X1 )
      = ( k2_tarski @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t83_enumset1])).

thf('3',plain,(
    ( k2_tarski @ sk_A @ sk_B )
 != ( k2_tarski @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['0','1','2'])).

thf('4',plain,(
    $false ),
    inference(simplify,[status(thm)],['3'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.5kI3qqridp
% 0.13/0.34  % Computer   : n008.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:58:00 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.45  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.45  % Solved by: fo/fo7.sh
% 0.20/0.45  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.45  % done 2 iterations in 0.005s
% 0.20/0.45  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.45  % SZS output start Refutation
% 0.20/0.45  thf(k6_enumset1_type, type, k6_enumset1: $i > $i > $i > $i > $i > $i > $i > 
% 0.20/0.45                                           $i > $i).
% 0.20/0.45  thf(k3_enumset1_type, type, k3_enumset1: $i > $i > $i > $i > $i > $i).
% 0.20/0.45  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.45  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.45  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.45  thf(t95_enumset1, conjecture,
% 0.20/0.45    (![A:$i,B:$i]:
% 0.20/0.45     ( ( k6_enumset1 @ A @ A @ A @ A @ A @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.20/0.45  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.45    (~( ![A:$i,B:$i]:
% 0.20/0.45        ( ( k6_enumset1 @ A @ A @ A @ A @ A @ A @ A @ B ) =
% 0.20/0.45          ( k2_tarski @ A @ B ) ) )),
% 0.20/0.45    inference('cnf.neg', [status(esa)], [t95_enumset1])).
% 0.20/0.45  thf('0', plain,
% 0.20/0.45      (((k6_enumset1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B)
% 0.20/0.45         != (k2_tarski @ sk_A @ sk_B))),
% 0.20/0.45      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.45  thf(t86_enumset1, axiom,
% 0.20/0.45    (![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.20/0.45     ( ( k6_enumset1 @ A @ A @ A @ A @ B @ C @ D @ E ) =
% 0.20/0.45       ( k3_enumset1 @ A @ B @ C @ D @ E ) ))).
% 0.20/0.45  thf('1', plain,
% 0.20/0.45      (![X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.45         ((k6_enumset1 @ X2 @ X2 @ X2 @ X2 @ X3 @ X4 @ X5 @ X6)
% 0.20/0.45           = (k3_enumset1 @ X2 @ X3 @ X4 @ X5 @ X6))),
% 0.20/0.45      inference('cnf', [status(esa)], [t86_enumset1])).
% 0.20/0.45  thf(t83_enumset1, axiom,
% 0.20/0.45    (![A:$i,B:$i]:
% 0.20/0.45     ( ( k3_enumset1 @ A @ A @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.20/0.45  thf('2', plain,
% 0.20/0.45      (![X0 : $i, X1 : $i]:
% 0.20/0.45         ((k3_enumset1 @ X0 @ X0 @ X0 @ X0 @ X1) = (k2_tarski @ X0 @ X1))),
% 0.20/0.45      inference('cnf', [status(esa)], [t83_enumset1])).
% 0.20/0.45  thf('3', plain, (((k2_tarski @ sk_A @ sk_B) != (k2_tarski @ sk_A @ sk_B))),
% 0.20/0.45      inference('demod', [status(thm)], ['0', '1', '2'])).
% 0.20/0.45  thf('4', plain, ($false), inference('simplify', [status(thm)], ['3'])).
% 0.20/0.45  
% 0.20/0.45  % SZS output end Refutation
% 0.20/0.45  
% 0.20/0.46  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
