%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.sxQgbKZWB0

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:34:09 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   19 (  23 expanded)
%              Number of leaves         :    9 (  11 expanded)
%              Depth                    :    6
%              Number of atoms          :   96 ( 148 expanded)
%              Number of equality atoms :   18 (  30 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(t66_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ~ ( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) )
          = k1_xboole_0 )
        & ( A != k1_xboole_0 )
        & ( A
         != ( k1_tarski @ B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ~ ( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) )
            = k1_xboole_0 )
          & ( A != k1_xboole_0 )
          & ( A
           != ( k1_tarski @ B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t66_zfmisc_1])).

thf('0',plain,
    ( ( k4_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( ( k4_xboole_0 @ X0 @ X1 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('2',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ( r1_tarski @ sk_A @ ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    r1_tarski @ sk_A @ ( k1_tarski @ sk_B ) ),
    inference(simplify,[status(thm)],['2'])).

thf(l3_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ ( k1_tarski @ B ) )
    <=> ( ( A = k1_xboole_0 )
        | ( A
          = ( k1_tarski @ B ) ) ) ) )).

thf('4',plain,(
    ! [X3: $i,X4: $i] :
      ( ( X4
        = ( k1_tarski @ X3 ) )
      | ( X4 = k1_xboole_0 )
      | ~ ( r1_tarski @ X4 @ ( k1_tarski @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[l3_zfmisc_1])).

thf('5',plain,
    ( ( sk_A = k1_xboole_0 )
    | ( sk_A
      = ( k1_tarski @ sk_B ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    sk_A
 != ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['5','6','7'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.sxQgbKZWB0
% 0.15/0.35  % Computer   : n025.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % DateTime   : Tue Dec  1 13:00:36 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.35  % Running portfolio for 600 s
% 0.15/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.15/0.35  % Number of cores: 8
% 0.15/0.35  % Python version: Python 3.6.8
% 0.15/0.36  % Running in FO mode
% 0.22/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.47  % Solved by: fo/fo7.sh
% 0.22/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.47  % done 11 iterations in 0.010s
% 0.22/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.47  % SZS output start Refutation
% 0.22/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.22/0.47  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.47  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.22/0.47  thf(t66_zfmisc_1, conjecture,
% 0.22/0.47    (![A:$i,B:$i]:
% 0.22/0.47     ( ~( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_xboole_0 ) ) & 
% 0.22/0.47          ( ( A ) != ( k1_xboole_0 ) ) & ( ( A ) != ( k1_tarski @ B ) ) ) ))).
% 0.22/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.47    (~( ![A:$i,B:$i]:
% 0.22/0.47        ( ~( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_xboole_0 ) ) & 
% 0.22/0.47             ( ( A ) != ( k1_xboole_0 ) ) & ( ( A ) != ( k1_tarski @ B ) ) ) ) )),
% 0.22/0.47    inference('cnf.neg', [status(esa)], [t66_zfmisc_1])).
% 0.22/0.47  thf('0', plain,
% 0.22/0.47      (((k4_xboole_0 @ sk_A @ (k1_tarski @ sk_B)) = (k1_xboole_0))),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf(l32_xboole_1, axiom,
% 0.22/0.47    (![A:$i,B:$i]:
% 0.22/0.47     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.22/0.47  thf('1', plain,
% 0.22/0.47      (![X0 : $i, X1 : $i]:
% 0.22/0.47         ((r1_tarski @ X0 @ X1) | ((k4_xboole_0 @ X0 @ X1) != (k1_xboole_0)))),
% 0.22/0.47      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.22/0.47  thf('2', plain,
% 0.22/0.47      ((((k1_xboole_0) != (k1_xboole_0))
% 0.22/0.47        | (r1_tarski @ sk_A @ (k1_tarski @ sk_B)))),
% 0.22/0.47      inference('sup-', [status(thm)], ['0', '1'])).
% 0.22/0.47  thf('3', plain, ((r1_tarski @ sk_A @ (k1_tarski @ sk_B))),
% 0.22/0.47      inference('simplify', [status(thm)], ['2'])).
% 0.22/0.47  thf(l3_zfmisc_1, axiom,
% 0.22/0.47    (![A:$i,B:$i]:
% 0.22/0.47     ( ( r1_tarski @ A @ ( k1_tarski @ B ) ) <=>
% 0.22/0.47       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( A ) = ( k1_tarski @ B ) ) ) ))).
% 0.22/0.47  thf('4', plain,
% 0.22/0.47      (![X3 : $i, X4 : $i]:
% 0.22/0.47         (((X4) = (k1_tarski @ X3))
% 0.22/0.47          | ((X4) = (k1_xboole_0))
% 0.22/0.47          | ~ (r1_tarski @ X4 @ (k1_tarski @ X3)))),
% 0.22/0.47      inference('cnf', [status(esa)], [l3_zfmisc_1])).
% 0.22/0.47  thf('5', plain, ((((sk_A) = (k1_xboole_0)) | ((sk_A) = (k1_tarski @ sk_B)))),
% 0.22/0.47      inference('sup-', [status(thm)], ['3', '4'])).
% 0.22/0.47  thf('6', plain, (((sk_A) != (k1_tarski @ sk_B))),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf('7', plain, (((sk_A) != (k1_xboole_0))),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf('8', plain, ($false),
% 0.22/0.47      inference('simplify_reflect-', [status(thm)], ['5', '6', '7'])).
% 0.22/0.47  
% 0.22/0.47  % SZS output end Refutation
% 0.22/0.47  
% 0.22/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
