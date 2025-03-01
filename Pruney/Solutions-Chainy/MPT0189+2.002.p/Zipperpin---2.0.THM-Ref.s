%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.TtFogntkwH

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:28:06 EST 2020

% Result     : Theorem 0.18s
% Output     : Refutation 0.18s
% Verified   : 
% Statistics : Number of formulae       :   19 (  20 expanded)
%              Number of leaves         :   10 (  11 expanded)
%              Depth                    :    5
%              Number of atoms          :  122 ( 135 expanded)
%              Number of equality atoms :   11 (  12 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

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

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_tarski @ X1 @ X0 )
      = ( k2_tarski @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(l53_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ ( k2_tarski @ C @ D ) ) ) )).

thf('2',plain,(
    ! [X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( k2_enumset1 @ X2 @ X3 @ X4 @ X5 )
      = ( k2_xboole_0 @ ( k2_tarski @ X2 @ X3 ) @ ( k2_tarski @ X4 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[l53_enumset1])).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X0 @ X1 @ X3 @ X2 )
      = ( k2_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ ( k2_tarski @ X3 @ X2 ) ) ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf('4',plain,(
    ! [X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( k2_enumset1 @ X2 @ X3 @ X4 @ X5 )
      = ( k2_xboole_0 @ ( k2_tarski @ X2 @ X3 ) @ ( k2_tarski @ X4 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[l53_enumset1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X2 @ X3 @ X1 @ X0 )
      = ( k2_enumset1 @ X3 @ X2 @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('6',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['0','5'])).

thf('7',plain,(
    $false ),
    inference(simplify,[status(thm)],['6'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.TtFogntkwH
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % DateTime   : Tue Dec  1 13:00:40 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running portfolio for 600 s
% 0.12/0.33  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.33  % Number of cores: 8
% 0.12/0.33  % Python version: Python 3.6.8
% 0.12/0.34  % Running in FO mode
% 0.18/0.41  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.18/0.41  % Solved by: fo/fo7.sh
% 0.18/0.41  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.18/0.41  % done 4 iterations in 0.007s
% 0.18/0.41  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.18/0.41  % SZS output start Refutation
% 0.18/0.41  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.18/0.41  thf(sk_D_type, type, sk_D: $i).
% 0.18/0.41  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.18/0.41  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.18/0.41  thf(sk_C_type, type, sk_C: $i).
% 0.18/0.41  thf(sk_A_type, type, sk_A: $i).
% 0.18/0.41  thf(sk_B_type, type, sk_B: $i).
% 0.18/0.41  thf(t108_enumset1, conjecture,
% 0.18/0.41    (![A:$i,B:$i,C:$i,D:$i]:
% 0.18/0.41     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ B @ A @ C @ D ) ))).
% 0.18/0.41  thf(zf_stmt_0, negated_conjecture,
% 0.18/0.41    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.18/0.41        ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ B @ A @ C @ D ) ) )),
% 0.18/0.41    inference('cnf.neg', [status(esa)], [t108_enumset1])).
% 0.18/0.41  thf('0', plain,
% 0.18/0.41      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.18/0.41         != (k2_enumset1 @ sk_B @ sk_A @ sk_C @ sk_D))),
% 0.18/0.41      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.18/0.41  thf(commutativity_k2_tarski, axiom,
% 0.18/0.41    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.18/0.41  thf('1', plain,
% 0.18/0.41      (![X0 : $i, X1 : $i]: ((k2_tarski @ X1 @ X0) = (k2_tarski @ X0 @ X1))),
% 0.18/0.41      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.18/0.41  thf(l53_enumset1, axiom,
% 0.18/0.41    (![A:$i,B:$i,C:$i,D:$i]:
% 0.18/0.41     ( ( k2_enumset1 @ A @ B @ C @ D ) =
% 0.18/0.41       ( k2_xboole_0 @ ( k2_tarski @ A @ B ) @ ( k2_tarski @ C @ D ) ) ))).
% 0.18/0.41  thf('2', plain,
% 0.18/0.41      (![X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.18/0.41         ((k2_enumset1 @ X2 @ X3 @ X4 @ X5)
% 0.18/0.41           = (k2_xboole_0 @ (k2_tarski @ X2 @ X3) @ (k2_tarski @ X4 @ X5)))),
% 0.18/0.41      inference('cnf', [status(esa)], [l53_enumset1])).
% 0.18/0.41  thf('3', plain,
% 0.18/0.41      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.18/0.41         ((k2_enumset1 @ X0 @ X1 @ X3 @ X2)
% 0.18/0.41           = (k2_xboole_0 @ (k2_tarski @ X1 @ X0) @ (k2_tarski @ X3 @ X2)))),
% 0.18/0.41      inference('sup+', [status(thm)], ['1', '2'])).
% 0.18/0.41  thf('4', plain,
% 0.18/0.41      (![X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.18/0.41         ((k2_enumset1 @ X2 @ X3 @ X4 @ X5)
% 0.18/0.41           = (k2_xboole_0 @ (k2_tarski @ X2 @ X3) @ (k2_tarski @ X4 @ X5)))),
% 0.18/0.41      inference('cnf', [status(esa)], [l53_enumset1])).
% 0.18/0.41  thf('5', plain,
% 0.18/0.41      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.18/0.41         ((k2_enumset1 @ X2 @ X3 @ X1 @ X0) = (k2_enumset1 @ X3 @ X2 @ X1 @ X0))),
% 0.18/0.41      inference('sup+', [status(thm)], ['3', '4'])).
% 0.18/0.41  thf('6', plain,
% 0.18/0.41      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.18/0.41         != (k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.18/0.41      inference('demod', [status(thm)], ['0', '5'])).
% 0.18/0.41  thf('7', plain, ($false), inference('simplify', [status(thm)], ['6'])).
% 0.18/0.41  
% 0.18/0.41  % SZS output end Refutation
% 0.18/0.41  
% 0.18/0.42  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
