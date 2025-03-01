%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.APqFt6Bsgb

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:28:17 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   15 (  15 expanded)
%              Number of leaves         :    8 (   8 expanded)
%              Depth                    :    5
%              Number of atoms          :  100 ( 100 expanded)
%              Number of equality atoms :    9 (   9 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_enumset1_type,type,(
    k2_enumset1: $i > $i > $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(t116_enumset1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ C @ B @ A @ D ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( k2_enumset1 @ A @ B @ C @ D )
        = ( k2_enumset1 @ C @ B @ A @ D ) ) ),
    inference('cnf.neg',[status(esa)],[t116_enumset1])).

thf('0',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_C @ sk_B @ sk_A @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t109_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ B @ A @ D @ C ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( k2_enumset1 @ X1 @ X0 @ X3 @ X2 )
      = ( k2_enumset1 @ X0 @ X1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t109_enumset1])).

thf('2',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_B @ sk_C @ sk_D @ sk_A ) ),
    inference(demod,[status(thm)],['0','1'])).

thf(t111_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k2_enumset1 @ A @ B @ C @ D )
      = ( k2_enumset1 @ B @ C @ D @ A ) ) )).

thf('3',plain,(
    ! [X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( k2_enumset1 @ X7 @ X4 @ X5 @ X6 )
      = ( k2_enumset1 @ X4 @ X5 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t111_enumset1])).

thf('4',plain,(
    ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != ( k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(demod,[status(thm)],['2','3'])).

thf('5',plain,(
    $false ),
    inference(simplify,[status(thm)],['4'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.APqFt6Bsgb
% 0.13/0.34  % Computer   : n008.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:00:00 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.46  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.46  % Solved by: fo/fo7.sh
% 0.20/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.46  % done 3 iterations in 0.011s
% 0.20/0.46  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.46  % SZS output start Refutation
% 0.20/0.46  thf(k2_enumset1_type, type, k2_enumset1: $i > $i > $i > $i > $i).
% 0.20/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.46  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.46  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.46  thf(t116_enumset1, conjecture,
% 0.20/0.46    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.46     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ C @ B @ A @ D ) ))).
% 0.20/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.46    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.46        ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ C @ B @ A @ D ) ) )),
% 0.20/0.46    inference('cnf.neg', [status(esa)], [t116_enumset1])).
% 0.20/0.46  thf('0', plain,
% 0.20/0.46      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.46         != (k2_enumset1 @ sk_C @ sk_B @ sk_A @ sk_D))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf(t109_enumset1, axiom,
% 0.20/0.46    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.46     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ B @ A @ D @ C ) ))).
% 0.20/0.46  thf('1', plain,
% 0.20/0.46      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.46         ((k2_enumset1 @ X1 @ X0 @ X3 @ X2) = (k2_enumset1 @ X0 @ X1 @ X2 @ X3))),
% 0.20/0.46      inference('cnf', [status(esa)], [t109_enumset1])).
% 0.20/0.46  thf('2', plain,
% 0.20/0.46      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.46         != (k2_enumset1 @ sk_B @ sk_C @ sk_D @ sk_A))),
% 0.20/0.46      inference('demod', [status(thm)], ['0', '1'])).
% 0.20/0.46  thf(t111_enumset1, axiom,
% 0.20/0.46    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.46     ( ( k2_enumset1 @ A @ B @ C @ D ) = ( k2_enumset1 @ B @ C @ D @ A ) ))).
% 0.20/0.46  thf('3', plain,
% 0.20/0.46      (![X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.20/0.46         ((k2_enumset1 @ X7 @ X4 @ X5 @ X6) = (k2_enumset1 @ X4 @ X5 @ X6 @ X7))),
% 0.20/0.46      inference('cnf', [status(esa)], [t111_enumset1])).
% 0.20/0.46  thf('4', plain,
% 0.20/0.46      (((k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D)
% 0.20/0.46         != (k2_enumset1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.20/0.46      inference('demod', [status(thm)], ['2', '3'])).
% 0.20/0.46  thf('5', plain, ($false), inference('simplify', [status(thm)], ['4'])).
% 0.20/0.46  
% 0.20/0.46  % SZS output end Refutation
% 0.20/0.46  
% 0.20/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
