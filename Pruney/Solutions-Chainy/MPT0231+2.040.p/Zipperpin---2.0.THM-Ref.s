%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.QQ7RPccUjP

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:30:33 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   28 (  30 expanded)
%              Number of leaves         :   13 (  14 expanded)
%              Depth                    :    6
%              Number of atoms          :  152 ( 170 expanded)
%              Number of equality atoms :   15 (  17 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(t26_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ C ) )
     => ( A = C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ C ) )
       => ( A = C ) ) ),
    inference('cnf.neg',[status(esa)],[t26_zfmisc_1])).

thf('0',plain,(
    r1_tarski @ ( k2_tarski @ sk_A @ sk_B ) @ ( k1_tarski @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t41_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('1',plain,(
    ! [X5: $i,X6: $i] :
      ( ( k2_tarski @ X5 @ X6 )
      = ( k2_xboole_0 @ ( k1_tarski @ X5 ) @ ( k1_tarski @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf(t7_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ) )).

thf('2',plain,(
    ! [X3: $i,X4: $i] :
      ( r1_tarski @ X3 @ ( k2_xboole_0 @ X3 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t7_xboole_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k1_tarski @ X1 ) @ ( k2_tarski @ X1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf(t1_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r1_tarski @ A @ C ) ) )).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X1 @ X2 )
      | ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k1_tarski @ X1 ) @ X2 )
      | ~ ( r1_tarski @ ( k2_tarski @ X1 @ X0 ) @ X2 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_C ) ),
    inference('sup-',[status(thm)],['0','5'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('7',plain,(
    ! [X7: $i] :
      ( ( k2_tarski @ X7 @ X7 )
      = ( k1_tarski @ X7 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t25_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r1_tarski @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) )
        & ( A != B )
        & ( A != C ) ) )).

thf('8',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( X9 = X8 )
      | ( X9 = X10 )
      | ~ ( r1_tarski @ ( k1_tarski @ X9 ) @ ( k2_tarski @ X8 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[t25_zfmisc_1])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_tarski @ X1 ) @ ( k1_tarski @ X0 ) )
      | ( X1 = X0 )
      | ( X1 = X0 ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r1_tarski @ ( k1_tarski @ X1 ) @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['9'])).

thf('11',plain,(
    sk_A = sk_C ),
    inference('sup-',[status(thm)],['6','10'])).

thf('12',plain,(
    sk_A != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['11','12'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.QQ7RPccUjP
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 15:28:22 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.48  % Solved by: fo/fo7.sh
% 0.20/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.48  % done 38 iterations in 0.021s
% 0.20/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.48  % SZS output start Refutation
% 0.20/0.48  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.48  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.48  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.20/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.48  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.48  thf(t26_zfmisc_1, conjecture,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ C ) ) =>
% 0.20/0.48       ( ( A ) = ( C ) ) ))).
% 0.20/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.48    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.48        ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ C ) ) =>
% 0.20/0.48          ( ( A ) = ( C ) ) ) )),
% 0.20/0.48    inference('cnf.neg', [status(esa)], [t26_zfmisc_1])).
% 0.20/0.48  thf('0', plain,
% 0.20/0.48      ((r1_tarski @ (k2_tarski @ sk_A @ sk_B) @ (k1_tarski @ sk_C))),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf(t41_enumset1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( k2_tarski @ A @ B ) =
% 0.20/0.48       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.20/0.48  thf('1', plain,
% 0.20/0.48      (![X5 : $i, X6 : $i]:
% 0.20/0.48         ((k2_tarski @ X5 @ X6)
% 0.20/0.48           = (k2_xboole_0 @ (k1_tarski @ X5) @ (k1_tarski @ X6)))),
% 0.20/0.48      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.20/0.48  thf(t7_xboole_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]: ( r1_tarski @ A @ ( k2_xboole_0 @ A @ B ) ))).
% 0.20/0.48  thf('2', plain,
% 0.20/0.48      (![X3 : $i, X4 : $i]: (r1_tarski @ X3 @ (k2_xboole_0 @ X3 @ X4))),
% 0.20/0.48      inference('cnf', [status(esa)], [t7_xboole_1])).
% 0.20/0.48  thf('3', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (r1_tarski @ (k1_tarski @ X1) @ (k2_tarski @ X1 @ X0))),
% 0.20/0.48      inference('sup+', [status(thm)], ['1', '2'])).
% 0.20/0.48  thf(t1_xboole_1, axiom,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.20/0.48       ( r1_tarski @ A @ C ) ))).
% 0.20/0.48  thf('4', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.48         (~ (r1_tarski @ X0 @ X1)
% 0.20/0.48          | ~ (r1_tarski @ X1 @ X2)
% 0.20/0.48          | (r1_tarski @ X0 @ X2))),
% 0.20/0.48      inference('cnf', [status(esa)], [t1_xboole_1])).
% 0.20/0.48  thf('5', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.48         ((r1_tarski @ (k1_tarski @ X1) @ X2)
% 0.20/0.48          | ~ (r1_tarski @ (k2_tarski @ X1 @ X0) @ X2))),
% 0.20/0.48      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.48  thf('6', plain, ((r1_tarski @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_C))),
% 0.20/0.48      inference('sup-', [status(thm)], ['0', '5'])).
% 0.20/0.48  thf(t69_enumset1, axiom,
% 0.20/0.48    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.20/0.48  thf('7', plain, (![X7 : $i]: ((k2_tarski @ X7 @ X7) = (k1_tarski @ X7))),
% 0.20/0.48      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.20/0.48  thf(t25_zfmisc_1, axiom,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ~( ( r1_tarski @ ( k1_tarski @ A ) @ ( k2_tarski @ B @ C ) ) & 
% 0.20/0.48          ( ( A ) != ( B ) ) & ( ( A ) != ( C ) ) ) ))).
% 0.20/0.48  thf('8', plain,
% 0.20/0.48      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.20/0.48         (((X9) = (X8))
% 0.20/0.48          | ((X9) = (X10))
% 0.20/0.48          | ~ (r1_tarski @ (k1_tarski @ X9) @ (k2_tarski @ X8 @ X10)))),
% 0.20/0.48      inference('cnf', [status(esa)], [t25_zfmisc_1])).
% 0.20/0.48  thf('9', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (~ (r1_tarski @ (k1_tarski @ X1) @ (k1_tarski @ X0))
% 0.20/0.48          | ((X1) = (X0))
% 0.20/0.48          | ((X1) = (X0)))),
% 0.20/0.48      inference('sup-', [status(thm)], ['7', '8'])).
% 0.20/0.48  thf('10', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (((X1) = (X0)) | ~ (r1_tarski @ (k1_tarski @ X1) @ (k1_tarski @ X0)))),
% 0.20/0.48      inference('simplify', [status(thm)], ['9'])).
% 0.20/0.48  thf('11', plain, (((sk_A) = (sk_C))),
% 0.20/0.48      inference('sup-', [status(thm)], ['6', '10'])).
% 0.20/0.48  thf('12', plain, (((sk_A) != (sk_C))),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('13', plain, ($false),
% 0.20/0.48      inference('simplify_reflect-', [status(thm)], ['11', '12'])).
% 0.20/0.48  
% 0.20/0.48  % SZS output end Refutation
% 0.20/0.48  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
