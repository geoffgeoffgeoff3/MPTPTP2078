%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.8S6LUtJQWh

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:30:06 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   22 (  24 expanded)
%              Number of leaves         :   11 (  12 expanded)
%              Depth                    :    6
%              Number of atoms          :  128 ( 152 expanded)
%              Number of equality atoms :   19 (  23 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(t17_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( A != B )
     => ( r1_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('0',plain,(
    ! [X7: $i,X8: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X7 ) @ ( k1_tarski @ X8 ) )
      | ( X7 = X8 ) ) ),
    inference(cnf,[status(esa)],[t17_zfmisc_1])).

thf(t88_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ B )
        = A ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k4_xboole_0 @ ( k2_xboole_0 @ X0 @ X1 ) @ X1 )
        = X0 )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t88_xboole_1])).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ( ( k4_xboole_0 @ ( k2_xboole_0 @ ( k1_tarski @ X1 ) @ ( k1_tarski @ X0 ) ) @ ( k1_tarski @ X0 ) )
        = ( k1_tarski @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf(t41_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('3',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k2_tarski @ X2 @ X3 )
      = ( k2_xboole_0 @ ( k1_tarski @ X2 ) @ ( k1_tarski @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ( ( k4_xboole_0 @ ( k2_tarski @ X1 @ X0 ) @ ( k1_tarski @ X0 ) )
        = ( k1_tarski @ X1 ) ) ) ),
    inference(demod,[status(thm)],['2','3'])).

thf(t23_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( A != B )
     => ( ( k4_xboole_0 @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ B ) )
        = ( k1_tarski @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( A != B )
       => ( ( k4_xboole_0 @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ B ) )
          = ( k1_tarski @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t23_zfmisc_1])).

thf('5',plain,(
    ( k4_xboole_0 @ ( k2_tarski @ sk_A @ sk_B ) @ ( k1_tarski @ sk_B ) )
 != ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,
    ( ( ( k1_tarski @ sk_A )
     != ( k1_tarski @ sk_A ) )
    | ( sk_A = sk_B ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    sk_A = sk_B ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,(
    sk_A != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['7','8'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.8S6LUtJQWh
% 0.14/0.34  % Computer   : n025.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 14:24:20 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.46  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.46  % Solved by: fo/fo7.sh
% 0.21/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.46  % done 15 iterations in 0.013s
% 0.21/0.46  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.46  % SZS output start Refutation
% 0.21/0.46  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.46  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.46  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.46  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.46  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.46  thf(t17_zfmisc_1, axiom,
% 0.21/0.46    (![A:$i,B:$i]:
% 0.21/0.46     ( ( ( A ) != ( B ) ) =>
% 0.21/0.46       ( r1_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.21/0.46  thf('0', plain,
% 0.21/0.46      (![X7 : $i, X8 : $i]:
% 0.21/0.46         ((r1_xboole_0 @ (k1_tarski @ X7) @ (k1_tarski @ X8)) | ((X7) = (X8)))),
% 0.21/0.46      inference('cnf', [status(esa)], [t17_zfmisc_1])).
% 0.21/0.46  thf(t88_xboole_1, axiom,
% 0.21/0.46    (![A:$i,B:$i]:
% 0.21/0.46     ( ( r1_xboole_0 @ A @ B ) =>
% 0.21/0.46       ( ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ B ) = ( A ) ) ))).
% 0.21/0.46  thf('1', plain,
% 0.21/0.46      (![X0 : $i, X1 : $i]:
% 0.21/0.46         (((k4_xboole_0 @ (k2_xboole_0 @ X0 @ X1) @ X1) = (X0))
% 0.21/0.46          | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.21/0.46      inference('cnf', [status(esa)], [t88_xboole_1])).
% 0.21/0.46  thf('2', plain,
% 0.21/0.46      (![X0 : $i, X1 : $i]:
% 0.21/0.46         (((X1) = (X0))
% 0.21/0.46          | ((k4_xboole_0 @ 
% 0.21/0.46              (k2_xboole_0 @ (k1_tarski @ X1) @ (k1_tarski @ X0)) @ 
% 0.21/0.46              (k1_tarski @ X0)) = (k1_tarski @ X1)))),
% 0.21/0.46      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.46  thf(t41_enumset1, axiom,
% 0.21/0.46    (![A:$i,B:$i]:
% 0.21/0.46     ( ( k2_tarski @ A @ B ) =
% 0.21/0.46       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.21/0.46  thf('3', plain,
% 0.21/0.46      (![X2 : $i, X3 : $i]:
% 0.21/0.46         ((k2_tarski @ X2 @ X3)
% 0.21/0.46           = (k2_xboole_0 @ (k1_tarski @ X2) @ (k1_tarski @ X3)))),
% 0.21/0.46      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.21/0.46  thf('4', plain,
% 0.21/0.46      (![X0 : $i, X1 : $i]:
% 0.21/0.46         (((X1) = (X0))
% 0.21/0.46          | ((k4_xboole_0 @ (k2_tarski @ X1 @ X0) @ (k1_tarski @ X0))
% 0.21/0.46              = (k1_tarski @ X1)))),
% 0.21/0.46      inference('demod', [status(thm)], ['2', '3'])).
% 0.21/0.46  thf(t23_zfmisc_1, conjecture,
% 0.21/0.46    (![A:$i,B:$i]:
% 0.21/0.46     ( ( ( A ) != ( B ) ) =>
% 0.21/0.46       ( ( k4_xboole_0 @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ B ) ) =
% 0.21/0.46         ( k1_tarski @ A ) ) ))).
% 0.21/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.46    (~( ![A:$i,B:$i]:
% 0.21/0.46        ( ( ( A ) != ( B ) ) =>
% 0.21/0.46          ( ( k4_xboole_0 @ ( k2_tarski @ A @ B ) @ ( k1_tarski @ B ) ) =
% 0.21/0.46            ( k1_tarski @ A ) ) ) )),
% 0.21/0.46    inference('cnf.neg', [status(esa)], [t23_zfmisc_1])).
% 0.21/0.46  thf('5', plain,
% 0.21/0.46      (((k4_xboole_0 @ (k2_tarski @ sk_A @ sk_B) @ (k1_tarski @ sk_B))
% 0.21/0.46         != (k1_tarski @ sk_A))),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('6', plain,
% 0.21/0.46      ((((k1_tarski @ sk_A) != (k1_tarski @ sk_A)) | ((sk_A) = (sk_B)))),
% 0.21/0.46      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.46  thf('7', plain, (((sk_A) = (sk_B))),
% 0.21/0.46      inference('simplify', [status(thm)], ['6'])).
% 0.21/0.46  thf('8', plain, (((sk_A) != (sk_B))),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('9', plain, ($false),
% 0.21/0.46      inference('simplify_reflect-', [status(thm)], ['7', '8'])).
% 0.21/0.46  
% 0.21/0.46  % SZS output end Refutation
% 0.21/0.46  
% 0.21/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
