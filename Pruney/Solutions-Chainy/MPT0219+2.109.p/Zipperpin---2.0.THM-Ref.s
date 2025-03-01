%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.bbLATkSIUa

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:29:18 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   25 (  28 expanded)
%              Number of leaves         :   10 (  12 expanded)
%              Depth                    :    6
%              Number of atoms          :  149 ( 185 expanded)
%              Number of equality atoms :   25 (  32 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t13_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
        = ( k1_tarski @ A ) )
     => ( A = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) )
          = ( k1_tarski @ A ) )
       => ( A = B ) ) ),
    inference('cnf.neg',[status(esa)],[t13_zfmisc_1])).

thf('0',plain,
    ( ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k1_tarski @ sk_B ) )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t41_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('1',plain,(
    ! [X8: $i,X9: $i] :
      ( ( k2_tarski @ X8 @ X9 )
      = ( k2_xboole_0 @ ( k1_tarski @ X8 ) @ ( k1_tarski @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf('2',plain,
    ( ( k2_tarski @ sk_A @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(demod,[status(thm)],['0','1'])).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('3',plain,(
    ! [X2: $i,X3: $i,X4: $i,X5: $i] :
      ( ( X3 != X2 )
      | ( r2_hidden @ X3 @ X4 )
      | ( X4
       != ( k2_tarski @ X5 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('4',plain,(
    ! [X2: $i,X5: $i] :
      ( r2_hidden @ X2 @ ( k2_tarski @ X5 @ X2 ) ) ),
    inference(simplify,[status(thm)],['3'])).

thf('5',plain,(
    r2_hidden @ sk_B @ ( k1_tarski @ sk_A ) ),
    inference('sup+',[status(thm)],['2','4'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('6',plain,(
    ! [X10: $i] :
      ( ( k2_tarski @ X10 @ X10 )
      = ( k1_tarski @ X10 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('7',plain,(
    ! [X2: $i,X4: $i,X5: $i,X6: $i] :
      ( ~ ( r2_hidden @ X6 @ X4 )
      | ( X6 = X5 )
      | ( X6 = X2 )
      | ( X4
       != ( k2_tarski @ X5 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('8',plain,(
    ! [X2: $i,X5: $i,X6: $i] :
      ( ( X6 = X2 )
      | ( X6 = X5 )
      | ~ ( r2_hidden @ X6 @ ( k2_tarski @ X5 @ X2 ) ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ( X1 = X0 )
      | ( X1 = X0 ) ) ),
    inference('sup-',[status(thm)],['6','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['9'])).

thf('11',plain,(
    sk_B = sk_A ),
    inference('sup-',[status(thm)],['5','10'])).

thf('12',plain,(
    sk_A != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['11','12'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.bbLATkSIUa
% 0.13/0.33  % Computer   : n006.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 13:55:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 31 iterations in 0.018s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.47  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.47  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(t13_zfmisc_1, conjecture,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) =
% 0.20/0.47         ( k1_tarski @ A ) ) =>
% 0.20/0.47       ( ( A ) = ( B ) ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i,B:$i]:
% 0.20/0.47        ( ( ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) =
% 0.20/0.47            ( k1_tarski @ A ) ) =>
% 0.20/0.47          ( ( A ) = ( B ) ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t13_zfmisc_1])).
% 0.20/0.47  thf('0', plain,
% 0.20/0.47      (((k2_xboole_0 @ (k1_tarski @ sk_A) @ (k1_tarski @ sk_B))
% 0.20/0.47         = (k1_tarski @ sk_A))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(t41_enumset1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( k2_tarski @ A @ B ) =
% 0.20/0.47       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      (![X8 : $i, X9 : $i]:
% 0.20/0.47         ((k2_tarski @ X8 @ X9)
% 0.20/0.47           = (k2_xboole_0 @ (k1_tarski @ X8) @ (k1_tarski @ X9)))),
% 0.20/0.47      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.20/0.47  thf('2', plain, (((k2_tarski @ sk_A @ sk_B) = (k1_tarski @ sk_A))),
% 0.20/0.47      inference('demod', [status(thm)], ['0', '1'])).
% 0.20/0.47  thf(d2_tarski, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.20/0.47       ( ![D:$i]:
% 0.20/0.47         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.20/0.47  thf('3', plain,
% 0.20/0.47      (![X2 : $i, X3 : $i, X4 : $i, X5 : $i]:
% 0.20/0.47         (((X3) != (X2))
% 0.20/0.47          | (r2_hidden @ X3 @ X4)
% 0.20/0.47          | ((X4) != (k2_tarski @ X5 @ X2)))),
% 0.20/0.47      inference('cnf', [status(esa)], [d2_tarski])).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      (![X2 : $i, X5 : $i]: (r2_hidden @ X2 @ (k2_tarski @ X5 @ X2))),
% 0.20/0.47      inference('simplify', [status(thm)], ['3'])).
% 0.20/0.47  thf('5', plain, ((r2_hidden @ sk_B @ (k1_tarski @ sk_A))),
% 0.20/0.47      inference('sup+', [status(thm)], ['2', '4'])).
% 0.20/0.47  thf(t69_enumset1, axiom,
% 0.20/0.47    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.20/0.47  thf('6', plain, (![X10 : $i]: ((k2_tarski @ X10 @ X10) = (k1_tarski @ X10))),
% 0.20/0.47      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.20/0.47  thf('7', plain,
% 0.20/0.47      (![X2 : $i, X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.47         (~ (r2_hidden @ X6 @ X4)
% 0.20/0.47          | ((X6) = (X5))
% 0.20/0.47          | ((X6) = (X2))
% 0.20/0.47          | ((X4) != (k2_tarski @ X5 @ X2)))),
% 0.20/0.47      inference('cnf', [status(esa)], [d2_tarski])).
% 0.20/0.47  thf('8', plain,
% 0.20/0.47      (![X2 : $i, X5 : $i, X6 : $i]:
% 0.20/0.47         (((X6) = (X2))
% 0.20/0.47          | ((X6) = (X5))
% 0.20/0.47          | ~ (r2_hidden @ X6 @ (k2_tarski @ X5 @ X2)))),
% 0.20/0.47      inference('simplify', [status(thm)], ['7'])).
% 0.20/0.47  thf('9', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]:
% 0.20/0.47         (~ (r2_hidden @ X1 @ (k1_tarski @ X0)) | ((X1) = (X0)) | ((X1) = (X0)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['6', '8'])).
% 0.20/0.47  thf('10', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]:
% 0.20/0.47         (((X1) = (X0)) | ~ (r2_hidden @ X1 @ (k1_tarski @ X0)))),
% 0.20/0.47      inference('simplify', [status(thm)], ['9'])).
% 0.20/0.47  thf('11', plain, (((sk_B) = (sk_A))),
% 0.20/0.47      inference('sup-', [status(thm)], ['5', '10'])).
% 0.20/0.47  thf('12', plain, (((sk_A) != (sk_B))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('13', plain, ($false),
% 0.20/0.47      inference('simplify_reflect-', [status(thm)], ['11', '12'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
