%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.kJtbffELDZ

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:27:53 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   15 (  15 expanded)
%              Number of leaves         :    9 (   9 expanded)
%              Depth                    :    4
%              Number of atoms          :  106 ( 106 expanded)
%              Number of equality atoms :    8 (   8 expanded)
%              Maximal formula depth    :   15 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_enumset1_type,type,(
    k3_enumset1: $i > $i > $i > $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k6_enumset1_type,type,(
    k6_enumset1: $i > $i > $i > $i > $i > $i > $i > $i > $i )).

thf(t93_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k6_enumset1 @ A @ A @ A @ A @ A @ A @ B @ C )
      = ( k1_enumset1 @ A @ B @ C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( k6_enumset1 @ A @ A @ A @ A @ A @ A @ B @ C )
        = ( k1_enumset1 @ A @ B @ C ) ) ),
    inference('cnf.neg',[status(esa)],[t93_enumset1])).

thf('0',plain,(
    ( k6_enumset1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B @ sk_C )
 != ( k1_enumset1 @ sk_A @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t86_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
      ( ( k6_enumset1 @ A @ A @ A @ A @ B @ C @ D @ E )
      = ( k3_enumset1 @ A @ B @ C @ D @ E ) ) )).

thf('1',plain,(
    ! [X3: $i,X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k6_enumset1 @ X3 @ X3 @ X3 @ X3 @ X4 @ X5 @ X6 @ X7 )
      = ( k3_enumset1 @ X3 @ X4 @ X5 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t86_enumset1])).

thf(t78_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k3_enumset1 @ A @ A @ A @ B @ C )
      = ( k1_enumset1 @ A @ B @ C ) ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( k3_enumset1 @ X0 @ X0 @ X0 @ X1 @ X2 )
      = ( k1_enumset1 @ X0 @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t78_enumset1])).

thf('3',plain,(
    ( k1_enumset1 @ sk_A @ sk_B @ sk_C )
 != ( k1_enumset1 @ sk_A @ sk_B @ sk_C ) ),
    inference(demod,[status(thm)],['0','1','2'])).

thf('4',plain,(
    $false ),
    inference(simplify,[status(thm)],['3'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.kJtbffELDZ
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 17:55:40 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.47  % Solved by: fo/fo7.sh
% 0.21/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.47  % done 2 iterations in 0.005s
% 0.21/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.47  % SZS output start Refutation
% 0.21/0.47  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.21/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.47  thf(k3_enumset1_type, type, k3_enumset1: $i > $i > $i > $i > $i > $i).
% 0.21/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.47  thf(k6_enumset1_type, type, k6_enumset1: $i > $i > $i > $i > $i > $i > $i > 
% 0.21/0.47                                           $i > $i).
% 0.21/0.47  thf(t93_enumset1, conjecture,
% 0.21/0.47    (![A:$i,B:$i,C:$i]:
% 0.21/0.47     ( ( k6_enumset1 @ A @ A @ A @ A @ A @ A @ B @ C ) =
% 0.21/0.47       ( k1_enumset1 @ A @ B @ C ) ))).
% 0.21/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.21/0.47        ( ( k6_enumset1 @ A @ A @ A @ A @ A @ A @ B @ C ) =
% 0.21/0.47          ( k1_enumset1 @ A @ B @ C ) ) )),
% 0.21/0.47    inference('cnf.neg', [status(esa)], [t93_enumset1])).
% 0.21/0.47  thf('0', plain,
% 0.21/0.47      (((k6_enumset1 @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_A @ sk_B @ sk_C)
% 0.21/0.47         != (k1_enumset1 @ sk_A @ sk_B @ sk_C))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf(t86_enumset1, axiom,
% 0.21/0.47    (![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.21/0.47     ( ( k6_enumset1 @ A @ A @ A @ A @ B @ C @ D @ E ) =
% 0.21/0.47       ( k3_enumset1 @ A @ B @ C @ D @ E ) ))).
% 0.21/0.47  thf('1', plain,
% 0.21/0.47      (![X3 : $i, X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.21/0.47         ((k6_enumset1 @ X3 @ X3 @ X3 @ X3 @ X4 @ X5 @ X6 @ X7)
% 0.21/0.47           = (k3_enumset1 @ X3 @ X4 @ X5 @ X6 @ X7))),
% 0.21/0.47      inference('cnf', [status(esa)], [t86_enumset1])).
% 0.21/0.47  thf(t78_enumset1, axiom,
% 0.21/0.47    (![A:$i,B:$i,C:$i]:
% 0.21/0.47     ( ( k3_enumset1 @ A @ A @ A @ B @ C ) = ( k1_enumset1 @ A @ B @ C ) ))).
% 0.21/0.47  thf('2', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.47         ((k3_enumset1 @ X0 @ X0 @ X0 @ X1 @ X2) = (k1_enumset1 @ X0 @ X1 @ X2))),
% 0.21/0.47      inference('cnf', [status(esa)], [t78_enumset1])).
% 0.21/0.47  thf('3', plain,
% 0.21/0.47      (((k1_enumset1 @ sk_A @ sk_B @ sk_C)
% 0.21/0.47         != (k1_enumset1 @ sk_A @ sk_B @ sk_C))),
% 0.21/0.47      inference('demod', [status(thm)], ['0', '1', '2'])).
% 0.21/0.47  thf('4', plain, ($false), inference('simplify', [status(thm)], ['3'])).
% 0.21/0.47  
% 0.21/0.47  % SZS output end Refutation
% 0.21/0.47  
% 0.21/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
